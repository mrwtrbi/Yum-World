function recette(){
    var r = document.getElementById("recette");

    if(r.style.display == 'flex'){
        r.style.display = 'none';
    }
    else {
        r.style.display = 'flex';
    }
}