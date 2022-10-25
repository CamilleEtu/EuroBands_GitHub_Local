<?php
    session_start() ; 
    $bdd = new PDO('mysql:host=localhost;port=3306;dbname=eurobands','root', '');

    $requete = 'SELECT * FROM artiste';
    $resultats = $bdd -> query($requete);
    $tableauArt = $resultats -> fetchAll();
    $resultats -> closeCursor();
    $nbArt = count($tableauArt) ;
?>

<!DOCTYPE html>
<html lang="fr">

    <head>
        <title>Bienvenue</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <meta name="author" content="Camille Chabanon" />
        <link rel="stylesheet" href="cssArt.css">
        <!-- <script src="js/chorale.js"></script> -->
    </head>

    <body>
        <?php
            echo 'Voici les '.$nbArt.' artistes présents pour Eurobands.</br>';
            for($i=0;$i<$nbArt;$i++){
                echo '<a href="stars2bis.php?id='.$tableauArt[$i]["id_artiste"].'"><img class="illuArt" src="'.$tableauArt[$i]['url_image_artiste'].'"></a>'.$tableauArt[$i]['prenom_artiste'].' '.$tableauArt[$i]['nom_artiste'].'</br>';
            }
        ?>
    </body>