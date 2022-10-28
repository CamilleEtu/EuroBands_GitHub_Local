<!-- Connextion à la base de donnée -->

<?php
if (!isset($_GET["lang"])) {
    $_GET["lang"] = "fr";
}
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

    <title>EuroBands</title>
</head>

<body>
    <!-- Appel du header depuis le fichier header.php -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <?php
    echo "<header>";
    include("lang.php");
    include './header.php';
    echo "</header>";
    ?>
    <main>

        <?php require_once(index_car); ?>


        <div class="container_p1">
            <div>
                <div>
                    <p> <?php echo index_p1; ?> </p>
                    <?php echo '<a href="./page_information.php?lang='.$_GET["lang"].'">'.index_more; ?></a>
                </div>
            </div>
        </div>

        <div class="container_p2">
            <h1 class="titre_accueil"><?php echo index_titre2; ?></h1>
            <!-- Système qui automatise la liste d'affichage des artistes en appelans les différentes données depuis la BDD -->
            <p class='description_nb_artistes'><?php echo index_nombre_artiste; ?> <?php echo $nbArt ?> </p>
            <ul id="artistes" class="image-gallery">
                <?php
                for ($i = 0; $i < $nbArt; $i++) {
                    echo
                    '<li>
                    <a href="PageArtistes.php?id=' . $tableauArt[$i]["id_artiste"] . '&lang='.$_GET["lang"].'">
                    <img class="illuArt" src="' . $tableauArt[$i]['url_image_artiste'] . '"></a>
                    <div class="overlay"><span>' . $tableauArt[$i]['prenom_artiste'] . " " . $tableauArt[$i]['nom_artiste'] . '</span></div>
                 </li>';
                }
                ?>
            </ul>
        </div>
    </main>

    <!-- Appel du footer depuis le fichier footer.php -->
    <footer>
        <?php
        include './footer.php';
        ?>
    </footer>
</body>

</html>