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
                $tarif = 30;
                break;
            case 2:
                //réservation pour 2 journées
                $tarif = 55;
                break;
            case 3:
                //réservation pour 3 journées
                $tarif = 80;
                break;
            case 4:
                //réservation pour tous les jours
                $tarif = 105;
                break;
                
            default:
                //il y a une erreur avec la table de jours
                $tarif = NULL;
                break;
        }
    }
}

?>