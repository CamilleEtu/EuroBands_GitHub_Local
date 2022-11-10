<?php
include "lang.php"; 
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <link href="./css/styleAdminCo.css" rel="stylesheet">
    <title>Official EuroBands | <?php echo admin_co; ?></title>
</head>


<body>
    <!---HEADER-->
    <header>
        <?php
            if (isset($_POST["login"])) {
                if ($_POST["login"] == "admin" && $_POST["mdp"] == "eurobandsMDP") {
                    setcookie("admin", "oui", time() + (86400 * 30), "/");
                    header("location: https://eurobands.alwaysdata.net/index.php?lang=fr");
                    exit();
                } else {
                    if ($_POST["login"] != "admin" && $_POST["mdp"] != "eurobandsMDP") {
                        echo "<h3>Votre login et votre mot de passe sont incorects !</h3>";
                    } else {
                        if ($_POST["login"] != "admin") {
                            echo "<h3>Votre login est incorrect !</h3>";
                        } else {
                            echo "<h3>Votre mot de passe est incorrect !</h3>";
                        }
                    }
                }
            }

        include './header.php';
        ?>
    </header>


    <!---FORM---->
    <div class="continuer">
        <form action="" method="POST">
            <div><label for="login">login</label>
                <input type="text" name="login" id="login" placeholder="<?php echo regis_id ?>" class="co" required>
            </div></br>

            <div><label for="login">mdp</label>
                <input type="password" name="mdp" id="mdp" placeholder="<?php echo regis_mdp ?>" class="co" required>
            </div></br>

            <div><input type="submit" value="<?php echo regis_co ?>" class="submit"></div>

            <div class="msgErreur">
                
            </div>
    </div>



    <!---FOOTER---->
    <footer>
        <?php
        include './footer.php';
        ?>

    </footer>

</body>



</html>