<?php
    session_start() ; 
    $bdd = new PDO('mysql:host=localhost;port=3306;dbname=eurobands','root', '');

    $requete = 'SELECT * FROM artiste WHERE id_artiste =' .$_GET['id'];
    $resultats = $bdd -> query($requete);
    $tableauArt = $resultats -> fetchAll();
    $resultats -> closeCursor();
    $nbArt = count($tableauArt) ;

    for($i=0;$i<$nbArt;$i++){
        echo $tableauArt[$i]['prenom_artiste'].' '.$tableauArt[$i]['nom_artiste'].'</br>';
        echo $tableauArt[$i]['bio_artiste'];
    }
?>