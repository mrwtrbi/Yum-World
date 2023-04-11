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
    <div class="produits">
        <a class='produit' href="#">
            <p class='titre'>Recette géniale</p>
                        
            <div class='p1'>	
                <img id="photo" src=../img/Logo style='width : 200px' onclick=".">
            </div>
                        
            <div class='texte-dessous'>
                <p class='para'>Description description</p>
                <p class='para'>12€<br/>
            </div>
        </a>

        <a class='produit' href="#">
            <p class='titre'>Super plat</p>
                        
            <div class='p1'>	
                <img id="photo" src=../img/Logo style='width : 200px' onclick=".">
            </div>
                        
            <div class='texte-dessous'>
                <p class='para'>Description description</p>
                <p class='para'>15€<br/>
                <p>- 0 +</p>
            </div>
        </a>

        <a class='produit' href="#">
            <p class='titre'>Super plat</p>
                        
            <div class='p1'>	
                <img id="photo" src=../img/Logo style='width : 200px' onclick=".">
            </div>
                        
            <div class='texte-dessous'>
                <p class='para'>Description description</p>
                <p class='para'>21€<br/>
            </div>
            <div class="add">
                <i class="fa-solid fa-plus"></i><p> 0 </p><i class="fa-solid fa-minus"></i>
            </div>
        </a>
    </div>
    <?php
        include_once("footer.php");
    ?>

</body>