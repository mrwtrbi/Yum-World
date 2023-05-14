function recette(){
    var r = document.getElementById("recette");

    if(r.style.display == 'flex'){
        r.style.display = 'none';
    }
    else {
        r.style.display = 'flex';
    }
}

function quantite(){
    var qty=document.getElementById("qtt");

    
}



function quantite(x){
    var qty=document.getElementById("qtt_plat");
    var but_moins=document.getElementsByClassName("bouton-pm")[0];
    var but_plus=document.getElementsByClassName("bouton-pm")[1];
    var value=parseInt(qty.value);
    var stock=parseInt(document.getElementById("REALSTOCK").innerHTML);
   
    if(x==1){
        but_plus.disabled=false;
        if(value-1<=0){
            qty.value=0;
            but_moins.disabled=true;
        }
        else{
            value--;
            
            qty.value=value;
        }
    }

    else{
        but_moins.disabled=false;
        if(value+1 >stock){
            but_plus.disabled=true;
        }
        else{
            value++;
            qty.value=value;
        }
    }
}