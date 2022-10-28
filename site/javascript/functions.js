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

function setupListeners(){
    if(document.getElementsByClassName("checkDate").length != 0){
        afficheCheck();
    }
}

window.addEventListener("load", setupListeners);

