<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/styleReservation.css" />
    <link rel="icon" type="image/x-icon" href="./img/Favicon.ico">
    <title>EuroBands - Réservation</title>
</head>

<body>
    <header>
    <?php
    include("lang.php");
    include './header.php';
    ?>
    </header>
    <div class="container_reserv">
        <h1 class="titre_accueil"><?php echo resa_titre1; ?></h1>
        <div>
            <div>
                <?php

                //var_dump($_POST);
                include_once 'configuration.php';

                $bdd = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$nombase,$utilisateur,$mdp);
                // récupère toutes les informations de la table "festivalier"
                $requete = 'SELECT * FROM festivalier';
                $resultats = $bdd->query($requete);
                // met les résultats sous forme de tableau
                $tabFesti = $resultats->fetchAll();
                $resultats->closeCursor();
                // compte les données du tableau
                $nbFesti = count($tabFesti);

                // récupère toutes les informations de la table "jour"
                $requete = 'SELECT * FROM jour ORDER BY date';
                $resultats = $bdd->query($requete);
                // met les résultats sous forme de tableau
                $tabJour = $resultats->fetchAll();
                $resultats->closeCursor();
                // compte les données du tableau
                $nbJour = count($tabJour);

                if (isset($_GET["ajout"])) {
                    if (isset($_POST['nom'])) {
                        $nom = $_POST['nom'];
                        $prenom = $_POST['prenom'];
                        $mail = $_POST['mail'];
                        // requête permet d'enregitrer les données saisies par l'utilisateur dans la base de données
                        $reqpreparee = $bdd->prepare("INSERT INTO festivalier (nom_festivalier, prenom_festivalier, mail_festivalier) VALUES(:nom,:prenom,:mail)");
                        $reqpreparee->bindParam(':nom', $nom, PDO::PARAM_STR);
                        $reqpreparee->bindParam(':prenom', $prenom, PDO::PARAM_STR);
                        $reqpreparee->bindParam(':mail', $mail, PDO::PARAM_STR);


                        // Appel de la procédure stockée
                        $succes = $reqpreparee->execute();
                        $id_festivalier = $bdd->lastInsertId();
                        if ($succes == true) {
                            echo ok;
                        } else {
                            echo nope;
                        }
                        // compte les données du tableau
                        $nbJourReserve = count($_POST["id_jour"]);

                        $reqpreparee = $bdd->prepare('INSERT INTO reserve(id_festivalier,id_jour) VALUES (:id_festivalier,:id_jour)');
                        for ($i = 0; $i < $nbJourReserve; $i++) {
                            $reqpreparee->execute(array(':id_festivalier' => $id_festivalier, ':id_jour' => $_POST["id_jour"][$i]));
                        }
                    }
                }

                ?>

                <?php
                if (!isset($_GET["ajout"])) {
                ?>
                    <div class="formulaire">
                        <h2><?php echo resa_titre2; ?></h2>
                        <p><?php echo resa_obli; ?></p>
                        <form action="reservation.php?ajout=1" method="POST" class="form_festi">
                            <div>
                                <label for="nom"><?php echo resa_nom; ?></label>
                                <input class="input_reserv" type="text" name="nom" id="nom" placeholder=<?php echo resa_Nom; ?> required>
                            </div>
                            <div>
                                <label for="prenom"><?php echo resa_prenom; ?></label>
                                <input class="input_reserv" type="text" name="prenom" id="prenom" placeholder=<?php echo resa_Prenom; ?> required>
                            </div>
                            <div>
                                <label for="mail"><?php echo resa_mail; ?></label>
                                <input class="input_reserv" type="email" name="mail" id="mail" placeholder=<?php echo resa_Email; ?> required>
                            </div>

                            <div>
                                
                                <?php
                                echo resa_jour;

                                for ($i = 0; $i < $nbJour; $i++) {
                                    $date = date('l', strtotime($tabJour[$i]['date']));

                                    // utilise les données récupérées grâce à la requête pour proposer les différents jours enregistrés dans la base de donnée
                                    echo '<br><input class="checkDate" type=checkbox name="id_jour[]" id="jour' . $tabJour[$i]['id_jour'] . '" value="' . $tabJour[$i]['id_jour'] . '"/><label for="jour' . $tabJour[$i]['id_jour'] . '">' . $date . '</label></br>';
                                }
                                ?>
                            </div>
                            <div>
                                <input class="bouton_reserv" type="submit" value=<?php echo resa_valid; ?>>
                                <input class="bouton_reserv" type="reset" value=<?php echo resa_effa; ?>>
                            </div>
                        </form>
                    </div>
                    
                </div>
                <div class="resume">
                        <h2><?php echo resa_total; ?></h2>
                        <p><?php echo resa_prix; ?><span id="totalResa"> 0</span>€</p>
                    </div>

                <?php
                }
                ?>

            </div>
            
        </div>
    </div>
    <footer>
        <?php
        include './footer.php';
        ?>
                <script src="javascript/functions.js"></script>
    </footer>
</body>

</html>