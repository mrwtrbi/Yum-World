<!DOCTYPE html>
<html>
<?php
include_once("head.php");

function generate_id()
{
	$aid = '';
	$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	$randomString = '';

	for ($a = 0; $a < 5; $a++) {
		$index = rand(0, strlen($characters) - 1);
		$randomString .= $characters[$index];
	}

	$aid = "'USER-" . time() . $randomString . "'";

	return $aid;
}

if (isset($_POST["submit_but"])) {
	$tab_info = array();

	$tab_info["id"] = generate_id();
	$tab_info["login"] = "'" . $_POST["email"] . "'";
	$tab_info["nom"] = "'" . $_POST["lastname"] . "'";
	$tab_info["prenom"] = "'" . $_POST["firstname"] . "'";
	$tab_info["mdp"] = "'" . $_POST["password"] . "'";

	$infos = implode(",", $tab_info);

	$sql = "INSERT INTO Compte VALUES (" . $infos . ")";
	$result = $conn->query($sql);

	if ($result === TRUE) {
		echo "New record created successfully";
		$_SESSION["idUser"] = substr($tab_info["id"], 1, -1);
		$_SESSION["connexion"] = 1;
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$sql = "INSERT INTO Commande(idUser) VALUES('" . $_SESSION["idUser"] . "')";
	$result = $conn->query($sql);

	if ($result === TRUE) {
		echo "\nNew record created successfully 2 ";
		header('Location: moncompte.php');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
?>

<head>
	<title>Inscription</title>
</head>

<body>
	<?php
	include_once("header.php");
	?>
	<script src="../js/inscription.js"></script>
	<div id='form2'>
		<h1>Créer un compte</h1><br><br>
		<form method="POST" onsubmit="return valider_inscription()">
			<label>Prénom:</label><br>
			<input type="text" id="firstname" name="firstname" placeholder="Entrez votre Prenom" required><br><br>
			<label>Nom:</label><br>
			<input type="text" id="lastname" name="lastname" placeholder="Entrez votre Nom"><br><br>
			<label>Adresse e-mail:</label><br>
			<input type="email" id="email" name="email" placeholder="Entrez votre Adresse e-mail"><br><br>
			<div>
				<label>Mot de passe:</label><br>
				<input type="password" id="password" name="password">
				<i class="fas fa-eye toggle-password" id="oeil1"></i><br><br>
			</div>

			<script>
				const togglePassword = document.querySelector('#oeil1');
				const passwordField = document.querySelector('#password');

				togglePassword.addEventListener('click', function() {
					const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
					passwordField.setAttribute('type', type);
					this.classList.toggle('fa-eye-slash');
				});
			</script>


			<input type="submit" name="submit_but" value="Validation">
		</form>
	</div>
	<?php
	include_once("footer.php");
	?>
</body>

</html>