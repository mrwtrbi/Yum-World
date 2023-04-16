<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");
	?>
    <head>
        <title>Votre plat</title>
        <script src="../JS/recette.js"></script>
    </head>

<body>

    <div id="recette">
        <div id="recette-contenu">
            <p id="recette-gauche">Recette de couscous<br>Ingrédients : semoule<br>Préparation : cuire la semoule</p>
            <div id="recette-droite">
                <input id="bouton-fermer" type="button" value="Fermer" onclick="recette()">
            </div>
        </div>
    </div>

    <?php
        include_once("header.php");
    ?>

    
    <div id="page-produit">

        <div id="gauche">
        <img id="photo" src="../img/couscous"  onclick=".">
        </div>

        <div id="droite">

            <p id="titre">Couscous apétissant</p>
            <p id="description">Voici notre super couscous apétissant, qui épatera vos convives. A déguster sans modération !</p>
            <input id="bouton-recette" type="button" value="Voir les étapes de préparation" onclick="recette()"> 

            <div id="commander">
                <div id="quantite"><i class="fa-solid fa-minus"></i> 1 <i class="fa-solid fa-plus"></i></div>
                <p id="prix">19,99€</p>
                <input id="bouton-panier" type="button" value="Ajouter au panier">
            </div>

        </div>
    </div>
    

    <?php
        include_once("footer.php");
    ?>
</body>