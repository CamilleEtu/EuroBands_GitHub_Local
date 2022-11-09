<?php
session_start();
include_once 'configuration.php';

$bdd = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$nombase,$utilisateur,$mdp);

if (isset($_GET['id'])) {
    $_SESSION["id"] = $_GET['id'];
}
else{
    $_GET['id'] = $_SESSION["id"];
}

$requete = 'SELECT * FROM artiste WHERE id_artiste =' . $_GET['id'];
$resultats = $bdd->query($requete);
$tableauArt = $resultats->fetchAll();
$resultats->closeCursor();
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styleArtiste.css" />
    <link rel="icon" type="image/x-icon" href="./img/Favicon.ico">
    <meta type="descritpion" content="Page d'accueil du site du festival Européen de musique, EuroBands">
    <meta type="keywords" content="eurobands, festival, music, international">

    <title>Official EuroBands | A propos de l'Artiste</title>
</head>

<body>
    <header>
        <?php
        include("lang.php");
        include './header.php';
        ?>
    </header>

    <div class="container_artiste">

        <?php
        if (!isset($_GET["lang"]) || $_GET["lang"] == "fr") {
                echo '<h1 class="titre_accueil">' . $tableauArt[0]['prenom_artiste'] . ' ' . $tableauArt[0]['nom_artiste'] . '</h1>';
                echo '<img class="image_artiste" src="' . $tableauArt[0]['url_image_artiste'] . '">';
                echo '<p class="description_artiste">' . $tableauArt[0]['bio_artiste'] . '</p>';
                echo '<iframe class="video_artiste" src="' . $tableauArt[0]['url_video_artiste'] . '"></iframe>';
        }
        else{
                echo '<h1 class="titre_accueil">' . $tableauArt[0]['prenom_artiste'] . ' ' . $tableauArt[0]['nom_artiste'] . '</h1>';
                echo '<img class="image_artiste" src="' . $tableauArt[0]['url_image_artiste'] . '">';
                echo '<p class="description_artiste">' . $tableauArt[0]['bio_anglais'] . '</p>';
                echo '<iframe class="video_artiste" src="' . $tableauArt[0]['url_video_artiste'] . '"></iframe>';
        }

        ?>
    </div>


    <footer>
        <?php
            include './footer.php';
        ?>
    </footer>
</body>

</html>