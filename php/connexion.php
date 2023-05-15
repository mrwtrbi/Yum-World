<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");

        if(isset($_POST["co_but"])){
            $username = $_POST["username"];
            $password = $_POST["password"];



            $sql = "SELECT * FROM Compte WHERE login='".$username."'";
            $result = $conn->query($sql);

            if($result->num_rows > 0) {
    
                while($row = $result->fetch_assoc()) { 
                    if($row["mdp"]==$password){
                        $_SESSION["connexion"]=1;
                        $_SESSION["idUser"]=$row["id"];
                        header("Location: moncompte.php");
                    }
                    else{
                        echo "Mot de passer erroné";
                    }
                }
            }

            else{
                echo "ID inexistant";
            }



        }
	?>
<head>
	<title>Connexion</title>
    
</head>
<body id="corps">
    
    <?php
        include_once("header.php");
    ?> 
    <script src="../js/connexion.js"></script>
    <div id=forme>
	<h1>Connexion</h1><br><br>
	<form method="POST" id="connexion-form">
		<label>Nom d'utilisateur ou adresse e-mail:</label><br>
        
		<input type="text" id="username" name="username" ><br><br>
		<label>Mot de passe:</label><br>
        <div>
		<input type="password" id="password" name="password">
        
        <i class="fas fa-eye toggle-password" id= "oeil1"></i><br><br>
        </div>
		<input id="bout-connex" type="submit" name='co_but' value="Connexion"><br><br>
        
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
