<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Aurobands admin gestion artistes</title>
    <!--     <link type="text/css" rel="stylesheet" id="stylesheet" media="screen" href="css/styleDark.css" title="design"/> -->
            <!-- FAVICON -->
    <!--     <link rel="shortcut icon" type="image/x-icon" href="images/crown.png" /> -->
    </head>
    <body>
        <?php
        if (!isset($_GET["choix"])) {
            ?>
                    <h1>Que voulez-vous faire ?</h1>
        <a href="gestArtistes.php?choix=1"><input type="button" value="Ajouter un nouvel artiste"></a>
        <a href="gestArtistes.php?choix=2"><input type="button" value="Modifier un artiste existant"></a>
        <a href="gestArtistes.php?choix=3"><input type="button" value="Supprimer un artiste"></a>
        
        <?php
        }
        else{
            switch ($_GET["choix"]) {
                case 1:
                    ?>

                    <h1>Ajout d'artistes</h1>
                    <?php
                    break;
                case 2:
                    ?>
                    <h1>Modification d'artistes</h1>

                    <?php
                    break;
                case 3:
                    ?>
                    <h1>Suppression d'artiste</h1>
                    <?php
                    break;
                default:
                    break;
            }
        }
        ?>
    </body>
</html>