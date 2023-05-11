<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");
	?>
<head>
	<title>Page de connexion</title>
    
</head>
<body id="corps">
    
    <?php
        include_once("header.php");
    ?> 
    <script src="../js/connexion.js"></script>
    <div id=forme>
	<h1>Connexion</h1><br><br>
	<form  id="connexion-form">
		<label>Nom d'utilisateur ou adresse e-mail:</label><br>
        
		<input type="text" id="username" name="username" ><br><br>
		<label>Mot de passe:</label><br>
        <div>
		<input type="password" id="password" name="password">
        
        <i class="fas fa-eye toggle-password" id= "oeil"></i><br><br>
        </div>
		<input type="submit" value="Connexion"><br><br>
        
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