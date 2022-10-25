<?php 

require_once 'Jour.php';

class Festivalier{
    public $nom = "";
    public $prenom = "";
    public $mail = "";

    public function __construct($n, $p, $m){
        $this->nom = $n;
        $this->prenom = $p;
        $this->mail = $m;
    }

    public function afficher(){
        echo "Nom : ". $this->nom." <br/>";
        echo "Prénom : ". $this->prenom." <br/>";
        echo "E-mail : ". $this->email." <br/>";
    }

    public function reserver($tabJour){
        switch (count($tabJour)) {
            case 1:
                //réservation pour une journée
                # code...
                break;
            case 2:
                //réservation pour 2 journées
                # code...
                break;
            case 3:
                //réservation pour 3 journées
                # code...
                break;
            case 4:
                //réservation pour tous les jours
                # code...
                break;
                
            default:
                //il y a une erreur avec la table de jours
                break;
        }
    }
}

?>