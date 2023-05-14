function validerFormulaire() {
    var nom = document.getElementsByName("nom")[0].value;
    var prenom = document.getElementsByName("prenom")[0].value;
    var email = document.getElementsByName("email")[0].value;
    var tel = document.getElementsByName("tel")[0].value;
    var pays = document.getElementsByName("pays")[0].value;

    if (nom === "" || prenom === "" || email === "" || tel === "" || pays === "") {
        alert("Veuillez remplir tous les champs obligatoires (*) !");
        return false;
    } else {
        alert("Formulaire soumis avec succès !");
        return true;
    }
}