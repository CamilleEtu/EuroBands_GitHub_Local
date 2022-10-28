<?php
session_start();
$bdd = new PDO('mysql:host=localhost;port=3306;dbname=eurobands', 'root', '');

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
$nbArt = count($tableauArt);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styleArtiste.css" />
    <link rel="icon" type="image/x-icon" href="./img/Favicon.ico">
    <title>EuroBands - Page d'Artiste</title>
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
            for ($i = 0; $i < $nbArt; $i++) {
                echo '<h1 class="titre_accueil">' . $tableauArt[$i]['prenom_artiste'] . ' ' . $tableauArt[$i]['nom_artiste'] . '</h1>';
                echo '<img class="image_artiste" src="' . $tableauArt[$i]['url_image_artiste'] . '">';
                echo '<p class="description_artiste">' . $tableauArt[$i]['bio_artiste'] . '</p>';
                echo '<iframe class="video_artiste" src="' . $tableauArt[$i]['url_video_artiste'] . '">';
            }
        }
        else{
            for ($i = 0; $i < $nbArt; $i++) {
                echo '<h1 class="titre_accueil">' . $tableauArt[$i]['prenom_artiste'] . ' ' . $tableauArt[$i]['nom_artiste'] . '</h1>';
                echo '<img class="image_artiste" src="' . $tableauArt[$i]['url_image_artiste'] . '">';
                echo '<p class="description_artiste">' . $tableauArt[$i]['bio_anglais'] . '</p>';
                echo '<iframe class="video_artiste" src="' . $tableauArt[$i]['url_video_artiste'] . '">';
            }
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