<!DOCTYPE html>
<html lang="fr">

<head>
    <link rel="stylesheet" type="text/css" href="css/PageInfo.css" />
    <title>Official EuroBands | En savoir plus</title>
</head>

<body>
    <header>
    <?php
    include("lang.php");
    include './header.php';
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
            <div class="bloc_carte">
                <div>
                   <p> <?php echo info_p3; ?> </p>
                   <div class="texte_carte">
                        <p><?php echo info_liste1; ?></p>
                        <p><?php echo info_liste2; ?></p>
                    </div>
                </div>
                <img class="carte" <?php echo info_carte; ?> >
            </div>
        </div>

        <h2 class="titre_accueil"> <?php echo info_titre2; ?> </h1>

        <div class="container_info">
            <div>
                <img class="materiel_hologramme" src="./img/Materiel-Hologramme.png">
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
                    <iframe src="https://www.youtube.com/embed/r27wrQOgawo" title="Fonctionnement hologramme Fantôme de Pepper" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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