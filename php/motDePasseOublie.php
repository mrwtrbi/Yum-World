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
    <div id=form>
	<h1>Mot de passe oublié</h1>
	<p>Entrez votre adresse e-mail et nous vous enverrons un lien pour réinitialiser votre mot de passe.</p>
	<form>
		<label>Adresse e-mail:</label><br>
		<input type="email" id="email" name="email" placeholder="Adresse e-mail"><br><br>
		<input type="submit" value="Envoyer">
	</form>
	<p><a href="../php/connexion.php">Retour à la page de connexion</a></p>
    </div>
    <?php
        include_once("footer.php");
    ?>
</body>
</html>