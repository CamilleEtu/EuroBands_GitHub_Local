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
</head>

<body>
    <!-- Appel du header depuis le fichier header.php -->
    <header>
        <?php
        include './header.php';
        ?>
    </header>

    <div class="container_p1">
        <h1 class="titre_accueil">Bienvenue à Eurobands</h1>
        <div>
            <img src="./img/Angele.png">
            <div>
                <p>En 2023, nous célébrons les 30 ans de la création de l’Union Européenne. A cette occasion, Le Puy en Velay a choisi d’organiser un événement exceptionnel, à la hauteur de l'événement. 4 soirées, 12 artistes et groupes venus des 4 coins de l’Europe..
                    Venez célébrer cet événement unique du 22 au 25 juin 2023, place du Breuil au Puy en Velay. Pour célébrer l'interculturalité de l’événement, les concerts seront retransmis à la télévision, et dans différents pays d’Europe, il sera possible d’y assister en version holographique.
                </p>
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