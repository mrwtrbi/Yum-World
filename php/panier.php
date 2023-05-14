<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");
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
        </div>
        <p id="total1">Total : 26€</p>  
    </div>

    <div id="panier-droite">
        <br><br>
        <p>Livraison : 2.50€</p>
        <br><br>
        <p>Total : 20.50€</p>
        <br><br><br><br><br><br><br>
        <input id="bouton-achat" type="button" value="Commander" onClick="../php/.href='facture.php'"> 
    </div>
</div>



<?php
    include('footer.php')
?>
</body>

</html>