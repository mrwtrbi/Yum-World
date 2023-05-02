<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");
	?>
<head>
	<title>Page de connexion</title>
    <script src="../js/connexion.js"></script>
</head>
<body>
    
    <?php
        include_once("header.php");
    ?>
    
    <div id=forme>
	<h1>Connexion</h1>
	<form id="connexion-form">
		<label>Nom d'utilisateur ou adresse e-mail:</label><br>
		<input type="text" id="username" name="username" ><br>
		<label>Mot de passe:</label><br>
        <div>
		<input type="password" id="password" name="password">
        
        <i class="fas fa-eye toggle-password" ></i><br><br>
        </div>
		<input type="submit" value="Connexion">
        
	</form>
	<p><a href="../php/motDePasseOublie.php">Mot de passe oublié?</a></p></br>
    <p>Ou</p></br>
    <p><a href="../php/inscription.php">Créer un compte</a></p>
    </div>
    <?php
        include_once("footer.php");
    ?>
    
</body>
</html>
