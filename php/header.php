<header>
	<div class="header-banniere">
		<img id="header-banniere-logo" src="../img/Logo.png" alt="Logo">
		<h2 id="header-banniere-titre">Yum World</h2>
		<a href="panier.php" class="header-banniere-images"><i class="fas fa-cart-shopping"></i> Panier</a>
		<?php 
			if(isset($_SESSION["connexion"])){
				if($_SESSION["connexion"]==1){
					echo "<a href='moncompte.php' class='header-banniere-images'><i class='fa-solid fa-user'></i> Mon Compte</a>";
				}

				else{
					echo "<a href='connexion.php' class='header-banniere-images'><i class='fa-solid fa-user'></i> Connexion</a>";
				}
			}
		
		?>
		
	</div>
		
	<div class="header-menu">
		<ul>	
			<li id="accueil"> <a href="index.php"><i class="fas fa-house"></i> Accueil</a></li>
		
			<li id="afrique"><a href="plats.php?c=Afrique"><i class="fa-solid fa-earth-africa"></i> Afrique</a></li>
			<li id="amerique"><a href="plats.php?c=Amerique"><i class="fa-solid fa-earth-americas"></i> Amérique</a></li>
			<li id="asie"><a href="plats.php?c=Asie"><i class="fa-solid fa-earth-asia"></i> Asie</a></li>
			<li id="europe"><a href="plats.php?c=Europe"><i class="fa-solid fa-earth-europe"></i> Europe</a></li>
			<li id="oceanie"><a href="plats.php?c=Oceanie"><i class="fa-solid fa-earth-oceania"></i> Océanie</a></li>
			
			<li id="contact"><a href="formulaire.php"><i class="fa-solid fa-envelope"></i> Contact</a></li>
			
		</ul>
	</div>
</header>
