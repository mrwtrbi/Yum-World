<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/fature.css">
    <title>Facture</title>
</head>
<body>
    <div class="facture">
      <img id="header-banniere-logo" src="../img/Logo.png" alt="Logo" class="logo">
        <h1>Facture</h1>
        <div class="details">
            <div class="entreprise">
                <h2>Yum World</h2>
                <p>Avenue du parc</p>
                <p>95800, Cergy</p>
            </div>
            <div class="client">
                <h2>Nom du client</h2>
                <p>Adresse</p>
                <p>Code postal, Ville</p>
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
                <tr>
                    <td>Produit 1</td>
                    <td>2</td>
                    <td>100 €</td>
                    <td>200 €</td>
                </tr>
                <tr>
                    <td>Produit 2</td>
                    <td>1</td>
                    <td>50 €</td>
                    <td>50 €</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3">Total</td>
                    <td>250 €</td>
                </tr>
            </tfoot>
        </table>
    </div>
</body>
</html>
