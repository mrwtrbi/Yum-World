<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");
	?>
    <head>
        <title>Votre plat</title>
        <script src="../js/recette.js"></script>
    </head>

<body>
    <?php
        $sql = "SELECT * FROM Plat WHERE id='".$_GET["id"]."'";
        $result = $conn->query($sql);

          
        if($result->num_rows > 0) {
 
           while($row = $result->fetch_assoc()) { 
                echo "
                <div id='recette'>
                    <div id='recette-droite'>
                            <i class='fa fa-times' aria-hidden='true' onclick='recette()' id='close_but'></i>
                            
                        </div>
                    <div id='recette-contenu'>
                        <p id='recette-gauche'>".$row["recette"]."</p>
                        
                    </div>
                </div>
                ";
               
                
           }
        } 

        else {
           echo "0 résultat pour ce plat";
        }
    ?>

    

    <?php
        include_once("header.php");
    ?>

    <?php 
        $sql = "SELECT * FROM Plat WHERE id='".$_GET["id"]."'";
        $result = $conn->query($sql);

          
        if($result->num_rows > 0) {
 
           while($row = $result->fetch_assoc()) { 

                if(is_dir($row["photos"])){
                    $tab_img=scandir($row["photos"]);
                }

                echo"
                <div id='page-produit'>

                    <div id='plat-gauche'>
                    <img id='photo' src='".$row["photos"]."/".$tab_img[2]."'  onclick='.'>
                    </div>
            
                    <div id='plat-droite'>
            
                        <p id='titre'>".$row["nom"]."</p>
                     
                        <input id='bouton-recette' type='button' value='Voir les étapes de préparation' onclick='recette()'> 
                        <div id='commander'>
                            <div id='quantite'>
                                <input class='bouton-pm' type='button' value='-' onclick='quantite()'> 
                                <input id='qtt' type='text'>
                                <input class='bouton-pm' type='button' value='+' onclick='quantite()'> 
                            </div>
                            <p id='prix'>".$row["prix"]." €</p>
                            <input id='bouton-panier' type='button' value='Ajouter au panier'>
                        </div>
        
                    </div>
                </div>

                <div id='description'>
                    <div id='desc_left'>
                        <h2>Description du plat</h2> 
                        <p>".$row["description"]." </p>
                    </div>
                    <div id='desc_left'>
                        <h2>Vidéo explicative</h2>
                        ".$row["lien_video"]."
                        </div>
                </div>
                
                ";
           }
        } 

        else {
           echo "0 résultat pour ce plat";
        }
    ?>
    
    

    <?php
        include_once("footer.php");
    ?>
</body>