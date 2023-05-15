/*document.addEventListener('DOMContentLoaded', function() {
    const togglePassword = document.querySelector('#oeil');
    const mp = document.querySelector('#password');
 
    togglePassword.addEventListener('click', function (e) {
      const type = mp.getAttribute('type') === 'password' ? 'text' : 'password';
      password.setAttribute('type', type);
      this.classList.toggle('fa-eye-slash');
    });
  });*/


  document.addEventListener('DOMContentLoaded', function() {
    const togglePassword = document.querySelector('#oeil1');
    const mp1 = document.querySelector('#password');
  
    togglePassword.addEventListener('click', function (e) {
      const type = mp1.getAttribute('type') === 'password' ? 'text' : 'password';
      password.setAttribute('type', type);
      this.classList.toggle('fa-eye-slash');
    });
});