<?php
require_once 'Style.php';
require_once 'Artiste.php';
require_once 'Festivalier.php';

/* 
Classe de la base de Gestionnaire (singleton)
*/
class Gestionnaire {

	public $bdd;
	public $artistes = array();
	public $styles = array();
    public $festivaliers = array();
	static private $instance = NULL;

	/** Constructeur */
	private function __construct() {
		require_once 'configuration.php';
		$this->bdd = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$nombase,$utilisateur,$mdp);

		$requete='SELECT * FROM style';
        $results = $this->bdd->query($requete);
        $this->styles = $results->fetchAll();
        $results->closeCursor();

		for ($i=0; $i < count($this->styles); $i++) { 
			$this->styles[$i] = new Style($this->styles[$i]["id_style"],$this->styles[$i]["style_artiste"]);
		}

        $requete='SELECT * FROM artiste';
        $results = $this->bdd->query($requete);
        $this->artistes = $results->fetchAll();
        $results->closeCursor();

		$requete='SELECT * FROM lien_artiste_style';
        $results = $this->bdd->query($requete);
        $tabLienArtisteStyle = $results->fetchAll();
        $results->closeCursor();

		for ($i=0; $i < count($this->artistes); $i++) { 
			$requete='SELECT style.style_artiste FROM lien_artiste_style, style, artiste WHERE artiste.id_artiste='.$this->artistes[$i]["id_artiste"].' AND lien_artiste_style.id_artiste='.$this->artistes[$i]["id_artiste"].' AND lien_artiste_style.id_artiste = artiste.id_artiste AND lien_artiste_style.id_style = style.id_style';
			$results = $this->bdd->query($requete);
			$tabLienArtisteStyle = $results->fetchAll();
			$results->closeCursor();
			$id = $this->artistes[$i]["id_artiste"];
			$this->artistes[$i] = new Artiste($this->artistes[$i]["nom_artiste"], $this->artistes[$i]["prenom_artiste"], $this->artistes[$i]["date_crea"], $this->artistes[$i]["bio_artiste"], $this->artistes[$i]["bio_anglais"], $this->artistes[$i]["nation_artiste"], $this->artistes[$i]["url_video_artiste"], $this->artistes[$i]["url_image_artiste"], $tabLienArtisteStyle[0][0]);
			$this->artistes[$i]->id = $id;
		}

        $requete='SELECT * FROM festivalier';
        $results = $this->bdd->query($requete);
        $this->festivaliers = $results->fetchAll();
        $results->closeCursor();

	}

	/** Permet de récupérer l'instance de l'Gestionnaire */
	public static function getInstance(){
		if (is_null(Gestionnaire::$instance)) {
			Gestionnaire::$instance = new Gestionnaire();
		}
		return Gestionnaire::$instance;
	}

	/** Affichage de toutes les données d'artistes */
	public function afficherArtistes() {
		printf("<br/><i><u>Données des artistes</u></i><br/><br/>"); 
		foreach( $this->artistes as $artistes ) {					
			$artistes->afficher();
		}
	}

    	/** Affichage de toutes les données de festivaliers*/
	public function afficherFestivaliers() {
		printf("<br/><i><u>Données des festivaliers</u></i><br/><br/>"); 
		foreach( $this->festivaliers as $festivaliers ) {					
			$festivaliers->afficher();
		}
	}

	/** Ajout un nouvel artiste */
	public function ajouterArtiste($artiste) {
		if ($artiste instanceof Artiste) {
			$nomEchape = $this->bdd->quote($artiste->nom);
			$bioEchape = $this->bdd->quote($artiste->bio);
			$bioEchapeAnglais = $this->bdd->quote($artiste->bioAnglais);
			$requete="INSERT INTO artiste (nom_artiste, prenom_artiste, date_crea, bio_artiste, bio_anglais, nation_artiste, url_video_artiste, url_image_artiste) VALUES (".$nomEchape.",'".$artiste->prenom."','".$artiste->dateDebut."',".$bioEchape.",".$bioEchapeAnglais.",'".$artiste->nation."','".$artiste->urlVideo."','".$artiste->urlImg."')";
			$results = $this->bdd->query($requete);
			$tabInsert = $results->fetchAll();
			$results->closeCursor();


			//Cette requête permet d'obtenir l'id de l'artiste qu'on vient d'ajouter à partir de son nom. On suppose donc que deux artistes ne peuvent pas avoir le même nom
			$requete = "SELECT id_artiste FROM artiste WHERE nom_artiste='".$artiste->nom."'";
			$results = $this->bdd->query($requete);
			$tabidArtiste = $results->fetchAll();
			$results->closeCursor();

			$artiste->id = $tabidArtiste[0][0];

			$requete="INSERT INTO lien_artiste_style (id_artiste, id_style) VALUES (".$artiste->id.",".$artiste->style->idStyle.")";
			$results = $this->bdd->query($requete);
			$tabInsert = $results->fetchAll();
			$results->closeCursor();

			array_push($this->artistes, $artiste);
		}

	}

    	/** Modification d'un artiste */
	public function modifArtiste($artiste, $id) {
		if ($artiste instanceof Artiste) {
			for ($i=0; $i < count($this->artistes); $i++) { 
				if ($this->artistes[$i]->id == $id) {
					if ($artiste->style->idStyle !== $this->artistes[$i]->style) {
						$requete ="UPDATE lien_artiste_style, artiste SET lien_artiste_style.id_artiste =".$id.", lien_artiste_style.id_style=".$artiste->style->idStyle." WHERE artiste.id_artiste =".$id." AND lien_artiste_style.id_artiste =".$id."";
						$results = $this->bdd->query($requete);
						$tabUpdate = $results->fetchAll();
						$results->closeCursor();
					}
					$this->artistes[$i] = $artiste;
					$nomEchape = $this->bdd->quote($artiste->nom);
					$bioEchape = $this->bdd->quote($artiste->bio);
					$bioEchapeAnglais = $this->bdd->quote($artiste->bioAnglais);
					$requete ="UPDATE artiste SET nom_artiste =".$nomEchape.", prenom_artiste='".$artiste->prenom."', date_crea='".$artiste->dateDebut."', bio_artiste=".$bioEchape.", bio_anglais=".$bioEchapeAnglais.", nation_artiste='".$artiste->nation."', url_video_artiste='".$artiste->urlVideo."', url_image_artiste='".$artiste->urlImg."' WHERE id_artiste =".$id."";
					$results = $this->bdd->query($requete);
					$tabUpdate = $results->fetchAll();
					$results->closeCursor();
				}
			}
		}

	}

    	/** Suppression d'un artiste */
	public function supArtiste($artiste) {
		if ($artiste instanceof Artiste) {
            for ($i=0; $i < count($this->artistes); $i++) { 
                if ($this->artistes[$i]->id == $artiste->id) {   
                    unset($this->artistes[$i]);
            	}
			}
			$requete ="DELETE  FROM artiste WHERE id_artiste =".$artiste->id."";
			$results = $this->bdd->query($requete);
			$tabUpdate = $results->fetchAll();
			$results->closeCursor();
		}
	}

    /** Ajout d'un nouveau festivalier */
	public function ajouterFestivalier($fest) {
		if ($fest instanceof Festivalier) {
			array_push($this->festivaliers, $fest);
		}
	}
}
?>