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

    $sql = "SELECT * FROM Compte WHERE login='".$_GET["e"]."'";
    $result = $conn->query($sql);

    if($result != false && $result->num_rows > 0) {

    while($row = $result->fetch_assoc()) { 
        echo "existe";
    }

    }

    else{
        echo "non";
    }

?>