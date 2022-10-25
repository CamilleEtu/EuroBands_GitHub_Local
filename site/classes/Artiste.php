<?php 

class Artiste{
    public $nom = "";
    public $prenom = NULL;
    public $dateDebut;
    public $bio = "";
    public $nation = "";
    public $urlVideo = "";
    public $urlImg = "";

    public function __construct($n, $p, $d, $b, $na, $vid, $img){
        $this->nom = $n;
        if(isset($p)){
            $this->prenom = $p;
        };
        $this->dateDebut = $d;
        $this->bio = $b;
        $this->nation = $na;
        $this->urlVideo = $vid;
        $this->urlImg = $img;
    }

    public function afficher(){
        echo "Nom : ". $this->nom." <br/>";
        if (isset($this->prenom)) {
            echo "Prénom : ". $this->prenom." <br/>";
        }
        echo "Date de début de carrière : ". $this->dateDebut." <br/>";
        echo "Description : ". $this->bio." <br/>";
        echo "Nation : ". $this->nation." <br/>";
        echo " <iframe width=\"50\"% height=\"50\"% src=\"".$this->urlVideo."\"></iframe>";
        echo "<img src=\"".$this->urlImg."\" alt=\"Photo de ".$this->prenom."\">";
    }
}

?>