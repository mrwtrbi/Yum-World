<!DOCTYPE html>
<html lang="en">
    <?php
		include_once("head.php");

        function generate_id(){
            $aid='';
            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $randomString = '';
        
            for ($a = 0; $a < 5; $a++) {
                $index = rand(0, strlen($characters) - 1);
                $randomString .= $characters[$index];
            }
    
            $aid="'PLAT-".time().$randomString."'";
    
            return $aid;
        
        }


        if(isset($_POST["aj_sub"])){

            
            $tab_info=array();
            $tab_info["id"]=generate_id();
    
            $tab_info["continent"]="\"".$_POST["aj_conti"]."\"";
            $tab_info["nom"]="\"".$_POST["aj_nom"]."\"";
            $tab_info["pays"]="\"".$_POST["aj_pays"]."\"";
            $tab_info["ingredients"]="\"".str_replace("\n", "<br>", $_POST["aj_ingredients"])."\"";
            $tab_info["nb_pers"]=intval($_POST["aj_nbper"]);
            $tab_info["recette"]="\"".str_replace("\n", "<br>", $_POST["aj_recette"])."\"";
            $tab_info["description"]="\"".str_replace("\n", "<br>", $_POST["aj_description"])."\"";
            $tab_info["prix"]=intval($_POST["aj_prix"]);
            $tab_info["stock"]=intval($_POST["aj_stock"]);
            
      

            $nom_dossier="../img/db_images/".substr($tab_info["id"], 1,-1);
            mkdir($nom_dossier);

            $tab_info["photo"]="'".$nom_dossier."'";
            

            //bouger les photos
            if(isset($_FILES["aj_photo"])){
            
                $file=$nom_dossier."/".$_FILES["aj_photo"]["name"];
                if (move_uploaded_file($_FILES['aj_photo']['tmp_name'], $file)) {
                    echo "File is valid, and was successfully uploaded.\n";
                } 
                else {
                    echo "Possible file upload attack!\n";
                }
    
            
              //  echo 'Here is some more debugging info:';
                print_r($_FILES);
                echo "<br>";
            }
            else{
                echo "images FILES not working";
            }

            $tab_info["video"]="'".$_POST["aj_video"]."'";

            $infos=implode(",", $tab_info);

            $sql = "INSERT INTO Plat VALUES (".$infos.")";
            $result = $conn->query($sql);

            if ($result === TRUE) {
                //echo "New record created successfully";
                
                header('Location: plats.php?c='.$_POST["aj_conti"]);
            } 
            
            else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
         
            }


	?>
    <head>
        <title>ADMIN</title>
    </head>

    <body>
        <?php
            include_once("header.php");
        ?>
        <br>
        <h1 style='text-align:center;'>Ajout d'un plat</h1>
        <form enctype="multipart/form-data" action="ajouterplat.php" method='POST' id='ajouterplat_form'>
            <p>Continent : </p><br>
            <select name='aj_conti' id='aj_conti' >
                <option value='Afrique'>Afrique</option>
                <option value='Amérique'>Amérique</option>
                <option value='Asie'>Asie</option>
                <option value='Europe'>Europe</option>
                <option value='Océanie'>Océanie</option>
            </select>

            <br><br>

            <p>Nom du plat : </p>
            <br>
            <input id='aj_nom' name='aj_nom' type='text'>

            <br><br>
            <p>Pays : </p>
            <br>
            <input id='aj_pays' name='aj_pays' type='text'>

            <br><br>
            <p>Ingrédients : </p>
            <br>
            <textarea id='aj_ingredients' name='aj_ingredients' class='area_long'>
            </textarea>

            <br><br>
            <p>Nombre de personnes : </p>
            <br>
            <input id='aj_nbper' name='aj_nbper' type='text'>

            <br><br>
            <p>Recette :</p>
            <br>
            <textarea id='aj_recette' name='aj_recette'- class='area_long'>
            </textarea>

            <br><br>
            <p>Description :</p>
            <br>
            <textarea id='aj_description' name='aj_description' class='area_long'>
            </textarea>

            <br><br>
            <p>Prix :</p>
            <br>
            <input id='aj_prix' name='aj_prix' type='text'>

            <br><br>
            <p>Stock :</p>
            <br>
            <input id='aj_stock' name='aj_stock' type='text'>

            <br><br>
            <p>Lien vidéo (changer le lien dans src) :</p>
            <br>
            <input id='aj_video' name='aj_video' type='text' value='<iframe class="video_recette" src="https://www.youtube.com/embed/yyr5PnCPA58" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'>

            <br><br>
            <p>Photo :</p>
            <br>
            <input type="hidden" name="MAX_FILE_SIZE" value="7000000"/>
            <input id='aj_photo' name='aj_photo' type='file'>

            <br><br>
            <input id='aj_sub' name='aj_sub' type='submit'>
            <br>
           
        </form>

        <?php
        include_once("footer.php");
        $conn->close();
    ?>
    </body>

    
</html>