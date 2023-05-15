<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");

        if(!isset($_SESSION["connexion"]) || $_SESSION["connexion"]==0){
            header("Location: connexion.php");
        }

      if(isset($_POST["com_but"])&&$_SESSION["nb_article"] > 0){
        header("Location: facture.php");
      }
	?>
    <head>
        <title>Panier</title>
    </head>


<body>
<?php
	include_once("header.php");
?>

<div id="panier">
    <div id="panier-gauche">

        <?php
        
            $sql="SELECT * FROM Commande_item Ci, Commande Co WHERE Ci.idCommande=Co.id AND Co.idUser='".$_SESSION["idUser"]."'";
            $total=0;
            $nb_article=0;
            $result = $conn->query($sql);
   
            if($result->num_rows > 0) {
               while($row = $result->fetch_assoc()) { 
                    $nb_article++;

                    $sql="SELECT * FROM Plat WHERE id='".$row["idPlat"]."'";

                    $result2 = $conn->query($sql);
        
                    if($result2->num_rows > 0) {
                        
                        while($row2 = $result2->fetch_assoc()) {
                            
                            $tab_img=scandir($row2["photos"]);

                            echo "<div class='articles-panier'>
                                <a href='plat.php?id=".$row["idPlat"]."'>
                                    <img src='".$row2["photos"]."/".$tab_img[2]."' style='width : 7em'></a>
                                <p class='nom-produit'>".$row2["nom"]."</p>
                                <p class='pu'>PU : ".$row2["prix"]."€</p>
                        
                                <input class='quant' readonly='readonly' type='text' value='".$row["quantite"]."'>
                                <input class='boutonspm' type='submit' value='X'>  
                            </div>";

                            $total += floatval($row["quantite"])*floatval($row2["prix"]);
                        }
                    }
                    else{
                        echo "NOT WORKING SEARCH DATA PER PLATE";
                    } 
               }


            }
            else{
                echo "Votre panier est vide :(";
            } 
            
            $_SESSION["nb_article"]=$nb_article;
        
            /*
            <div class="articles-panier">
                <img src=../img/couscous style='width : 7em' onclick=".">
                <p class="nom-produit">Super plat 1</p>
                <p class="pu">PU : 18€</p>
                <input class="boutonspm" type="button" value="-"> 
                <input class="quant" type="text">
                <input class="boutonspm" type="button" value="+">  
            </div>
            <div class="articles-panier">
                <img src=../img/couscous style='width : 7em' onclick=".">
                <p class="nom-produit">Super plat 2</p>
                <p class="pu">PU : 18€</p>
                <input class="boutonspm" type="button" value="-"> 
                <input class="quant" type="text">
                <input class="boutonspm" type="button" value="+">  
            </div>*/

        ?>
        
    </div>

    <div id="panier-droite">
        <br><br>
        <p>Livraison : 12€</p>
        <br><br>
        <p><?php $total+=12;
        echo "Total : ".$total;
        
        ?></p>
        <br><br><br><br><br><br><br>
        <form method='POST'>
            <input id="bouton-achat" type="submit" name='com_but' value="Commander"> 
        </form>
    </div>
</div>



<?php
    include('footer.php')
?>
</body>

</html>