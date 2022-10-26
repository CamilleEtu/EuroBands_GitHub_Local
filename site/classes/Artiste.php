<?php 

require_once 'Style.php';

class Artiste{
    public $id;
    public $nom = "";
    public $prenom = NULL;
    public $dateDebut;
    public $bio = "";
    public $nation = "";
    public $urlVideo = "";
    public $urlImg = "";
    public $style; //est de classe Style

    public function __construct($id, $n, $p, $d, $b, $na, $vid, $img, $style){
        $this->id = $id;
        $this->nom = $n;
        if(isset($p)){
            $this->prenom = $p;
        };
        $this->dateDebut = $d;
        $this->bio = $b;
        $this->nation = $na;
        $this->urlVideo = $vid;
        $this->urlImg = $img;
        $this->style = $style;
    }

    public function afficher(){
        echo "Nom : ". $this->nom." <br/>";
        if (isset($this->prenom)) {
            echo "Prénom : ". $this->prenom." <br/>";
        }
        echo "Date de début de carrière : ". $this->dateDebut." <br/>";
        echo "Description : ". $this->bio." <br/>";
        echo "Nation : ". $this->nation." <br/>";
        echo "Style de musique : ". $this->style->nomStyle." <br/>";
        echo " <iframe width=\"50\"% height=\"50\"% src=\"".$this->urlVideo."\"></iframe>";
        echo "<img src=\"".$this->urlImg."\" alt=\"Photo de ".$this->prenom."\">";
    }
}

?>