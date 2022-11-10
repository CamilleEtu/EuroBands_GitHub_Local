<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta type="descritpion" content="Page d'accueil du site du festival Européen de musique, EuroBands">
    <meta type="keywords" content="eurobands, festival, music, international">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="icon" type="image/x-icon" href="./img/Favicon.ico">

</head>

<body>
    <?php
    if (!isset($_GET["lang"])) {
        $_GET["lang"] = "fr";
    }
    if (isset($_COOKIE["admin"])) {
        ?>
    <header id="myHeader">
        <div class="container_header" id="header">
            <a href="./index.php"><img class="logo1" id="logoNav" src="img/logo_full.png"></a>
            <nav class="navbar">
                <ul id="Nav">
                    <li><a href="./index.php#artistes"><?php echo header_art; ?></a></li>
                    <li><a href="./page_information.php"><?php echo header_plus; ?></a></li>
                    <li><a href="./gestArtistes.php">Gestion des artistes</a></li>
                </ul>
            </nav>
            <a class="resa" href="./reservation.php"><?php echo header_resa; ?></a>
            <a class="lgEN" href="?lang=en">EN</a> <a class="lgFR" href="?lang=fr">FR</a>
            <label>
            <input type="checkbox">
            <span class="menu"> <span id="hamburger"></span> </span>
            </label>   
        </div>
    </header>

    <?php
    }
    else{
    ?>

    <header id="myHeader">
        <div class="container_header" id="header">
        <?php echo  '<a href="./index.php?lang='.$_GET["lang"].'"><img class="logo1" id="logoNav" src="img/logo_full.png"></a>'; ?>
            <nav class="navbar">
                <ul id="Nav">
                    <?php echo '<li><a href="./index.php?lang='.$_GET["lang"].'#artistes">'.header_art; ?></a></li>
                    <?php echo '<li><a href="./page_information.php?lang='.$_GET["lang"].'">'.header_plus; ?></a></li>
                    </ul>
            </nav>
            <?php echo '<a class="resa" href="./reservation.php?lang='.$_GET["lang"].'">'.header_resa; ?></a>
            <a class="lgEN" href="?lang=en">EN</a>
            <a class="lgFR" href="?lang=fr">FR</a>
            
            <label>
            <input id="hamburger-input" type="checkbox">
            <span class="menu"> <span id="hamburger"></span> </span>
            <nav id="sidebar-menu">
                <ul id="Nav">
                    <?php echo '<li><a href="./index.php?lang='.$_GET["lang"].'#artistes">'.header_art; ?></a></li>
                    <?php echo '<li><a href="./page_information.php?lang='.$_GET["lang"].'">'.header_plus; ?></a></li>
                    <?php echo '<li><a class="resa" href="./reservation.php?lang='.$_GET["lang"].'">'.header_resa; ?></a></li>
                    <li><a class="lgEN" href="?lang=en">EN</a></li>
                    <li><a class="lgFR" href="?lang=fr">FR</a></li>
                </ul>
            </nav> 
            </label>

            <div id="overlay"></div>
    
       
       
        </div>
    </header>

    <?php
    }
    ?>
    <script src="javascript/functions.js"></script>


</body>

</html>
