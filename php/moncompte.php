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

        
	?>
<head>
	<title>Mon compte</title>
   
</head>
<body>
    
    <?php
        include_once("header.php");
    ?>
    
   
    <div id='mc_infos'>
        <p id='mc_Nom'>Dartagnan </p>
        <p id='mc_Prenom'>Didier</p><br>
        <p id='mc_Mail'>super@gmail.com</p>
        
    </div>

    <?php
        include_once("footer.php");
    ?>
    
</body>
</html>
