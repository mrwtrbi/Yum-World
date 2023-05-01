<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");
	?>
<head>
	<title>Page de profil</title>
</head>
<body>
	<h1>Profil</h1>
	<form>
		<label for="address">Adresse:</label><br>
		<input type="text" id="address" name="address"><br>
		<label for="phone">Numéro de téléphone:</label><br>
		<input type="text" id="phone" name="phone"><br>
		<label for="birthdate">Date de naissance:</label><br>
		<input type="date" id="birthdate" name="birthdate"><br><br>
		<input type="submit" value="Enregistrer">
	</form>
</body>
</html>
