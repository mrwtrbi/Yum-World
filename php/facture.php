<!DOCTYPE html>
<html lang="fr">
<?php
    include_once("head.php");

?>
<body>
    <?php
        include_once("header.php");
    ?>

    <div class="facture">
      <img id="header-banniere-logo" src="../img/Logo.png" alt="Logo" class="logo">
        <h1>Facture</h1>
        <div class="details">
            <div class="entreprise">
                <h2>Yum World</h2>
                <p>Avenue du parc</p>
                <p>95800, Cergy</p>
            </div>
            
        </div>
        <table>
            <thead>
                <tr>
                    <th>Produit</th>
                    <th>Quantité</th>
                    <th>Prix unitaire</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>

                <?php 
                    $total=0;
                    
                    $sql = "SELECT * FROM Commande Co, Commande_item Ci WHERE Co.id=Ci.idCommande AND Co.idUser='".$_SESSION["idUser"]."'";
                    $result = $conn->query($sql);
            
                    if($result->num_rows > 0) {
            
                        while($row = $result->fetch_assoc()) { 
                            $sql2="SELECT * FROM Plat WHERE id='".$row["idPlat"]."'";

                            $result2 = $conn->query($sql2);
                
                            if($result2->num_rows > 0) {
                                
                                while($row2 = $result2->fetch_assoc()) {
                                    $ntm=floatval($row["quantite"])*floatval($row2["prix"]);
                                    echo "<tr>
                                        <td>".$row2["nom"]."</td>
                                        <td>".$row["quantite"]."</td>
                                        <td>".$row2["prix"]."</td>
                                        <td>".$ntm."</td>
                                        </tr>
                                    ";

                                    $total += $ntm;
                                }
                            }
                            else{
                                echo "NOT WORKING SEARCH DATA PER PLATE";
                            } 
                        }
                    
                    }


                    $sql = "DELETE FROM Commande_item WHERE idCommande='".$_SESSION["idPanier"]."'";
                    $result = $conn->query($sql);

                    if ($result === TRUE) {
                        //echo "\nNew record created successfully";
                    
                    } 
                    
                    else {
                        echo "Error: " . $sql . "<br>" . $conn->error;
                    }



                ?>

                
                
            </tbody>
            <tfoot>
                <tr><td colspan="3">Livraison :</td>
                    <td>12 €</td>
                </tr>
                <tr>
                    <td colspan="3">TOTAL : </td>
                    <td><?php 
                    $total += 12;
                    echo $total; ?> €</td>
                </tr>
            </tfoot>
        </table>
    </div>
    <?php
        include_once("footer.php");
    ?>
</body>
</html>