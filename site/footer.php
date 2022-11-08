<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta type="descritpion" content="Footer du site du festival Européen de musique, EuroBands">
        <meta charset="utf-8">
        <meta type="keywords" content="eurobands, festival, music, international">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" src="css/style.css">
        <title>Footer</title>
    </head>
    <body>
        <div class="container_footer">
            <div class="RS">
                <a href=""><img src="img/facebook.png"></a>
                <a href=""><img src="img/insta.png"></a>
                <a href=""><img src="img/twitter.png"></a>
                <a href=""><img src="img/youtube.png"></a>
            </div>
            
            <nav class="footer_nav">
                <ul>
                    <?php
                        if (!isset($_GET["lang"])) {
                            $_GET["lang"] = "fr";
                        }
                         echo '<a href="./index.php?lang='.$_GET["lang"].'"><li><img class="logo2" src="img/logo_small.png"></li></a>' ?>
                    <li><h3><?php echo footer_h3; ?></h3>
                        <ul>
                            <?php echo '<a href="./page_information.php?lang='.$_GET["lang"].'"><li>'.footer_apropos.'</li></a>';
                            echo '<a href="./reservation.php?lang='.$_GET["lang"].'"><li>'.footer_resa.'</li></a>'; ?>
                        </ul>
                    </li>
                    <li><h3><?php echo footer_legal; ?></h3>
                        <ul>
                            <a href=""><li><?php echo footer_mentions; ?></li></a>
                            <a href=""><li><?php echo footer_cgv; ?></li></a>
                        </ul>
                    </li>
                    <li><h3><?php echo footer_coord; ?></h3>
                        <p>&emsp;Place du Breuil</p>
                        <p>&emsp;43 000 Le Puy En Velay</p>
                        <p>&emsp;eurobands@mail.com</p>
                        <p>&emsp;01 02 03 04 05</p>
                    </li>
                </ul>
            </nav>
        </div>
    </body>
</html>