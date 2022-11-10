let selection = {};
let prix = 0;

function afficheCheck(){
    let checks = document.querySelectorAll("input[type='checkbox']");
    let totalResa = document.getElementById("totalResa");
    for (let index = 0; index < checks.length; index++) {
        checks[index].addEventListener('click', display);
    }
    
    
    function display(){
        let total = 0;
        if (this.checked) {
            selection[this.id] = {
                value: 1
            };
        } 
        else{
            delete selection[this.id];
        }

        console.log(selection);

        for (let key in selection) {
            total += selection[key].value;
        }

        switch (total) {
            case 1:
                prix = 30
            break;
    
            case 2:
                prix = 55;
            break;
    
            case 3:
                prix = 80;
            break;
    
            case 4:
                prix = 105;
            break;
        
            default:
                prix = 0
                break;
        }
    
        totalResa.innerText = prix;
    }

}


function afficheBar(){
    if (document.getElementById("hamburger-input").checked) {
            document.getElementById("sidebar-menu").style.visibility = "visible";
            document.getElementById("sidebar-menu").style.right = 0;
            document.getElementById("sidebar-menu").style.transition = "0.3s";
            document.getElementById("overlay").style.visibility = "visible";
            document.getElementById("overlay").style.opacity = 0.4;
        }
    else{
        document.getElementById("sidebar-menu").style.visibility = "hidden";
        document.getElementById("sidebar-menu").style.removeProperty("transition");
        document.getElementById("sidebar-menu").style.transition = "0.3s";
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

function setupListeners(){
    if(document.getElementsByClassName("checkDate").length != 0){
        afficheCheck();
    }
    if (document.getElementById("hamburger-input")) {
        document.getElementById("hamburger-input").addEventListener("click", afficheBar);
    }
    window.addEventListener("scroll", scrollFunction);
    if (document.getElementById("myHeader")) {
        var header = document.getElementById("myHeader");
        var sticky = header.offsetTop;
    }
}

window.addEventListener("load", setupListeners);
setupListeners();