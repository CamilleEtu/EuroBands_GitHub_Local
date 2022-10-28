<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EuroBands admin gestion artistes</title>
        
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/styleGestArtistes.css" />


            <!-- FAVICON -->
    <!--     <link rel="shortcut icon" type="image/x-icon" href="images/crown.png" /> -->
    </head>
    <body>

    <?php
    echo "<header>";
    include("lang.php");
    include './header.php';
    echo "</header>";
    ?>

    <main>

        <?php
        if (isset($_COOKIE["admin"])) {
            if (!isset($_GET["choix"])) {
        ?>

            <div class="choix">
                <h1>Que voulez-vous faire ?</h1>
                <a href="gestArtistes.php?choix=1"><input type="button" value="Ajouter un nouvel artiste"></a>
                <a href="gestArtistes.php?choix=2"><input type="button" value="Modifier un artiste existant"></a>
                <a href="gestArtistes.php?choix=3"><input type="button" value="Supprimer un artiste"></a>
            </div>
            
            <?php
            }
            else{
                switch ($_GET["choix"]) {
                    case 1:
            ?>

                <div class="formAjout">
                    <h1>Ajout d'un Artiste</h1>
                    <form method="POST" action="gestArtistes.php?ajout=1">
                        Nom : <input type="text" name="nom" placeholder="Le nom" required></br>
                        Prénom (s'il existe) : <input type="text" name="prenom" placeholder="Le prénom"></br>
                        Date de début de carrière : <input type="date" name="dateDebut" value="2000-01-01" min="1950-01-01" max="2022-01-01" required></br>
                        Description de l'artiste : <textarea name="bio" required rows="1" cols="33" required>Il s'agit d'un artiste de ...</textarea></br>
                        Description de l'artiste en anglais: <textarea name="bioAnglais" required rows="1" cols="33" required>It's about ...</textarea></br>
                        Nation : <input type="text" name="nation" placeholder="Le pays" required></br>
                        URL d'une vidéo de l'artiste : <input type="text" name="video" placeholder="Lien vidéo"></br>
                        IMG de l'artiste : <input type="text" name="img" placeholder="Design représentatif"></br>
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

                    </br></br><div><input type="submit" value="Ajouter l'artiste" class="Ajout">
                    <input type="reset" value="recommencer" class="Recom"></div>
                    </form>
                </div>
                

                
                    <?php
                            break;
                        case 2:
                            
                            echo '<div class="Modif"><h1>Modification d\'artistes</h1>';
                            require_once("classes/Gestionnaire.php");
                            session_start();
                            $instance = Gestionnaire::getInstance();

                            //affiche un select pour que l'utilisateur choisisse l'artiste qu'il veut modifier'
                            echo "<form action='gestArtistes.php?choix=4' method='POST'><select name='artiste'>";
                            for ($i=0; $i < count($instance->artistes); $i++) { 
                                //on affiche le nom, prénom si existant de l'artiste et la nationnalité pour chaque option
                                echo "<option>".$instance->artistes[$i]->prenom." ".$instance->artistes[$i]->nom." (".$instance->artistes[$i]->nation.")</option>";
                            }
                            echo "</select></br></br>";
                            echo '<div><input type="submit" value="Modifier l\'artiste"></div></div>';
                    ?>
                </form>

                        <?php
                                break;
                            case 3:
                                
                                echo "
                                <div class ='Modif'>
                                <h1>Suppression d'artiste</h1>";
                                require_once("classes/Gestionnaire.php");
                                session_start();
                                $instance = Gestionnaire::getInstance();

                                //affiche un select pour que l'utilisateur choisisse l'artiste qu'il veut modifier
                                echo "<form action='gestArtistes.php?ajout=3' method='POST'><select name='artiste'>";
                                for ($i=0; $i < count($instance->artistes); $i++) { 
                                    //on affiche le nom, prénom si existant de l'artiste et la nationnalité pour chaque option
                                    echo "<option>".$instance->artistes[$i]->prenom." ".$instance->artistes[$i]->nom." (".$instance->artistes[$i]->nation.")</option>";
                                }
                                echo "</select></br></br>";
                                echo '<div><input type="submit" value="Supprimer l\'artiste">
                                </form></div></div>'
                        ?>

                        


                        <?php
                                break;
                            case 4:
                                require_once("classes/Gestionnaire.php");
                                session_start();
                                $instance = Gestionnaire::getInstance();
                                echo "
                                <div class='formAjout'>
                                <h1>Modification de ".$_POST["artiste"]."</h1>";
                                for ($i=0; $i < count($instance->artistes); $i++) { 
                                    if(strpos($_POST["artiste"], $instance->artistes[$i]->nom) !== false){
                                        echo '<form method="POST" action="gestArtistes.php?ajout=2&id='.$instance->artistes[$i]->id.'">';
                                        echo 'Nom : <input type="text" name="nom" required value='.$instance->artistes[$i]->nom.'></br>';
                                        echo 'Prénom (s\'il existe) : <input type="text" name="prenom" value ='.$instance->artistes[$i]->prenom.'></br>';
                                        echo 'Date de début de carrière : <input type="date" name="dateDebut" min="1950-01-01" max="2022-01-01" required value='.$instance->artistes[$i]->dateDebut.'></br>';
                                        echo 'Description de l\'artiste : <textarea name="bio" required rows="8" cols="33" required>'.$instance->artistes[$i]->bio.'</textarea></br>';
                                        echo 'Description de l\'artiste en anglais : <textarea name="bioAnglais" required rows="8" cols="33" required>'.$instance->artistes[$i]->bioAnglais.'</textarea></br>';
                                        echo 'Pays : <input type="text" name="nation" required value='.$instance->artistes[$i]->nation.'></br>';
                                        echo 'URL d\'une vidéo de l\'artiste : <input type="text" name="video" value='.$instance->artistes[$i]->urlVideo.'></br>';
                                        echo 'IMG de l\'artiste : <input type="text" name="img" value='.$instance->artistes[$i]->urlImg.'></br>';
                                        echo 'Style : <select name="style">';
                                        for ($v=0; $v < count($instance->styles); $v++) { 
                                            if ($instance->styles[$v]->nomStyle == $instance->artistes[$i]->style) {
                                                echo "<option selected>".$instance->styles[$v]->nomStyle."</option>";
                                            }
                                            else{
                                            echo "<option>".$instance->styles[$v]->nomStyle."</option>";
                                            }
                                        }
                                        echo '</select>';
                                        echo '<div></br></br></br><input type="submit" value="Modifier l\'Artiste" class="Ajout">';
                                        echo '<input type="reset" value="recommencer" class="Recom"></div>';
                                        echo '</form></div>';
                                    }
                                }
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
                                    $newArtiste = new Artiste($_POST["nom"],$_POST["prenom"],$_POST["dateDebut"],$_POST["bio"],$_POST["bioAnglais"],$_POST["nation"],$_POST["video"], $img, $style);
                                    $instance->ajouterArtiste($newArtiste);
                                    echo "
                                    <div class'MsgAdminOK'>
                                    <h1>L'artiste a bien été ajouté !</h1></div>";
                                    break;

                                case 2:
                                    for ($i=0; $i < count($instance->styles); $i++) { 
                                        if ($instance->styles[$i]->nomStyle == $_POST["style"]) {
                                            $style = $instance->styles[$i];
                                        }
                                    }
                                    $modifArtiste = new Artiste($_POST["nom"],$_POST["prenom"],$_POST["dateDebut"],$_POST["bio"],$_POST["bioAnglais"],$_POST["nation"],$_POST["video"], $_POST["img"], $style);
                                    $instance->modifArtiste($modifArtiste, $_GET["id"]);
                                    echo "
                                    <div class='MsgAdminOK'>
                                    <h1>L'artiste a bien été modifié !</h1></div>";
                                    break;
                                case 3:
                                    for ($i=0; $i < count($instance->artistes); $i++) { 
                                        if(strpos($_POST["artiste"], $instance->artistes[$i]->nom) !== false){
                                            $deleteArtiste = $instance->artistes[$i];
                                        }
                                    }
                                    $instance->supArtiste($deleteArtiste);
                                    echo "
                                    <div class='MsgAdminOK'>
                                    <h1>L'artiste a bien été supprimé !</h1></div>";
                            }
                        }
                    }
                else{
                    echo "<div class='MsgAdminOK'><h1>Vous n'avez pas les droits pour accéder à cette page</h1></div>";
                }
            ?>
    </main>


    <footer>
        <?php
        include './footer.php';
        ?>
    </footer>


    </body>
</html>