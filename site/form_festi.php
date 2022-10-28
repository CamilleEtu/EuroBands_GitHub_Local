<?php

    //var_dump($_POST);

    include_once 'configuration.php';

    $bdd = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$nombase,$utilisateur,$mdp);
        // récupère toutes les informations de la table "festivalier"
        $requete = 'SELECT * FROM festivalier';
        $resultats = $bdd -> query($requete) ;
        // met les résultats sous forme de tableau
        $tabFesti=$resultats -> fetchAll() ;
        $resultats -> closeCursor() ;
        // compte les données du tableau
        $nbFesti = count($tabFesti) ;

        // récupère toutes les informations de la table "jour"
        $requete = 'SELECT * FROM jour';
        $resultats = $bdd -> query($requete) ;
        // met les résultats sous forme de tableau
        $tabJour=$resultats -> fetchAll() ;
        $resultats -> closeCursor() ;
        // compte les données du tableau
        $nbJour = count($tabJour) ;

        if (isset($_GET["ajout"])){
            if (isset($_POST['nom'])){
                $nom = $_POST['nom'];
                $prenom = $_POST['prenom'];
                $mail = $_POST['mail'];
                // requête permet d'enregitrer les données saisies par l'utilisateur dans la base de données
                $reqpreparee = $bdd -> prepare("INSERT INTO festivalier (nom_festivalier, prenom_festivalier, mail_festivalier) VALUES(:nom,:prenom,:mail)");
                $reqpreparee -> bindParam(':nom', $nom, PDO::PARAM_STR);
                $reqpreparee -> bindParam(':prenom', $prenom, PDO::PARAM_STR);  
                $reqpreparee -> bindParam(':mail', $mail, PDO::PARAM_STR);
       

                // Appel de la procédure stockée
                $succes = $reqpreparee->execute();
                $id_festivalier = $bdd->lastInsertId();
                if($succes==true){
                    echo 'Vous êtes maintenant pré-inscri !</br>';
                }
                else { 
                    echo 'Erreur de connexion à la base de données :( </br>';        
                }
                // compte les données du tableau
                $nbJourReserve = count( $_POST["id_jour"]) ;

                $reqpreparee = $bdd -> prepare('INSERT INTO reserve(id_festivalier,id_jour) VALUES (:id_festivalier,:id_jour)');
                for ($i=0;$i<$nbJourReserve;$i++){
                    $reqpreparee->execute(array(':id_festivalier' => $id_festivalier,':id_jour' => $_POST["id_jour"][$i]));
                }


            }

        }

?>

<html>
    <?php
        if (!isset($_GET["ajout"])){
    ?>

    <h1>Formulaire de pré-inscription</h1>
    <form action="form_festi.php?ajout=1" method="POST" class="form_festi">
        <fieldset>
            <div>
                <label for="nom">Entrez votre NOM : </label>
                <input type="text" name="nom" id="nom" placeholder="NOM" required>
            </div>
            <div>
                <label for="prenom">Entrez votre Prénom : </label>
                <input type="text" name="prenom" id="prenom" placeholder="Prénom" required>
            </div>
            <div>
                <label for="mail">Entrez votre adresse email : </label>
                <input type="email" name="mail" id="mail" placeholder="email" required>
            </div>
           
            <div>
                Vous souhaitez vous pré-inscrire pour :</br>
                <?php
                    
                    for ($i=0;$i<$nbJour;$i++){
                        $date = date ('l', strtotime ($tabJour[$i]['date']));
                        
                        // utilise les données récupérées grâce à la requête pour proposer les différents jours enregistrés dans la base de donnée
                        echo '<input type=checkbox name="id_jour[]" id="jour'.$tabJour[$i]['id_jour'].'" value="'.$tabJour[$i]['id_jour'].'"/><label for="jour'.$tabJour[$i]['id_jour'].'">'.$date.'</label></br>';
                    }
                ?>
            </div>
            <div>
                <input type="submit" value="Se pré-inscrire">
                <input type="reset" value="Effacer">
            </div>
        </fieldset>
    </form>

    <?php
        }
    ?>

</html>

<?php
if (isset($_POST['nom'])){

        echo '<a href = "../index.php"><button class="acc">Accueil</a></button>';
    }
?>
