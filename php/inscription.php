<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");
	?>
<head>
	<title>Page d'inscription</title>
</head>
<body>
    <?php
		include_once("header.php");
	?>
	<script src="../js/inscription.js"></script>
    <div id=form2>
	<h1>Créer un compte</h1>
	<form>
		<label>Prénom:</label><br>
		<input type="text" id="firstname" name="firstname" placeholder="Entrez votre Prenom" required><br><br>
		<label>Nom:</label><br>
		<input type="text" id="lastname" name="lastname" placeholder="Entrez votre Nom"><br><br>
		<label>Adresse e-mail:</label><br>
		<input type="email" id="email" name="email" placeholder="Entrez votre Adresse e-mail"><br><br>
		<div>
		<label>Mot de passe:</label><br>
		<input type="password" id="password" name="password">
		<i class="fas fa-eye toggle-password" id= "oeil1"></i><br><br>
		</div>
		,
		<input type="submit" value="Validation">
	</form>
    </div>
    <?php
        include_once("footer.php");
    ?>
</body>
</html>
