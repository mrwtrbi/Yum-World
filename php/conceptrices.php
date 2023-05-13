<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");
	?>
    <head>
        <title>Nos plats</title>
    </head>

<body>
    <?php
        include_once("header.php");
    ?>
    
    <div class="conceptrices">
        <div class="image-conceptrices">
            <img src="../img/Conceptrices.png" alt="Conceptrices">
        </div>

        <div class="text-conceptrices">
            <br><br><br><br><br><br><br><br><br><br><br>
            <p>Ce site web a été créé par trois étudiantes en première année de cycle ingénieur en Mathématiques
                 appliquées dans l'école CY Tech.</p>
                 <br>
                 <br>

            <ul>
                <li>Eléonore, s'est occupée de l'architecture du site et de sa forme.</li><br>
                <li>Destinée, s'est occupée du formulaire de connexion, de l'émission de la facture et du panier.</li><br>
                <li>Marwa, s'est occupée de la base de données et du contenu des pages du site.</li><br>
            </ul>
            <br><br><br>

            <div class="logo-cy-tech">
            <img src="../img/Logo-CY-Tech.png" alt="CY-Tech">
            <br><br><br>
            </div>            
        </div>
    </div>       

    <?php
        include_once("footer.php");
        $conn->close();
    ?>

</body>
