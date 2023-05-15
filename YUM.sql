DROP DATABASE IF EXISTS YUM;
CREATE DATABASE YUM;
USE YUM;

CREATE TABLE Compte(
	id VARCHAR(50) PRIMARY KEY,
    login VARCHAR(50),
	nom VARCHAR(20),
    prenom VARCHAR(20),
    mdp VARCHAR(20)
);

CREATE TABLE Plat(
	id VARCHAR(50) PRIMARY KEY,
    continent VARCHAR(20),
    nom VARCHAR(20),
    pays VARCHAR(40),
    ingredients TEXT,
    nombre_personne INT,
    recette TEXT,
    description TEXT,
    prix DECIMAL(6,2),
    stock INT,
    photos text,
    lien_video text
); 



CREATE TABLE Commande(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idUser VARCHAR(50),
    FOREIGN KEY fk_iduser(idUser) REFERENCES Compte(id)
);

CREATE TABLE Commande_item(
	id INT PRIMARY KEY AUTO_INCREMENT,
	idCommande INT,
	idPlat VARCHAR(50),
    quantite INT,
    FOREIGN KEY fk_idcom(idCommande) REFERENCES Commande(id),
    FOREIGN KEY fk_idplat(idPlat) REFERENCES Plat(id)
);

ALTER TABLE Commande_item AUTO_INCREMENT=2;
ALTER TABLE Commande AUTO_INCREMENT=2;

INSERT INTO Plat VALUES (
'PLAT-1682851778oryuR',
'Afrique',
'Tajine',
'Maroc',
"4 cuisses de poulet\n
1 oignon\n
2 carottes\n
2 tomates\n
3 courgettes\n
1 càs d'huile d'olive\n
1 verre d'eau\n
3 pommes de terre\n
Épices pour tajine\n",
4,
"1) Faire revenir les oignons avec l'huile d'olive et les épices dans le tajine (une marmite peut faire l'affaire)\n
2) Ajouter le poulet et remuer\n
3) Couper les légumes en lamelles et les ajouter dans le tajine\n
4) Ajouter un verre d'eau, couvrez le tajine et laissez mijoter pendant 1 heure\n
5) Servir avec du pain",
"Le tajine est un plat traditionnel de la cuisine marocaine, également apprécié dans d'autres pays d'Afrique du Nord et du Moyen-Orient. Il est préparé dans un plat en terre cuite éponyme, appelé tajine, qui permet une cuisson lente et uniforme. Le tajine est généralement composé de viande ou de poulet, de légumes, d'épices et d'herbes aromatiques, le tout mijoté dans une sauce savoureuse et parfumée. Les ingrédients sont cuits à feu doux, permettant aux saveurs de se mélanger et de se développer lentement, offrant ainsi un goût délicieusement complexe. Le tajine est un plat réconfortant et chaleureux, souvent servi avec du pain traditionnel pour absorber la sauce.",
12.5,
120,
'../img/db_images/PLAT-1682851778oryuR',
"<iframe class='video_recette' src='https://www.youtube.com/embed/yyr5PnCPA58' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' allowfullscreen></iframe>"
);

INSERT INTO Plat VALUES (
'PLAT-1682851891b2Fj6',
'Afrique',
'Couscous',
'Maghreb',
"4 cuisses de poulet\n
2 oignons\n
4 carottes\n
4 tomates\n
4 courgettes\n
1 càs d'huile d'olive\n
3 navets\n
Semoule\n
Épices pour couscous",
4,
"1) Faire revenir les oignons avec l'huile d'olive et les épices pour couscous dans la marmite\n
2) Ajouter le poulet\n
3) Couper les légumes en lamelles et en morceaux (pour les navets uniquement) et les ajouter les carottes, les tomates et les navets\n
4) Laisser cuire pendant 1 heure\n
5) Hacher le persil et ajouter à la marmite\n
6) Ajouter les courgettes et laisser cuire 25 minutes\n
7) Cuire la semoule\n
8) Déposer la semoule dans un plat et y ajouter la sauce, les légumes et les cuisses de poulet par dessus",
"Le couscous est un plat traditionnel de la cuisine nord-africaine qui est apprécié dans le monde entier. Il est composé de semoule de blé cuite à la vapeur, accompagnée d'une sauce épicée et savoureuse, ainsi que de légumes tels que des carottes, des pois chiches et des courgettes. Les viandes et les fruits de mer peuvent également être ajoutés, offrant une grande variété de choix pour satisfaire tous les goûts. Le couscous est un plat coloré, chaud et réconfortant, souvent servi en grandes portions pour les repas en famille ou entre amis.",
13,
100,
'../img/db_images/PLAT-1682851891b2Fj6',
'<iframe  class="video_recette" src="https://www.youtube.com/embed/PYEU6Ri_HB4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

INSERT INTO Plat VALUES (
'PLAT-16828519788aRW8',
'Afrique',
'Mafé',
'Afrique Subsaharienne',
"1 poulet\n
4 càs de pâte d'arachide\n
1 L d'eau\n
50 g de concentré de tomate\n
2 gousses d'ail\n
Huile d'arachide\n
Riz\n
Épices pour le mafé",
6,
"1) Faire revenir les oignons avec l'huile d'arachide, et les épices pour le mafé dans la marmite\n
2) Ajouter le poulet et laisser cuire\n
3) Une fois le poulet cuit, réserver le poulet\n
4) Ajouter la tomate concentrée, les gousses d'ail hachées et de l'eau\n
5) Laisser cuire 25 minutes\n
6) Ajouter la pâte d'arachide\n
7) Ajouter le poulet à la sauce et laisser cuire pendant 30 minutes\n
8) Servir la sauce avec du riz",
"Le mafé est un plat traditionnel sénégalais et malien, qui est également populaire dans d'autres pays d'Afrique de l'Ouest. C'est un plat consistant et épicé, qui combine du riz, de la viande (généralement du poulet ou du bœuf), des légumes (comme des carottes, des pommes de terre et des oignons) et une sauce aux arachides (beurre de cacahuète), qui est l'ingrédient clé du plat. La sauce est préparée avec des tomates, de l'ail, des épices (comme le piment, le cumin et la coriandre), et bien sûr, du beurre de cacahuète, qui apporte une texture crémeuse et une saveur délicieusement riche au plat. Le mafé est souvent accompagné de pain ou de galettes de millet pour absorber la sauce. C'est un plat réconfortant et chaleureux, qui offre une explosion de saveurs exotiques et de textures satisfaisantes.",
13,
104,
'../img/db_images/PLAT-16828519788aRW8',
'<iframe class="video_recette" src="https://www.youtube.com/embed/fSDN1dNngf0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

INSERT INTO Plat VALUES (
'PLAT-1682852037WYOL7',
'Afrique',
'Thieb',
'Afrique Subsaharienne',
"1 kg de poulet\n
4 carottes\n
1 L d'eau\n
1 demi chou blanc\n
1 tomate\n
2 oignons\n
2 gousses d'ail\n
Riz\n
Épices pour le thieb",
8,
"1) Faire revenir les oignons avec l'huile d'arachide, et les épices pour le thieb dans la marmite\n
2) Ajouter le poulet et un verre d'eau et laisser cuire pendant 20 minutes\n
3) Couper les légumes en morceaux\n
4) Ajouter la tomate concentrée, les gousses d'ail hachées, les légumes et 1 L d'eau bouillante\n
5) Laisser cuire\n
6) Ajouter le riz dans la marmite et laisser cuire\n
7) Une fois le riz cuit, mélanger et servir",
"Le thieb (ou thieboudienne) est un plat traditionnel sénégalais qui signifie littéralement riz au poisson. C'est un plat savoureux et copieux qui combine du riz parfumé, du poisson frais (souvent du poisson-chat), des légumes (tels que des carottes, des choux, des aubergines) et des épices (comme le poivre de Cayenne, le gingembre, le thym et le clou de girofle). Le tout est mijoté ensemble dans une sauce tomate épicée, qui imprègne le riz et les légumes avec une saveur délicieuse et pleine de caractère. Le thieb est souvent servi dans un grand plat familial, accompagné de salade et de piment pour donner un peu de piquant. C'est un plat emblématique de la cuisine sénégalaise, apprécié pour son goût riche et sa texture réconfortante.",
14,
70,
'../img/db_images/PLAT-1682852037WYOL7',
'<iframe class="video_recette" src="https://www.youtube.com/embed/JuJ2irD_A9s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'

);

INSERT INTO Plat VALUES (
'PLAT-1682852067KvV1U',
'Afrique',
'Bissap',
'Sénégal',
"2,5 L d'eau\n
100 g de sucre\n
2 sachets de sucre vanillé\n
2 càs de fleur d'oranger\n
2 tasses de fleur d'hibiscus séchées\n
1 pincée de noix de muscade",
6,
"1) Rincer les fleurs d'hibiscus\n
2) Mettre les 2,5 L dans une marmite puis y ajouter les fleurs\n
3) Faire bouillir l'eau et attendre que l'eau se colore\n
4) Laisser refroidir l'infusion puis ajouter les sucres, la muscade et la càs de fleur d'oranger\n
5) Mettre au frigidaire et servir le bissap frais",
"Le Bissap est une boisson traditionnelle d'Afrique de l'Ouest, préparée à partir de fleurs d'hibiscus séchées. Aussi appelé jus de bissap, il est très populaire dans les pays comme le Sénégal, le Mali, la Côte d'Ivoire et le Ghana. La boisson est préparée en faisant bouillir les fleurs d'hibiscus séchées dans de l'eau, avec du sucre et parfois des épices comme de la cannelle ou de la vanille. La boisson est ensuite filtrée et servie froide, avec de la glace et parfois des tranches de citron pour donner une touche de fraîcheur et d'acidité. Le Bissap a une couleur rouge foncé, une saveur acidulée et légèrement sucrée, et est riche en vitamine C et en antioxydants naturels. C'est une boisson rafraîchissante et saine, parfaite pour se désaltérer pendant les chaudes journées d'été.",
1.5,
69,
'../img/db_images/PLAT-1682852067KvV1U',
'<iframe class="video_recette" src="https://www.youtube.com/embed/nbyqMC8ajh4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'

);

INSERT INTO Plat VALUES (
'PLAT-1682852104JZNBx',
'Afrique',
'Mbongo Tchobi',
'Gabon',
"1,5 kg de poisson (poisson-chat)\n
2 aubergines\n
2 oignons\n
6 gousses d'ail\n
2 càs de concentré de tomate\n
1 càs de pâte d'arachide\n
2 càs d'huile rouge\n
A càs de sel et de poivre",
8,
"1) Éplucher et hacher les oignons et les gousses d'ail. Couper les aubergines en gros cubes et réserver\n
2) Dans une grande casserole, chauffer l'huile rouge à feu moyen et ajouter les oignons et l'ail hachés et faire revenir\n
3) Ajouter le concentré de tomate, la pâte d'arachide, le sel et le poivre. Remuer pour mélanger tous les ingrédients\n
4) Versez de l'eau dans la casserole pour recouvrir le mélange et porter à ébullition puis laisser mijoter pendant 10 à 15 minutes\n
5) Ajouter les cubes d'aubergines dans la casserole puis remettre à mijoter pendant 10 minutes\n
6) Ajouter le poisson entier dans la casserole et couvrir la casserole et laisser mijoter à feu moyen pendant 20 minutes\n
7) Servir chaud avec du riz blanc et/ou du plantain.",
"Le Mbongo Tchobi est un plat traditionnel gabonais savoureux et épicé qui ravit les papilles des amateurs de cuisine africaine. Ce plat se compose de poisson ou de viande, généralement du bœuf ou du porc, mijoté dans une sauce épaisse à base de pâte d'arachide, de tomates et d'oignons. Les arômes de gingembre, de piment et de coriandre ajoutent une touche épicée et parfumée. Le Mbongo Tchobi est généralement accompagné de plantains ou de manioc bouilli. Ce plat est un incontournable pour découvrir la gastronomie gabonaise et plaira à tous ceux qui recherchent de nouvelles saveurs exotiques.",
14,
157,
'../img/db_images/PLAT-1682852104JZNBx',
'<iframe class="video_recette" src="https://www.youtube.com/embed/hDAgeVCnPVg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'

);

INSERT INTO Plat VALUES (
'PLAT-1682852198w1gGa',
'Asie',
'Raviolis',
'Chine',
"1 oignon\n
1 pincée de sel et de poivre\n
Coriandre\n
100 g de crevettes\n
200 g de viande rouge de votre choix\n
20 feuillets de raviolis\n
Huile de sésame",
2,
"1) Hacher l'oignon la coriandre, les crevettes et la viande rouge\n
2) Mélanger les ingrédients hachés avec le sel, le poivre et l'huile de sésame\n
3) Mettre une càc de farce dans chaque feuillet de raviolis et les fermer\n
4) Cuire à la vapeur pendant 15 minutes",
"Les raviolis chinois, également appelés jiaozi en mandarin, sont un plat traditionnel de la cuisine chinoise, qui remonte à plus de 1800 ans. Ces petites bouchées sont souvent servis avec une sauce soja ou une sauce aux arachides.
Les raviolis chinois sont non seulement délicieux, mais sont également un aliment symbolique dans la culture chinoise, souvent associés aux célébrations du Nouvel An chinois, où les familles se réunissent pour les préparer et les manger ensemble.",
8,
49,
'../img/db_images/PLAT-1682852198w1gGa',
'<iframe class="video_recette" src="https://www.youtube.com/embed/MEBdzCm93bw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-16832012583TyaR',
'Asie',
'Sushi',
'Japon',
"Riz à sushi\n
Thon\n
2 avocats\n
Feuilles d'algues séchés\n
Vinaigre de riz\n
Huile de sésame",
4,
"1) Cuire le riz puis ajouter une pincée de sel, une càc de vinaigre de riz et d'huile de sésame\n
2) Poser une feuille d'algue et y étaler du riz puis ajouter une ligne de thon et d'avocat découpé\n
3) Rouler la feuille d'algue et répéter les étapes\n
4) Servir avec de la sauce soja",
"Les sushis sont des petits rouleaux de riz vinaigré, garnis de différentes sortes de poisson cru, de fruits de mer, d'œufs ou de légumes. Originaires du Japon, les sushi sont considérés comme une forme d'art culinaire en raison de leur élaboration minutieuse et de la qualité de leurs ingrédients. Traditionnellement, le poisson utilisé pour les sushi est frais et de haute qualité, et est souvent préparé à la perfection en tranches fines ou en cubes.",
15.5,
100,
'../img/db_images/PLAT-16832012583TyaR',
'<iframe class="video_recette" src="https://www.youtube.com/embed/BUYbPK_yPlQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-1683360773YeiKJ',
'Asie',
'Tteokbokki',
'Corée',
"500 g de Tteok\n
Pâte et poudre de piment rouge (Gochujang)\n
Sauce soja\n
1 càs de sucre\n
2 oeufs",
4,
"1) Rincez les Tteok et les déposer dans une poêle remplie d'eau\n
2) Ajouter 1 càs de poudre de piment rouge, de Gochujang, de sucre et de sauce soja\n
3) Laisser mijoter 10 minutes\n
4) Servir avec les 2 oeufs durs",
"Les Tteokbokki sont un plat traditionnel coréen composé de bâtonnets de riz gluant, appelés ""tteok"", cuits dans une sauce épicée à base de pâte de piment, de sucre et de sauce soja. Les Tteokbokki sont souvent servis avec des légumes tels que des carottes, des oignons et des choux, ainsi que des œufs durs ou du poisson.Ce plat coréen est très populaire et peut être trouvé dans de nombreux restaurants de rue en Corée du Sud, où il est généralement servi dans des petits pots en métal. Les Tteokbokki sont appréciés pour leur goût épicé et leur texture moelleuse et chewy des bâtonnets de riz, ainsi que pour leur convivialité et leur aspect réconfortant.",
13,
26,
'../img/db_images/PLAT-1683360773YeiKJ',
'<iframe class="video_recette" src="https://www.youtube.com/embed/aGKMwZS6zCM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-1683360978PnDDO',
'Asie',
'Butter Chicken',
'Inde',
"2 blancs de poulet\n
1 oignon\n
1 tomate\n
1 demi gingembre\n
2 gousses d'ail\n
1 càs de beurre\n
20 cl de crème liquide\n
1 demi citron vert\n
Épices pour le Butter Chicken\n
Riz",
2,
"1) Couper et faire revenir les oignons et les tomates\n
2) Mixer les oignons et les tomates, avec le gingembre et les gousses d'ail\n
3) Déposer la mixure dans la poêle et ajouter les épices pour le Butter Chicken\n
4) Ajouter une càs de beurre et laisser mijoter 10 minutes\n
5) Faire mariner le poulet dans les épices pour le Butter Chicken\n
6) Cuire le poulet au four\n
7) Ajouter le poulet et la crème liquide à la sauce\n
8) Laisser mijoter 5 minutes\n
9) Servir avec du riz et un zeste de citron vert",
"Le Butter Chicken est un plat de poulet épicé et crémeux originaire du nord de l'Inde. Le poulet est mariné dans une sauce épicée avant d'être cuit dans une sauce à base de tomates, de beurre et de crème. Les épices couramment utilisées incluent le garam masala, le curcuma, le cumin, la coriandre, l'ail et le gingembre. La sauce est souvent légèrement sucrée pour équilibrer la chaleur des épices. Le Butter Chicken est généralement servi avec du riz basmati et du pain naan pour absorber la sauce délicieuse. C'est un plat très apprécié pour sa saveur riche et crémeuse, ainsi que pour sa texture lisse et onctueuse.",
12.5,
60,
'../img/db_images/PLAT-1683360978PnDDO',
'<iframe class="video_recette" src="https://www.youtube.com/embed/crU6euw7bOs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');


INSERT INTO Plat VALUES(
"PLAT-16833611168SCt9",
'Asie',
'Bubble Tea',
'Taïwan',
"1 verre d'eau\n
1 sachet de thé noir\n
1 quart de verre de perles de tapioca\n
3 càs de sucre roux\n
Lait",
1,
"1) Dans une casserole, faire infuser le thé noir jusqu'à ébulition puis retirer\n
2) Faire bouillir de l'eau puis ajouter les perles de tapioca et laisser cuire 20 minutes\n
3) Égouter les perles de tapioca\n
4) Verser le sucre roux dans la casserole avec un peu d'eau chaude et mélanger\n
5) Laisser les perles de tapioca dans le sucre roux pendant 30 minutes\n
6) Dans un verre, mettre les perles de tapioca, le thé et le lait\n
7) Mélanger puis servir",
"Le Bubble Tea est une boisson taïwanaise à base de thé, de lait et de perles de tapioca. Les perles de tapioca sont de petites billes noires et moelleuses, qui ajoutent une texture amusante à la boisson. Le thé est généralement infusé avec du lait, du sirop de fruits et/ou des arômes, et servi frais. La boisson est traditionnellement servie avec une grande paille pour permettre de boire les perles de tapioca en même temps. Le Bubble Tea est un choix populaire pour les amateurs de thé et ceux qui recherchent une boisson rafraîchissante avec une touche de texture et de saveur supplémentaires.",
6,
160,
'../img/db_images/PLAT-16833611168SCt9',
'<iframe class="video_recette" src="https://www.youtube.com/embed/nD2k199_HBM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');


INSERT INTO Plat VALUES(
'PLAT-1683361311Fa2Xm',
'Amérique',
'Hamburger',
'Etats-Unis',
"2 pains pour hamburger\n
1 tomate\n
Quelques feuilles de salade\n
1 steak haché\n
1 tranche de cheddar\n
Ketchup",
2,
"1) Découper la tomate en rondelle et laisser égouter\n
2) Cuire le steak haché sur une poêle, une fois un côté cuit, retourner et déposer la tranche de cheddar\n
3) Découper le pain au milieu et mettre du ketchup à l'intérieur\n
4) Déposer le steak et le cheddar dans le pain puis ajouter une feuille de salade et quelques tranches de tomates\n
5) Fermer le pain et griller l'hamburger à votre convenance\n
6) Servir",
"Le Hamburger est un plat américain emblématique qui consiste en un pain rond, grillé et moelleux garni d'un steak haché, de la laitue, des tomates, du fromage et d'une variété de sauces et d'assaisonnements. Le steak haché est souvent grillé ou frit à la poêle pour lui donner une texture croustillante à l'extérieur et juteuse à l'intérieur. Le pain à hamburger peut également être garni de bacon, d'oignons caramélisés, de cornichons ou d'autres garnitures en fonction des préférences personnelles. Le Hamburger est généralement servi avec des frites et une boisson gazeuse. C'est un choix populaire pour ceux qui cherchent une nourriture rapide et délicieuse à déguster à l'extérieur ou lors de rassemblements sociaux.",
7.5,
150,
'../img/db_images/PLAT-1683361311Fa2Xm',
"<iframe class='video_recette' src='https://www.youtube.com/embed/yeMdYuJmLYg' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' allowfullscreen></iframe>");

INSERT INTO Plat VALUES(
'PLAT-1683362063W6Goo',
'Amérique',
'Chili con Carne',
'Etats-Unis',
"1 oignon\n
400 g d'harictos rouges\n
400 g de tomates pelées en boîte\n
1 gousse d'ail\n
Huile d'olive\n
1 pincée de sel et de poivre\n
3 càc de chili\n
400 g de viande hachée",
3,
"1) Hacher l'oignon et l'ail puis les mettre dans une cocote avec de l'huile de l'olive puis cuire\n
2) Ajouter la viande hachée et les épices pius remuer\n
3) Ajouter les haricots et les tomates pelées puis remuer\n
4) Laisser cuire 30 minutes puis servir",
"Le Chili con Carne est un plat tex-mex classique à base de viande hachée, de haricots rouges, de tomates, d'oignons et d'épices. Le nom du plat signifie littéralement ""chili avec de la viande"" en espagnol. Les épices couramment utilisées incluent le cumin, le chili en poudre, le paprika et l'origan. Le Chili con Carne est souvent servi avec du riz, du pain ou des tortillas, ainsi que des garnitures telles que du fromage râpé, de la crème sure et des oignons verts. C'est un plat savoureux et réconfortant, souvent préparé pour des occasions décontractées comme des barbecues ou des soirées à la maison.",
9,
55,
'../img/db_images/PLAT-1683362063W6Goo',
'<iframe class="video_recette" src="https://www.youtube.com/embed/wPWpmEIM37U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');


INSERT INTO Plat VALUES(
'PLAT-1683362299gwawi',
'Amérique',
'Rocoto Relleno',
'Pérou',
"8 gros piments rocoto (ou piments rouges forts)\n
500 g de viande hachée\n
2 oignons\n
2 gousses d'ail\n
1 tasse de pain rassis\n
1 demi tasse de lait\n
1 demi tasse de cacahuètes grillées et moulues\n
1 demi tasse de raisins secs\n
1 demi tasse d'olives noires dénoyautées\n
1 tasse de fromage râpé\n
1 oeuf\n
Épices pour le Rocoto Relleno",
4,
"1) Préchauffer le four à 180°C (thermostat 5)\n
2) Tremper le pain dans le lait jusqu'à ce qu'il soit complètement imbibé\n
3) Chauffer de l'huile dans une poêle à feu moyen, ajouter l'oignon et l'ail et ajouter la viande hachée\n
4) Ajouter le pain trempé, les cacahuètes, les raisins secs, les olives, les épices et mélanger\n
5) Retirer les tiges et les graines des piments rocoto\n
6) Remplir les piments avec la préparation de viande et les placer dans un plat allant au four\n
7) Battre l'œuf dans un bol et le verser sur les piments farcis puis saupoudrer le fromage râpé sur le dessus et mettre au four pendant 30 minutes\n
8) Servir",
"Le Rocoto Relleno est un plat typique du Pérou, qui consiste en des piments forts farcis avec un mélange de viande hachée, de pain trempé dans du lait, de cacahuètes, de raisins secs, d'olives noires et d'épices. Le tout est gratiné avec du fromage râpé et cuit au four. Ce plat est souvent accompagné de pommes de terre ou de riz, et peut être dégusté dans les restaurants péruviens ou préparé à la maison pour une expérience culinaire authentique. Le mélange de saveurs salées et sucrées du Rocoto Relleno est une véritable explosion en bouche, et sa touche épicée en fait un plat parfait pour les amateurs de sensations fortes.",
17,
97,
'../img/db_images/PLAT-1683362299gwawi',
'<iframe class="video_recette" src="https://www.youtube.com/embed/8y1JLwb71Ew" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');


INSERT INTO Plat VALUES(
'PLAT-1683362624ZJu6e',
'Amérique',
'Tacos',
'Mexique',
"1 oignon\n
2 tomates\n
1 poivron\n
1 boîte d'haricot rouge\n
10 cl de coulis de tomate\n
Quelques feuilles de laitue\n
Tortillas\n
Épices pour Tacos\n
Huile d'olive\n
400 g de viande hachée",
4,
"1) Dans une poêle, faire dorer les oignons dans de l'huile d'olive\n
2) Découper les tomates et le poivron en dés puis ajouter dans la poêle avec les épices pour Tacos\n
3) Ajouter la ciande hachée et laisser cuire 10 minutes\n
4) Ajouter le coulis de tomate et laisser cuire 20 minutes\n
5) Ajouter les haricots rouges et cuire 5 min\n
6) Garnir les tortillas avec la farce et la salade puis servir",
"Le Tacos mexicain est un plat traditionnel de la cuisine mexicaine. Il se compose d'une tortilla de maïs ou de farine remplie de viande (bœuf, porc, poulet), de légumes, de fromage râpé, de laitue et de sauces variées (salsa, guacamole, crème sure, pico de gallo). Les tortillas sont généralement légèrement grillées pour leur donner une texture croustillante et pour faire ressortir leur saveur. Les Tacos sont souvent accompagnés de riz, de haricots ou de maïs grillé. C'est un plat populaire et facile à préparer pour les soirées entre amis ou en famille. Les Tacos peuvent également être dégustés dans des stands de rue, dans des restaurants mexicains ou lors de fêtes.",
9.5,
200,
'../img/db_images/PLAT-1683362624ZJu6e',
'<iframe class="video_recette" src="https://www.youtube.com/embed/tXfauii1tIU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');


INSERT INTO Plat VALUES(
'PLAT-1683362826NGDnK',
'Amérique',
'Jalapeños',
'Mexique',
"120 g de farine\n
1 oeuf\n
Lait\n
12 longs piments vers\n
1 boîte de fromage frais (type Vache qui rit)\n
1 pincée de sel et de poivre\n
Chapelure",
4,
"1) Dans un bol mélanger la farine, l'oeuf et le lait pour réaliser une pâte à beignet puis laisser reposer 2 heures\n
2) Enlever les pépins des piments verts sans les casser\n
3) Mélanger le fromage frais avec le sel et le poivre puis remplir les piments\n
4) Tremper les piments dans la pâte à beignet et la chapelure puis frire et égouter\n
5) Servir",
"Les Jalapeños sont des piments verts originaires du Mexique. Ils sont souvent utilisés dans la cuisine mexicaine et tex-mex pour ajouter une touche de piquant et de saveur à de nombreux plats. Les Jalapeños ont une texture croquante et une saveur légèrement épicée et fumée. Ils peuvent être consommés crus ou cuits, et sont souvent farcis avec du fromage ou de la viande avant d'être grillés ou frits. Les Jalapeños peuvent également être hachés et utilisés comme ingrédient pour les sauces et les marinades. Les Jalapeños peuvent être trouvés frais, marinés ou en conserve dans les épiceries et les magasins d'alimentation spécialisés.",
8,
35,
'../img/db_images/PLAT-1683362826NGDnK',
'<iframe class="video_recette" src="https://www.youtube.com/embed/1ONxQVDfMKs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-1683196886vTx9F',
'Europe',
'Fish & Chips',
'Royaune-Uni',
"2 filet de colin\n
1 pâte à friture anglaise\n
300 g de frites\n
Huile\n
1 pincée de sel\n
3 quartiers de citron",
2,
"1) Plonger les filets de colin dans la pâte à friture anglaise\n
2) Frire les frites puis les filets de colin\n
3) Servir les frites avec un quartier de citron et une pincée de sel",
"Le fish & chips est un plat traditionnel de la cuisine anglaise. Il se compose de poisson blanc pané (souvent de la morue) et de frites épaisses et croustillantes. Le poisson est généralement trempé dans une pâte à base de farine, de bière et d'épices, puis frit dans de l'huile chaude. Les frites sont également frites dans l'huile chaude jusqu'à ce qu'elles soient croustillantes. Le fish & chips est souvent servi avec du vinaigre de malt et du sel, ainsi qu'avec de la purée de pois, de la sauce tartare et/ou du ketchup. C'est un plat simple et réconfortant qui est souvent consommé dans des pubs, des restaurants ou des stands de rue.",
11.5,
240,
'../img/db_images/PLAT-1683196886vTx9F',
"<iframe class='video_recette' src='https://www.youtube.com/embed/jbjITn20oLo' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' allowfullscreen></iframe>");

INSERT INTO Plat VALUES(
'PLAT-1683363170WSjuW',
'Europe',
'La raclette',
'Suisse',
"500 g de pommes de terre\n
Charcuteries\n
Fromage à raclette\n
Appareil à raclette",
4,
"1) Cuire les pommes de terre
2) Servir les pommes de terre avec la charcuterie et le fromage à faire fondre grâce à la machine à raclette",
"La raclette est un plat suisse qui est également très populaire en France. Il consiste en un fromage à pâte semi-dure, généralement de l'Appenzeller, du Comté ou du Gruyère, qui est fondu et gratiné puis gratiné et servi avec des pommes de terre, de la charcuterie, des cornichons et des oignons. La raclette est souvent préparée à table, où le fromage est fondu dans des poêlons spéciaux et servi avec les accompagnements. C'est un plat réconfortant et convivial, parfait pour les soirées d'hiver ou les dîners entre amis et en famille.",
18,
20,
'../img/db_images/PLAT-1683363170WSjuW',
'<iframe class="video_recette" src="https://www.youtube.com/embed/2FaL2nB3OAY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-1683363303qNd4L',
'Europe',
'Paëlla',
'Espagne',
"1 poivron\n
1 oignon\n
3 tomates\n
3 càs d'huile d'olive\n
250 g de riz\n
1 gousse d'ail\n
1 demi kg de blanc de poulet\n
250 g de calamar\n
6 crevettes\n
Épices pour la paëlla",
4,
"1) Découper les légumes, le poulet et les fruits de mer en morceaux\n
2) Mettre l'huile dans une poêle et faire dorer les légumes et le poulet puis ajouter les fruits de mer\n
3) Laisser cuire 5 min puis ajouter le riz et de l'eau de manière à recouvrir le contenu de la poêle\n
4) Ajouter les fruits de mer et laisser cuire 40 minutes puis servir",
"La paëlla est un plat traditionnel espagnol originaire de la région de Valence. Il s'agit d'un plat de riz cuit dans une poêle avec du poulet, du lapin, des fruits de mer, des légumes (comme des poivrons et des tomates), du safran et d'autres épices. La paëlla est souvent cuite en plein air sur un feu de bois et est servie directement dans la poêle. C'est un plat convivial et généreux qui est souvent partagé en famille ou entre amis. La paëlla est un symbole de la cuisine espagnole et est appréciée dans le monde entier pour sa saveur et sa variété.",
12.5,
50,
'../img/db_images/PLAT-1683363303qNd4L',
'<iframe class="video_recette" src="https://www.youtube.com/embed/jM7v9JdH5v0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
"PLAT-1683363404wSYja",
'Europe',
'Pizza de la Mama',
'Italie',
"1 pâte à pizza\n
200 ml coulis de tomates\n
2 boules de Mozzarella\n
5 tomates cerises\n
Quelques feuilles de Basilic",
2,
"1) Pétrir et étaler la pâte à pizza pour former un rond\n
2) Étaler le coulis de tomates sur la pâte et ajouter les boules de Mozzarella et les tomates cerises découpées\n
3) Cuire la pizza pendant 25 minutes au four à 180°C\n
4) Ajouter quelques feuilles de Basilic et servir",
"La pizza est un plat originaire d'Italie, composé d'une pâte à base de farine, d'eau, de levure et de sel, recouverte de sauce tomate et de fromage, ainsi que d'autres ingrédients tels que des légumes, des viandes et des herbes. La pizza est cuite dans un four à haute température, ce qui lui confère une croûte croustillante et une garniture fondante. La pizza est un plat très populaire dans le monde entier et est souvent considérée comme un plat rapide et facile à préparer. Elle peut être dégustée en famille ou entre amis, ou même en solo pour une soirée détente. La pizza italienne est une véritable institution culinaire, qui se décline en de nombreuses variantes selon les régions et les goûts de chacun.",
8,
140,
'../img/db_images/PLAT-1683363404wSYja',
'<iframe class="video_recette" src="https://www.youtube.com/embed/7bYSNpvcaiQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
"PLAT-1683363732xCfzl",
'Europe',
'Moussaka',
'Grèce',
"1 aubergine\n
2 tomates\n
1 oignon\n
3 pommes de terre\n
Lait\n
1 gousse d'ail\n
450 g de viande hachée\n
Huile d'olive\n
Épices pour la moussaka",
4,
"1) Couper les aubergines en tranches\n
2) Sur une poêle, faire revenir les oignons avec l'ail dans de l'huile d'olive puis ajouter la viande hachée\n
3) Éplucher et découper les tomates et les ajouter dans la poêle avec les épices pour la moussaka\n
4) Préchauffer le four à 180°C (thermostat 5)\n
5) Dorer les tranches d'aubergine puis les disposer dans un plat en alternant avec la viande cuite\n
6) Enfourner le plat pendant 20 minutes puis servir",
"La moussaka est un plat d'origine grecque à base d'aubergines, de viande hachée (généralement de l'agneau ou du boeuf), de tomates, d'oignons et d'épices. La viande est cuite avec les légumes et est recouverte de béchamel et de fromage râpé, puis gratinée au four. La moussaka est souvent servie chaude, directement du plat de cuisson, accompagnée de pain et d'une salade fraîche. C'est un plat riche et copieux, parfait pour les repas en famille ou entre amis. La moussaka est l'un des plats les plus connus de la cuisine grecque et est appréciée dans le monde entier pour son goût délicieux et sa texture fondante.",
14,
36,
'../img/db_images/PLAT-1683363732xCfzl',
'<iframe class="video_recette" src="https://www.youtube.com/embed/OFPv54q8yIU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
"PLAT-16833639674k6Ws",
'Océanie',
'Poke',
'Hawaii',
"450 g de thon frais coupé en dés\n
1 quart de tasse de sauce soja\n
1 càs d'huile de sésame\n
1 càs de miel\n
2 oignons verts\n
1/4 tasse d'oignons rouges hachés\n
1 avocat\n
2 càs de graines de sésame grillées\n
2 tasses de riz cuit\n
1 càs de vinaigre de riz",
4,
"1) Dans un grand bol, mélanger la sauce soja, l'huile de sésame, le miel et le vinaigre de riz\n
2) Ajouter le thon dans le bol et mélanger pour bien l'enrober de la sauce\n
3) Ajouter les oignons verts et les oignons rouges hachés et mélanger à nouveau\n
4) Couvrir le bol et laisser mariner au réfrigérateur pendant au moins 30 minutes\n
5) Au moment de servir, ajouter les dés d'avocat et mélanger délicatement\n
6) Servir le poke sur un lit de riz cuit et parsemer de graines de sésame grillées",
"Le Poke est un plat d'origine hawaiienne qui est rapidement devenu populaire dans le monde entier. Ce plat frais et savoureux se compose de dés de thon marinés dans une délicieuse sauce soja, d'oignons verts, d'oignons rouges et d'avocat, le tout servi sur un lit de riz. Les graines de sésame grillées ajoutent une touche de croquant à ce plat déjà plein de saveurs. Le Poke est un plat simple et facile à préparer qui peut être apprécié comme entrée ou comme plat principal. Avec sa combinaison de saveurs fraîches et salées, le Poke est un plat parfait pour les jours chauds d'été ou pour toute occasion où l'on recherche une cuisine légère et saine.",
16,
40,
'../img/db_images/PLAT-16833639674k6Ws',
'<iframe class="video_recette" src="https://www.youtube.com/embed/ez4zQr6CSnY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
"PLAT-1683364149gsp3h",
'Océanie',
'Whitebait',
'Nouvelle-Zélande',
"500 g d'anchois bleus\n
115 g de farine\n
1 càs de sel\n
Huile à frire\n
2 citrons",
4,
"1) Mélanger le sel et la farine\n
2) Roulez les anchois dans le mélange et déposer dans l'huile à frire chaude\n
3) Couper les citrons et servir",
"Le whitebait est un plat à base de petits poissons, généralement des alevins de poissons de mer ou de rivière, qui sont frits dans de l'huile et servis avec une tranche de citron. Ce plat est très populaire dans les pays anglo-saxons, en particulier en Nouvelle-Zélande, où il est considéré comme un met traditionnel. Les poissons sont généralement entiers, sans têtes ni viscères, et sont consommés tels quels, en les trempant dans de la sauce tartare ou de la mayonnaise. Le whitebait est souvent servi comme une entrée ou un plat d'accompagnement, et est apprécié pour sa texture croquante et son goût délicat.",
13.5,
15,
'../img/db_images/PLAT-1683364149gsp3h',
'<iframe class="video_recette" src="https://www.youtube.com/embed/TQZSEAP4VhQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-1683364254bPs6I',
'Océanie',
'Meat-Pie',
'Australie',
"2 pâtes brisées\n
400 g de viande hachée\n
1 oignon\n
Coulis de tomate\n
Sauce Worcestershire\n
Farine\n
Beurre\n
1 pincée de sel et de poivre",
4,
"1) Dans une poêle, faire revenir l'oignon découpé, les pincées de sel et de poivre avec la viande hachée\n
2) Une fois la viande brunie, ajouter la farine et remuer\n
3) Ajouter la sauce Worcestershire et le coulis de tomate puis laisser mijoter\n
4) Mettre la pâte brisée dans un plat et y verser la farce\n
5) Avec la deuxième pâte, réaliser un cercle pour couvrir la farce\n
6) Dorer la pâte avec un peu de lait et enfourner pendant 25 minutes à 180°C (thermostat 5) puis servir",
"La Meat-Pie est une délicieuse tarte australienne remplie de viande hachée, de sauce et d'épices, cuite dans une croûte dorée et croustillante. Cette tourte est un plat emblématique de la cuisine australienne et peut être trouvée dans de nombreux endroits, des boulangeries locales aux restaurants haut de gamme. La garniture de viande peut varier selon les régions et les préférences personnelles, mais elle est souvent accompagnée de ketchup ou de sauce Worcestershire. La Meat pie est le choix parfait pour un repas rapide et réconfortant, que ce soit pour une collation ou un déjeuner sur le pouce. Sa croûte dorée et croustillante, combinée à sa garniture savoureuse et épicée, en fait un plat de choix pour les amateurs de tartes salées.",
16,
20,
'../img/db_images/PLAT-1683364254bPs6I',
'<iframe class="video_recette" src="https://www.youtube.com/embed/EL1-uMt2oD8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
"PLAT-1683364480ccC88",
'Océanie',
'Poulet Fafa',
'Polynésie',
"6 blancs de poulet\n
1 kg d'épinards\n
2 oignons\n
1 gousse d'ail\n
20 g de gingembre\n
25 cl de lait de coco\n
2 cuillères à soupe d'arachide\n
Épices pour le poulet Fafa",
6,
"1) Retirer les nervures des épinards, laver puis égouter\n
2) Mettre les épinards dans une marmite et cuire à feu moyen pendant 10 minutes\n
3) Éplucher les oignons et les découper puis hacher l'ail et le gingembre\n
4) Ajouter un peu d'huile, les oignons, l'ail, le gingembre, le poulet et les épices et cuire à feu vif pendant 10 minutes\n
5) Ajouter le lait de coco et cuire 5 minutes à feu doux\n
6) Servir",
"Le poulet Fafa est un plat traditionnel samoan composé de poulet cuit dans un mélange crémeux de lait de coco et d'épinards frais. Les feuilles d'épinards sont hachées finement et mélangées avec de la noix de coco râpée, de l'oignon et d'autres épices avant d'être ajoutées au poulet. Le tout est ensuite cuit lentement pour permettre aux saveurs de se mélanger et pour que le poulet devienne tendre et juteux. Le poulet fafa est souvent servi avec du riz ou du taro, un tubercule tropical riche en glucides et en fibres. C'est un plat savoureux et réconfortant qui est apprécié pour sa saveur douce et crémeuse ainsi que pour sa texture tendre et moelleuse.",
15,
45,
'../img/db_images/PLAT-1683364480ccC88',
'<iframe class="video_recette" src="https://www.youtube.com/embed/bBLjEli3Ykc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');

INSERT INTO Plat VALUES(
'PLAT-16833646510Cts0',
'Océanie',
'Kokoda',
'Îles Fidji',
"500 g de poisson blanc (thon ou espadon)\n
1 demi tasse de jus de citron vert\n
1 demi tasse de lait de coco\n
1 demi oignon rouge\n
1 demi poivron rouge\n
1 demi concombre coupé en dés\n
1 tomate\n
1 piment vert\n
1 pincée de sel et de poivre noir\n
Quelques feuilles de coriandre",
3,
"1) Couper le poisson en petits cubes et placez-le dans un bol\n
2) Ajouter le jus de citron vert et mélanger bien et laisser mariner pendant 30 minutes\n
3) Égoutter le poisson et ajouter le lait de coco\n
4) Ajouter l'oignon rouge, le poivron rouge, le concombre, la tomate et le piment vert puis mélanger\n
5) Ajouter du sel et du poivre noir\n
6) Couvrir le bol et laisser mariner au réfrigérateur pendant 1 à 2 heures\n
7) Garnir avec des feuilles de coriandre fraîche avant de servir",
"Le Kokoda est un plat traditionnel des îles Fidji, fait avec du poisson mariné dans du jus de citron vert et du lait de coco. Les légumes frais comme l'oignon rouge, le poivron rouge, le concombre, la tomate et le piment vert ajoutent de la texture et de la saveur. Le plat est servi froid, ce qui le rend rafraîchissant et parfait pour les journées chaudes d'été. La coriandre fraîche ajoute une touche finale de fraîcheur. Le Kokoda est non seulement délicieux mais aussi sain et léger, ce qui en fait une excellente option pour un déjeuner ou un dîner estival.",
16.5,
53,
'../img/db_images/PLAT-16833646510Cts0',
'<iframe class="video_recette" src="https://www.youtube.com/embed/3cJCu6Tz1sw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');