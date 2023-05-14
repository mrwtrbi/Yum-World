<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");

        if(isset($_POST["ajout_pan"])&&isset($_GET["id"])){
            $qty=$_POST["qtt_plat"];
            $exist=1;

            if($qty > 0){
                //On regarde si le plat qu'il ajoute est déjà dans son panier
                $sql = "SELECT * FROM Commande_item Ci, Commande Co WHERE Ci.idCommande=Co.id AND Co.idUser='".$_SESSION["idUser"]."' AND Ci.idPlat='".$_GET["id"]."'";

                $result = $conn->query($sql);
   
                if($result->num_rows > 0) {
                    
                    //Si oui, on retient l'id panier (unique à chaque utilisateur)
                   while($row = $result->fetch_assoc()) { 
                        echo "deja ajouté";
                        $num_panier=$row["idCommande"];
                   }
                }
                else{
                    $exist=0;
                }   

                    //Si le plat n'est pas déja dans son panier, on crée la ligne dans commande_item 
                if($exist==0){
                    $sql = "INSERT INTO Commande_item(idCommande,idPlat, quantite) VALUES ('".$_SESSION["idPanier"]."','".$_GET["id"]."', ".$qty.")";
                    $result = $conn->query($sql);

                    if ($result === TRUE) {
                        echo "\nNew record created successfully";
                    
                    } 
                    
                    else {
                        echo "Error: " . $sql . "<br>" . $conn->error;
                    }

                    

                }
                //Sinon on met à jour la quantité
                else{
                    $sql = "UPDATE Commande_item SET quantite=quantite+$qty WHERE idPlat='".$_GET["id"]."' AND idCommande='".$num_panier."'";

                    $result = $conn->query($sql);

                    if ($result === TRUE) {
                        echo "\nNew quantite updated successfully";
                    
                    } 
                    
                    else {
                        echo "Error: " . $sql . "<br>" . $conn->error;
                    }
                }

                // On met à jour la quantité du plat ajouté au panier
                $sql = "UPDATE Plat SET stock=stock-".$qty." WHERE id='".$_GET["id"]."'";
                $result = $conn->query($sql);

                if ($result === TRUE) {
                    echo "\nNew record created successfully";
                
                } 
                
                else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                }

                header("Location: panier.php");

                
            }
            else{
                echo "Veuillez ajouter au moins une unité";
            }
        }
	?>
    <head>
        <title>Votre sélection</title>
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
                        <div class='recette-gauche'>
                            <p>Ingrédients :</p><br>
                            <p>".$row["ingredients"]."</p>
                            <p>Préparation :</p><br>
                            <p>".$row["recette"]."</p>
                        </div>
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
            
                        <h2 id='titre'>".$row["nom"]."</h2>
                        <input id='bouton-recette' type='button' value='Voir les étapes de préparation' onclick='recette()'> 
                        <form method='POST'>
                            <div id='commander'>
                                <div id='quantite'>
                                    <input class='bouton-pm' type='button' value='-' onclick='quantite(1)'> 
                                    <input id='qtt_plat' name='qtt_plat' readonly='readonly' type='text' value='0'>
                                    <input class='bouton-pm' type='button' value='+' onclick='quantite(2)'> 
                                
                                </div>
                                <p id='prix'>".$row["prix"]." €</p>
                                <input id='bouton-panier' type='submit' name='ajout_pan' value='Ajouter au panier'>
                            </div>
                        </div>

                        <p style='text-align:left;'>Stock : <span id='REALSTOCK'> ".$row["stock"]."</span></p>
        
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