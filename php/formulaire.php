<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");
	?>
    <head>
        <title>Nous contacter</title>
        <script src="../js/formulaire.js"></script>

    </head>

<body>

    <?php
        include_once("header.php");
    ?>
    <div id=form>
        <h2><i class="fas fa-address-book"></i>        Demande de contact</h1>
        <br><br>
        <form onsubmit="return validerFormulaire()">
            <fieldset>
                <div id="champs">
                    <legend>Informations personnelles</legend>
                    <br><br>
                    <label><i class="fas fa-user"></i> Nom :* </br></br><input type="text" name="nom" placeholder=" Nom" required></label></br></br>
                    <label><i class="fas fa-user"></i> Prénom :* </br></br><input type="text" name="prenom" placeholder=" Prénom" required></label></br></br>
                    <label><i class="fas fa-envelope"></i> Email :* </br></br><input type="email" name="email" placeholder=" Email" required></label></br></br>
                    <label><i class="fa-solid fa-phone-flip"></i> Tel. :* </br></br><input type="tel" name="tel" placeholder=" Numéro de téléphone" required></label></br></br>
                    <label><i class="fa-solid fa-briefcase"></i> Fonction :</br></br></label>
                    <select>
                        <option value="Enseignant"> Enseignant</option>
                        <option value="Elève"> Elève</option>
                        <option value="Pilote"> Pilote</option>
                        <option value="Vendeur"> Vendeur</option>
                        <option value="Aucun"> Aucun</option>
                    </select></br></br>
                    <label><i class="fa-solid fa-venus-mars"></i> Sexe:</label>
                    <input type="radio" name="sexe" value="Femme"><label> Femme</label>
                    <input type="radio" name="sexe" value="Homme"><label> Homme</label></br></br>
                    <label><i class="fa-solid fa-globe-africa"></i> Pays :* </br></br><input type="text" name="pays" placeholder=" Pays" required></label></br></br>
                    <div>
                        <label><i class="fa-solid fa-message"></i> Commentaires :</br></label>
                        <textarea class="text" name="commentaires" placeholder=" Tapez ici vos commentaires"></textarea></br></br>
                    </div>
                    <i class="fa-solid fa-paper-plane"></i> <input id="button" type="submit" value="Envoyer">
                </div>
            </fieldset>
        </form>
    </div>

    <?php
        include_once("footer.php");
    ?>
</body>
</html>
