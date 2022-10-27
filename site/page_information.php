<!DOCTYPE html>
<html lang="fr">

<head>
    <meta type="descritpion" content="eurobands, festival, music, international">
    <meta charset="utf-8">
    <meta type="keywords" content="eurobands, festival, music, international">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/PageInfo.css" />
</head>

<body>
    <header>
        <?php
        include './header.php';
        include("lang.php");
        ?>
    </header>
    <div class="container_info_g">
        <div class="container_info">
            <h1 class="titre_accueil"> <?php echo info_titre; ?></h1>
            <div>
                <img class="logo_couleur" src="./img/LogoCouleurPetit.png">
                <div>
                    <p> <?php echo info_p1; ?> </p>
                    <p> <?php echo info_p2; ?> </p>
                </div>
            </div>
        </div>

        <div class="container_info">
            <div>
                <div>
                   <p> <?php echo info_p3; ?> </p>
                </div>
                <img <?php echo info_carte; ?>>
            </div>
        </div>

        <h2 class="titre_accueil"> <?php echo info_titre2; ?> </h1>

        <div class="container_info">
            <div>
                <img classe="materiel_hologramme" src="./img/Materiel-Hologramme.png">
                <div>
                    <p> <?php echo info_p4 ; ?> </p>
                </div>
            </div>
        </div>

        <div class="container_info">
            <div>
                <div>
                   <p> <?php echo info_p5; ?> </p>
                </div>
                <img class="chemin_personne" src="./img/Chemin-De-La-Personne.png">
            </div>
        </div>

        <div class="container_info">
        <h2 class="titre_accueil"> <?php echo info_titre3; ?> </h1>
                <div class="video_1">
                    <iframe src="https://www.youtube.com/embed/71vdr1vUy08" title="Principe de fonctionnement des hologrammes." frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
        </div>
    </div>

    <footer>
        <?php
        include './footer.php';
        ?>
    </footer>
</body>

</html>