<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="./css/styleAdminCo.css" rel="stylesheet"> 
        <title>EuroBands Admin</title>
    </head>

    <?php

    if (isset($_POST["login"])) {
        if ($_POST["login"] == "admin" && $_POST["mdp"] == "eurobandsMDP") {
            $_SESSION['admin'] = 'true';
            header("location: index.php");
            exit();
        }
        else{
            if ($_POST["login"] != "admin" && $_POST["mdp"] != "eurobandsMDP") {
                echo "<h1>Votre login et votre mot de passe sont incorects !</h1>";
            }
            else{
                if ($_POST["login"] != "admin") {
                    echo "<h1>Votre login est incorrect !</h1>";
                }
                else{
                    echo "<h1>Votre mot de passe est incorrect !</h1>";
                }
            }
        }
    }

    ?>
    <body>

        <div class="continer">
            <form action="" method="POST">
                <label for="login">Entrez votre login</label>
                <input type="text" name="login" id="login" required></br>
                
                <label for="login">Entrez votre mot de passe</label>
                <input type="password" name="mdp" id="mdp" required></br>

                <input type="submit" value="Connexion">
        </div>

    </body>
</html>