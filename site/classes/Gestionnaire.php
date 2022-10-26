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
			$this->artistes[$i] = new Artiste($this->artistes[$i]["id_artiste"],$this->artistes[$i]["nom_artiste"], $this->artistes[$i]["prenom_artiste"], $this->artistes[$i]["date_crea"], $this->artistes[$i]["bio_artiste"], $this->artistes[$i]["nation_artiste"], $this->artistes[$i]["url_video_artiste"], $this->artistes[$i]["url_image_artiste"], NULL);
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
			array_push($this->artistes, $artiste);
		}
		$nomEchape = $this->bdd->quote($artiste->nom);
		$bioEchape = $this->bdd->quote($artiste->bio);
		$requete="INSERT INTO artiste (nom_artiste,prenom_artiste,date_crea,bio_artiste,nation_artiste,url_video_artiste,url_image_artiste) VALUES (".$nomEchape.",'".$artiste->prenom."','".$artiste->dateDebut."',".$bioEchape.",'".$artiste->nation."','".$artiste->urlVideo."','".$artiste->urlImg."')";
		$results = $this->bdd->query($requete);
		$tabInsert = $results->fetchAll();
		$results->closeCursor();


		//Cette requête permet d'obtenir l'id de l'artiste qu'on vient d'ajouter à partir de son nom. On suppose donc que deux artistes ne peuvent pas avoir le même nom
		$requete = "SELECT id_artiste FROM artiste WHERE nom_artiste='".$artiste->nom."'";
		$results = $this->bdd->query($requete);
		$tabidArtiste = $results->fetchAll();
		$results->closeCursor();

		//Cette requête permet d'obtenir l'id du style qu'on veut associer à l'artiste
		$requete = "SELECT id_style FROM style WHERE style_artiste='".$style->nomStyle."'";
		$results = $this->bdd->query($requete);
		$tabidStyle = $results->fetchAll();
		$results->closeCursor();

		$requete="INSERT INTO lien_artiste_style (id_artiste, id_style) VALUES (".$tabidArtiste[0]["id_artiste"].",".$tabidStyle[0]["id_style"].")";
		$results = $this->bdd->query($requete);
		$tabInsert = $results->fetchAll();
		$results->closeCursor();

	}

    	/** Modification d'un artiste */
	public function modifArtiste($artiste) {
		if ($artiste instanceof Artiste) {
            /*
            for ($i=0; $i < count(Gestionnaire::$instance->artistes); $i++) { 
                if (Gestionnaire::$instance->artistes[$i]["id_artiste"] == $artiste["id_artiste"]) {   
                    Gestionnaire::$instance->artistes[$i]["id_artiste"] == 
                }
            }
			array_push($this->artistes, $artiste);*/
		}

	}

    	/** Suppression d'un artiste */
	public function supArtiste($artiste) {
		if ($artiste instanceof Artiste) {
            for ($i=0; $i < count($this->artistes); $i++) { 
                if ($this->artistes[$i]["id_artiste"] == $artiste["id_artiste"]) {   
                    unset($this->artistes[$i]);
            	}
			}
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