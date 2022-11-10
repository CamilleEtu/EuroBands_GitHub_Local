<!DOCTYPE html>
<html lang="fr">

<?php 
    include("lang.php"); 
?>

<head>
    <meta type="descritpion" content="Page citant les mentions légales, dont l'identité de l'organisateur, le siège, les coordonnées, les mentions relatives à la propriété intellectuelle ainsi que les mentions relatives à l'hébergement du site.">
    <link rel="stylesheet" type="text/css" href="css/styleMentions.css" />

    <title>Official EuroBands | <?php echo mL_titre; ?></title>
</head>

<body>
    <!-- Appel du header depuis le fichier header.php -->
    <?php
        include './header.php';
    ?>

    <main>

    <div class="texte">
        <p><strong>EuroBands</strong></br>
        <?php echo mL_eB; ?>
        </p>

        <h1><div class="titre"><?php echo mL_titreCo; ?></div></h1></br>

        <p>Hôtel de Ville | 1 Pl. du Martouret, 43000 Le Puy-en-Velay</br>
        Tél : 04 71 04 07 40</br>
        Fax : 04 71 02 62 08</br>
        <strong>contact.ville@lepuyenvelay.fr</strong></br></br>
        </p>

        <h1><div class="titre"><?php echo mL_titrePro; ?></div></h1></br>

        <p><?php echo mL_p1; ?></p>

        <h1><div class="titre"><?php echo mL_titreHeber; ?></div></h1></br>

        <p><?php echo mL_p2; ?></p>
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