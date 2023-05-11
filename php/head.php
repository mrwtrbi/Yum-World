<?php
    session_start();
    $servername = "localhost";
    $username = "root";
    $password = "cytech0001";
    $dbname = "YUM";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    if(isset($_SESSION["connexion"])&&($_SESSION["connexion"]==1)){
        echo $_SESSION["idUser"];
    }

    else{
        $_SESSION["connexion"]=0;
    }

   
    
?>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="formulaire.css"/> 
    <link rel="shortcut icon" href="../img/logo-icone.png" type="image/x-icon">
    <link rel="stylesheet" href="../css/style.css">	
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/connexion.css">
    <link rel="stylesheet" href="../css/moncompte.css">
    <link rel="stylesheet" href="../css/formulaire.css">
    <link rel="stylesheet" href="../css/plats.css">
    <link rel="stylesheet" href="../css/plat.css">
    <link rel="stylesheet" href="../css/panier.css">
    <link rel="stylesheet" href="../css/connexion.css">
    <link rel="stylesheet" href="../css/inscription.css">
    <link rel="stylesheet" href="../css/motDePasseOublie.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster Two">
    <script src="../js/connexion.js"></script>
    <script src="../js/formulaire.js"></script>
    <script src="../js/inscription.js"></script>
    <script src="../js/recette.js"></script>
    
</head>