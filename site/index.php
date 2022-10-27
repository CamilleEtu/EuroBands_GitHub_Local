<!-- Connextion à la base de donnée -->

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
    <title>EuroBands</title>
</head>

<body>
    <!-- Appel du header depuis le fichier header.php -->
    <header>
        <?php
        include './header.php';
        include("lang.php");
        ?>
    </header>

    <div class="carrousel">
            <?php echo car; ?>
    </div>

    <div class="container_p1">
        <div>
            <img src="./img/Angele.png">
            <div>
                <?php echo texte_acc; ?>
                <a href="./page_information.php">Voir plus</a>
            </div>
        </div>
    </div>

    <div class="container_p2">
        <h1 class="titre_accueil">ARTISTES</h1>
        <!-- Système qui automatise la liste d'affichage des artistes en appelans les différentes données depuis la BDD -->
        <?php
        echo '<p class="description_nb_artistes">Voici les ' . $nbArt . ' artistes présents pour Eurobands.</p>';
        ?>
        <ul id="artistes" class="image-gallery">
            <?php
            for ($i = 0; $i < $nbArt; $i++) {
                echo
                '<li>
                    <a href="PageArtistes.php?id=' . $tableauArt[$i]["id_artiste"] . '">
                    <img class="illuArt" src="' . $tableauArt[$i]['url_image_artiste'] . '"></a>
                    <div class="overlay"><span>' . $tableauArt[$i]['prenom_artiste'] . " " . $tableauArt[$i]['nom_artiste'] . '</span></div>
                 </li>';
            }
            ?>
        </ul>
    </div>

    <!-- Appel du footer depuis le fichier footer.php -->
    <footer>
        <?php
        include './footer.php';
        ?>
    </footer>
</body>

</html>