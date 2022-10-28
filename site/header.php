<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    
    <title>EuroBands</title>
</head>

<body>
    <?php
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
            <a href="?lang=en">EN</a> <a href="?lang=fr"><div class="lgFR">FR</div></a>
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
            <a href="?lang=en">EN</a> <a href="?lang=fr"><div class="lgFR">FR</div></a>
        </div>
    </header>

    <?php
    }
    ?>

    <!-------JS EFFET SCROLL--------->
    <script>
        window.onscroll = function() {
            myfunction()
        };

        var header = document.getElementById("myHeader");
        var sticky = header.offsetTop;

        function myFunction(x) {
            if (x.matches) { // If media query matches
                if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
                document.getElementById("header").style.height = "65px";
                document.getElementById("header").style.opacity = "100%";
                document.getElementById("logoNav").style.width = "50px";
                //document.getElementById("Nav").style.width = "170px";
                }
                else {
                document.getElementById("header").style.height = "80px";
                document.getElementById("header").style.opacity ="90%";
                document.getElementById("logoNav").style.width = "100px";
                //document.getElementById("Nav").style.width = "170px";
                }
            } 
            else {
                if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
                document.getElementById("header").style.height = "65px";
                document.getElementById("header").style.opacity = "100%";
                document.getElementById("logoNav").style.width = "170px";
                //document.getElementById("Nav").style.width = "170px";
                }
                else {
                document.getElementById("header").style.height = "80px";
                document.getElementById("header").style.opacity ="90%";
                document.getElementById("logoNav").style.width = "250px";
                //document.getElementById("Nav").style.width = "170px";
                }
            }
        }

        var x = window.matchMedia("(max-width: 921px)")
        myFunction(x) // Call listener function at run time
        x.addListener(myFunction) // Attach listener function on state changes

    </script>


</body>

</html>