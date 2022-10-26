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
        //besoin temporaire en attendant de pouvoir travailler dans index.php
        $_SESSION['admin'] = 'true';
        if (isset($_SESSION['admin'])) {
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
                <h1>Ajout d'un Artiste</h1>
                <form method="POST" action="gestArtistes.php?ajout=1">
                    Nom : <input type="text" name="nom" required></br>
                    Prénom (s'il existe) : <input type="text" name="prenom"></br>
                    Date de début de carrière : <input type="date" name="dateDebut" value="2000-01-01" min="1950-01-01" max="2022-01-01" required></br>
                    Description de l'artiste : <textarea name="bio" required rows="8" cols="33" required>Il s'agit d'un artiste de ...</textarea></br>
                    Nation : <input type="text" name="nation" required></br>
                    URL d'une vidéo de l'artiste : <input type="text" name="video"></br>
                    IMG de l'artiste : <input type="text" name="img"></br>
                    Style : <select name="style">
                        <?php
                        require_once("classes/Gestionnaire.php");
                        session_start();
                        $instance = Gestionnaire::getInstance();

                        for ($i=0; $i < count($instance->styles); $i++) { 
                            echo "<option>".$instance->styles[$i]->nomStyle."</option>";
                        }
                        ?>
                    </select>

                </br></br><input type="submit" value="Ajouter l'artiste">
                <input type="reset" value="recommencer">
                </form>
                    
                <?php
                        break;
                    case 2:
                        ?>
                        <h1>Modification d'artistes</h1>
                        <?php
                        require_once("classes/Gestionnaire.php");
                        session_start();
                        $instance = Gestionnaire::getInstance();

                        //affiche un select pour que l'utilisateur choisisse le héros qu'il veut mosifier
                        echo "<form action='gestArtistes.php?choix=4' method='POST'><select name='artiste'>";
                        for ($i=0; $i < count($instance->artistes); $i++) { 
                            //on affiche le nom, prénom si existant de l'artiste et la nationnalité pour chaque option
                            echo "<option>".$instance->artistes[$i]->prenom." ".$instance->artistes[$i]->nom." (".$instance->artistes[$i]->nation.")</option>";
                        }
                        echo "</select></br></br>";
                        ?>
                <input type="submit" value="Modifier l'artiste">
                </form>
                        <?php
                        break;
                    case 3:
                        ?>
                        <h1>Suppression d'artiste</h1>
                        <?php
                        break;
                    case 4:
                        require_once("classes/Gestionnaire.php");
                        session_start();
                        $instance = Gestionnaire::getInstance();
                        for ($i=0; $i < count($instance->artistes); $i++) { 
                            if(strpos($_POST["artiste"], $instance->artistes[$i]->nom) !== false){
                                var_dump("ITS ALIVE");
                            }
                        }
/*
                        for ($i=0; $i < count($instance->styles); $i++) { 
                            if(strpos($_POST["artiste"], $instance->artistes[$i]->nom) !== false){
                                var_dump("ITS ALIVE");
                            }
                        }*/
                        echo "<h1>Modification de ".$_POST["artiste"]."</h1>";
                        break;
                    default:
                        break;
                }
            }

                //permet d'afficher un message de confirmation d'ajout, de modification ou de suppression en fonction du choix de l'utilisateur et de lancer sa fonction associée pour le Gestionnaire
                if (isset($_GET["ajout"])) {
                    require_once("classes/Artiste.php");
                    require_once("classes/Gestionnaire.php");
                    session_start();
                    //permet de se connecter à la base de donnée et de récupérer tous les héros du meilleur au moins bon (en fonction du classement)
                    $instance = Gestionnaire::getInstance();
                    switch ($_GET["ajout"]) {
                        case 1:
                            if ($_POST["img"] == "") {
                                $img = "https://www.pngitem.com/pimgs/m/52-526033_unknown-person-icon-png-transparent-png.png";
                            }
                            else{
                                $img = $_POST["img"];
                            }
                            for ($i=0; $i < count($instance->styles); $i++) { 
                                if ($instance->styles[$i]->nomStyle == $_POST["style"]) {
                                    $style = $instance->styles[$i];
                                }
                            }
                            $newArtiste = new Artiste($_POST["nom"],$_POST["prenom"],$_POST["dateDebut"],$_POST["bio"],$_POST["nation"],$_POST["video"], $img, $style);
                            $instance->ajouterArtiste($newArtiste);
                            echo "<h1>L'artiste a bien été ajouté !</h1>";
                            break;

                        case 2:
                          //  modifHero($bdd,$_GET["idHero"],$_POST["prenom"],$_POST["nom"],$_POST["puissance"],$_POST["url"],$_POST["classe"],$_POST["citation"],$tabIdQuete);
                            echo "<h1>L'artiste a bien été modifié !</h1>";
                            break;
                        case 3:
                          //  suppHero($bdd,$_POST["hero"]);
                            echo "<h1>L'artiste a bien été supprimé !</h1>";
                    }
                }
            }
        else{
            echo "<h1>Vous n'avez pas les droits pour accéder à cette page</h1>";
        }
            ?>
    </body>
</html>