<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css" />

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

    <!-------JS EFFET SCROLL--------->
    <script>
        window.onscroll = function() {
            scrollFunction();
        };

        var header = document.getElementById("myHeader");
        var sticky = header.offsetTop;
        
        function setupListener(){
            if (document.getElementById("hamburger-input")) {
                document.getElementById("hamburger-input").addEventListener("click", afficheBar);
            }
        }

        function afficheBar(){
            if (document.getElementById("hamburger-input").checked) {
                    document.getElementById("sidebar-menu").style.visibility = "visible";
                    document.getElementById("sidebar-menu").style.right = 0;
                    document.getElementById("sidebar-menu").style.transition = "0.3s";
                    document.getElementById("sidebar-menu").style.setProperty("-webkit-transition", "0.3s");
                    document.getElementById("overlay").style.visibility = "visible";
                    document.getElementById("overlay").style.opacity = 0.4;
                }
            else{
                document.getElementById("sidebar-menu").style.visibility = "hidden";
                document.getElementById("sidebar-menu").style.removeProperty("transition");
                document.getElementById("sidebar-menu").style.removeProperty("-webkit-transition");
                document.getElementById("sidebar-menu").style.transition = "0.3s";
                document.getElementById("sidebar-menu").style.setProperty("-webkit-transition", "0.3s");
                document.getElementById("sidebar-menu").style.removeProperty("right");
                document.getElementById("overlay").style.visibility = "hidden";
                document.getElementById("overlay").style.opacity = 0;
            }
        }


        function scrollFunction() {
            if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
                document.getElementById("hamburger").style.top = "29px";
                document.getElementById("header").style.height = "65px";
                document.getElementById("header").style.opacity = "100%";
            } else {
                document.getElementById("hamburger").style.top = "36px";
                document.getElementById("header").style.height = "80px";
                document.getElementById("header").style.opacity ="90%";
            }

        }

        setupListener();
    </script>


</body>

</html>
