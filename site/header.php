<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" src="css/style.css">
    
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
                    <li><a href="./index.php#artistes">Artiste</a></li>
                    <li><a href="./page_information.php">En savoir plus</a></li>
                    <li><a href="./gestArtistes.php">Gestion des artistes</a></li>
                </ul>
            </nav>
            <a class="resa" href="./reservation.php">Réservation</a>
            <a href="?lang=en">EN</a> <a href="?lang=fr"><div class="lgFR">FR</div></a>
        </div>
    </header>

    <?php
    }
    else{
    ?>

    <header id="myHeader">
        <div class="container_header" id="header">
            <a href="./index.php"><img class="logo1" id="logoNav" src="img/logo_full.png"></a>
            <nav class="navbar">
                <ul id="Nav">
                    <li><a href="./index.php#artistes">Artiste</a></li>
                    <li><a href="./page_information.php">En savoir plus</a></li>
                </ul>
            </nav>
            <a class="resa" href="./reservation.php">Réservation</a>
            <a href="?lang=en">EN</a> <a href="?lang=fr"><div class="lgFR">FR</div></a>
        </div>
    </header>
    <?php
    }
    ?>

    <!-------JS EFFET SCROLL--------->
    <script>
        window.onscroll = function() {
            scrollFunction()
        };

        var header = document.getElementById("myHeader");
        var sticky = header.offsetTop;

        function scrollFunction() {
            if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
                document.getElementById("header").style.height = "100px";
                document.getElementById("header").style.opacity = "100%";
                document.getElementById("logoNav").style.width = "170px";
                //document.getElementById("Nav").style.width = "170px";
            } else {
                document.getElementById("header").style.height = "200px";
                document.getElementById("header").style.opacity ="90%";
                document.getElementById("logoNav").style.width = "250px";
                //document.getElementById("Nav").style.width = "170px";
            }

            if (window.pageYOffset > sticky) {
                header.classList.add("sticky");
            } else {
                header.classList.remove("sticky");
            }
        }
    </script>


</body>

</html>