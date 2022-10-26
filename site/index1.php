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
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css" /> -->
</head>

<body>
    <header>
        <?php
        include './header.php';
        include("lang.php");
        ?>
    </header>

    <div class="container_p1">
        <h1 class="titre_accueil">Bienvenue à Eurobands</h1>
        <div>
            <img src="./img/Angele.png">
            <div>
                <a href="?lang=en">EN</a> | <a href="?lang=fr">FR</a>
                <?php echo texte_acc; ?>
                
                <a href="#">Voir plus</a>
            </div>
        </div>
    </div>

    <div class="container_p2">
        <h1 class="titre_accueil">ARTISTES</h1>
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
                    <div class="overlay"><span>' .$tableauArt[$i]['prenom_artiste']. " " . $tableauArt[$i]['nom_artiste'] . '</span></div>
                 </li>';
            }
            ?>
        </ul>
    </div>


    <footer>
        <?php
        include './footer.php';
        ?>
    </footer>
</body>

</html>