<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");
	?>
    <head>
        <title>Plats</title>
    </head>

<body>
    <?php
        include_once("header.php");
    ?>
    <div class="liste_produits">

        <?php
             $sql = "SELECT * FROM Plat WHERE continent='".$_GET["c"]."' AND stock > 0";
             $result = $conn->query($sql);

               
             if($result->num_rows > 0) {
      
                while($row = $result->fetch_assoc()) { 

                    if(is_dir($row["photos"])){
                        $tab_img=scandir($row["photos"]);
                    }

                 

                    echo "<div class='produit'>
                        <a  href='plat.php?id=".$row["id"]."'>
                        <p class='titre'>".$row["nom"]."</p>
                        <br>
                        <p class='titre'><i>".$row["pays"]."</i></p>
                                    
                        <div class='p1'>	
                            <img class='photo_plat' src='".$row["photos"]."/".$tab_img[2]."'  onclick=''>
                        </div>
                                    
                        <div class='texte-dessous'>
                     
                            <p class='para'>".$row["prix"]." €<br/>
                        </div>
                        </a>
                    </div>";
                }
             } 
     
             else {
                echo "0 résultat!";
             }
        ?>
        


    </div>
    <?php
        include_once("footer.php");
        $conn->close();
    ?>

</body>