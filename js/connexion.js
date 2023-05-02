/*const form = document.getElementById('connexion-form');
const username = document.getElementById('username');
const password = document.getElementById('password');

form.addEventListener('submit', function(e){
    e.preventDefault();

    validateInputs();
});

const setError = (element, message) => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error-message');

    errorDisplay.innerText = message;
    inputControl.classList.add('error');
    inputControl.classList.remove('success')
}

const setSuccess = element => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error-message');

    errorDisplay.innerText = '';
    inputControl.classList.add('success');
    inputControl.classList.remove('error');
};

const validateInputs = () => {
    const usernameValue = username.value.trim();
    const passwordValue = password.value.trim();

    if(usernameValue === '') {
        setError(username, "Le nom ou l'adresse mail est obligatoire");
    } else {
        setSuccess(username);
    }

    if(passwordValue === '') {
        setError(password, 'le mot de passe est obligatoir');
    } else {
        setSuccess(password);
    }
};*/


/*Pour rendre l'oeil cliquable */
document.addEventListener('DOMContentLoaded', function() {
    const togglePassword = document.querySelector('#oeil');
    const mp = document.querySelector('#password');
  
    togglePassword.addEventListener('click', function (e) {
      const type = mp.getAttribute('type') === 'password' ? 'text' : 'password';
      password.setAttribute('type', type);
      this.classList.toggle('fa-eye-slash');
    });
  });
