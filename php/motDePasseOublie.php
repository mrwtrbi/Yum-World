<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");
	?>
<head>
	<title>Mot de passe oublié</title>
    <script src="../js/motDepasseOublie.js"></script>
</head>
<body>
    <?php
        include_once("header.php");
    ?>
    <div id=form1>
	<h1>Mot de passe oublié</h1><br><br>
	<p>Entrez votre adresse e-mail et nous vous enverrons un lien pour réinitialiser votre mot de passe.</p><br><br>
	<form>
		<label>Adresse e-mail:</label><br>
		<input type="email" id="email" name="email" placeholder="Adresse e-mail"><br><br>
		<input id="bout-oubli" type="submit" value="Envoyer" style="color: black; width: 10em; height: 3em; border: 2px solid #ddd9d9; border-radius: 5px;"><br><br>
	</form>
	<p><a href="../php/connexion.php">Retour à la page de connexion</a></p>
    </div>
    <?php
        include_once("footer.php");
    ?>
</body>
</html>