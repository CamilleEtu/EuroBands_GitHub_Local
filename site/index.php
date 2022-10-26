<?php
session_start();
$bdd = new PDO('mysql:host=localhost;port=3306;dbname=eurobands', 'root', '');

$requete = 'SELECT * FROM artiste';
$resultats = $bdd->query($requete);
$tableauArt = $resultats->fetchAll();
$resultats->closeCursor();
$nbArt = count($tableauArt);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta type="descritpion" content="eurobands, festival, music, international">
    <meta charset="utf-8">
    <meta type="keywords" content="eurobands, festival, music, international">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>
    <header>
        <?php
        include './header.php';
        ?>
    </header>

    <div class="container_p1">
        <h1 class="titre_accueil">BIENVENUE A EUROBANDS</h1>
        <div>
            <img src="./img/Angele.png">
            <div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat ligula eu commodo consequat. Proin convallis accumsan libero, vitae sagittis ligula dictum pellentesque. Nam at lorem nec odio consectetur cursus. Proin eu pharetra ipsum, bibendum dapibus urna. Proin tempus massa bibendum mauris consectetur, eu viverra nibh pellentesque.</p>
                <a href="#">En savoir plus</a>
            </div>
        </div>
    </div>

    <div class="container_p2">
        <h1 class="titre_accueil">ARTISTES</h1>

        <ul id="artistes" class="image-gallery">
            <?php
            echo 'Voici les ' . $nbArt . ' artistes présents pour Eurobands.</br>';
            for ($i = 0; $i < $nbArt; $i++) {
                echo
                '<a href="stars2bis.php?id=' . $tableauArt[$i]["id_artiste"] . '">
                <img class="illuArt" src="' . $tableauArt[$i]['url_image_artiste'] . '"></a>'
                 . $tableauArt[$i]['prenom_artiste'] . ' ' . $tableauArt[$i]['nom_artiste'] . '</br>';
            }
            ?>
            <li>
                <a href="#"><img src="./img/SAM_the_kid.png" alt="" /></a>
                <div class="overlay"><span>Sam The Kid</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/Angele.png" alt="" /></a>
                <div class="overlay"><span>Angèle</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/ARMIN_VAN_BUUREN.png" alt="" /></a>
                <div class="overlay"><span>Armine Van Buuren</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/BigfloEtOli.png" alt="" /></a>
                <div class="overlay"><span>Bigflo et Oli</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/Enrique.png" alt="" /></a>
                <div class="overlay"><span>Enrique</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/HLADNO_PIVO.png" alt="" /></a>
                <div class="overlay"><span>Hladno Pivo</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/Julien.png" alt="" /></a>
                <div class="overlay"><span>Julien Dorée</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/MERO.png" alt="" /></a>
                <div class="overlay"><span>Mero</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/Pegboard_Nerds.png" alt="" /></a>
                <div class="overlay"><span>Pegboard Nerds</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/The_Knife.png" alt="" /></a>
                <div class="overlay"><span>The Knife</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/THE_RASMUS.png" alt="" /></a>
                <div class="overlay"><span>The Rasmus</span></div>
            </li>

            <li>
                <a href="#"><img src="./img/U2.png" alt="" /></a>
                <div class="overlay"><span>U2</span></div>
            </li>
        </ul>
    </div>


    <footer>
        <?php
        include './footer.php';
        ?>
    </footer>
</body>

</html>