function verif_texte(x){
  const specialChars = /[`1234567890!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;


  if(x==""){
      return false;
  }

  else if(x.length > 19){
      return false;
  }

  else if (specialChars.test(x)){
      
      return false;
  }

  else{
      return true;
  }
}


function valider_inscription(){

  var prenom=document.getElementById("firstname");
  var nom=document.getElementById("lastname");
  var mail=document.getElementById("email");
  var mdp=document.getElementById("password");
  var valide=1;

  if(!verif_texte(prenom.value)){
    valide=0;
    prenom.style.border="1px solid red";
  }

  else{
    prenom.style.border="1px solid gray";
  }

  if(!verif_texte(nom.value)){
    valide=0;
    nom.style.border="1px solid red";
  }

  else{
    nom.style.border="1px solid gray";
  }

  if(mdp.value.length==0){
    valide=0;
    mdp.style.border="1px solid red";

  }

  else{
    mdp.style.border="1px solid gray";
  }

  if(valide==0){
    return false;
  }


}






document.addEventListener('DOMContentLoaded', function() {
    const togglePassword = document.querySelector('#oeil1');
    const mp1 = document.querySelector('#password');
  
    togglePassword.addEventListener('click', function (e) {
      const type = mp1.getAttribute('type') === 'password' ? 'text' : 'password';
      password.setAttribute('type', type);
      this.classList.toggle('fa-eye-slash');
    });
});


