<!DOCTYPE html>
<html lang="fr">
    <?php
		include_once("head.php");
	?>
<head>
    <!--<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/fature.css">-->
    <title>Facture</title>
</head>
<body>
    <div class="facture">
      <img id="header-banniere-logo" src="../img/Logo.png" alt="Logo" class="logo">
        <h1 id="titre-facture">Facture</h1>
        <div class="details">
            <div class="entreprise">
                <h2 class="fac-titre">Yum World</h2>
                <p>Avenue du parc</p>
                <p>95800, Cergy</p>
            </div>
            <div class="client">
                <h2 class="fac-titre">Nom du client</h2>
                <p>Adresse</p>
                <p>Code postal, Ville</p>
            </div>
        </div>
        <table>
            <thead>
                <tr>
                    <th class="liste">Produit</th>
                    <th class="liste">Quantité</th>
                    <th class="liste">Prix unitaire</th>
                    <th class="liste">Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="liste">Produit 1</td>
                    <td class="liste">2</td>
                    <td class="liste">100 €</td>
                    <td class="liste">200 €</td>
                </tr>
                <tr>
                    <td class="liste">Produit 2</td>
                    <td class="liste">1</td>
                    <td class="liste">50 €</td>
                    <td class="liste">50 €</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td class="liste" colspan="3">Total</td>
                    <td class="liste">250 €</td>
                </tr>
            </tfoot>
        </table>
    </div>
    <?php
        include_once("footer.php");
    ?>
</body>
</html>