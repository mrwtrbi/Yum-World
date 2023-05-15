<!DOCTYPE html>
<html>
    <?php
		include_once("head.php");

        if(isset($_SESSION["connexion"])){
            if($_SESSION["connexion"]==0){
                header('Location :index.php');
            }
        }

        else{
            header('Location :index.php');
        }


        if(isset($_POST["deco_but"])){
            $_SESSION["connexion"]=0;
            $_SESSION["idPanier"]=0;
            header("Location: index.php");
        }
        
	?>
<head>
	<title>Mon compte</title>
   
</head>
<body>
    
    <?php
        include_once("header.php");


        $sql = "SELECT * FROM Compte WHERE id='".$_SESSION["idUser"]."'";
        $result = $conn->query($sql);

        if($result->num_rows > 0) {

            while($row = $result->fetch_assoc()) { 
                echo "<div id='mc_infos'>
                    <p id='mc_Nom'>".$row["nom"]."</p>
                    <p id='mc_Prenom'>".$row["prenom"]."</p><br>
                    <p id='mc_Mail'>".$row["login"]."</p>
                </div>";
            }
        }

        else{
            echo "Echec de la bdd ";
        }


        $sql = "SELECT * FROM Commande WHERE idUser='".$_SESSION["idUser"]."'";
        $result = $conn->query($sql);

        if($result->num_rows > 0) {

            while($row = $result->fetch_assoc()) { 
                $_SESSION["idPanier"]=$row["id"];
            }
        }

    ?>
    
    <form method="POST">
        <input type='submit' style="background-color: #5284B3;" id='deco_but' name='deco_but' value='Deconnexion'>
    </form>
    <?php
        include_once("footer.php");
    ?>
    
</body>
</html>
