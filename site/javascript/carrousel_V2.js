let indice=0;
let zoneaf;
let tab = new Array (5);
let tableau = ["img/about-bg.jpg", "img/intro-bg.jpg", "img/subscribe-bg.jpg", "img/venue-info-bg.jpg", "img/hotels/1.jpg"];

function defilementTemps() {
    zoneaf.textContent = tableau[indice];
    indice=indice+1;
    if (indice<0) 
        indice=tab.length -1;
    if (indice>tab.length -1)
        indice=0;
    document.getElementById("af").src=tableau[indice];    
}

function boucleTemps() {
    setInterval(defilementTemps, 3000);
    zoneaf = document.getElementById("af");
}

function gauche() {
    indice=indice-1;
    if (indice<0) 
        indice=tab.length -1;
    if (indice>tab.length -1)
        indice=0;
    document.getElementById("af").src=tableau[indice];    
}

function droite() {
    indice=indice+1;
    if (indice<0) 
        indice=tab.length -1;
    if (indice>tab.length -1)
        indice=0;
    document.getElementById("af").src=tableau[indice];    
}

function lancement() {
    let g=document.getElementById("g");
    g.addEventListener("click", gauche)
    let d=document.getElementById("d");
    d.addEventListener("click", droite)
}

window.addEventListener('load',boucleTemps);
window.addEventListener('load',lancement);