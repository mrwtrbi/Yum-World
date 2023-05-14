CREATE DATABASE YUM;
DROP DATABASE IF EXISTS YUM;
USE YUM;
DROP TABLE IF EXISTS Compte;

CREATE TABLE Compte(
	id VARCHAR(50) PRIMARY KEY,
    login VARCHAR(50),
	nom VARCHAR(20),
    prenom VARCHAR(20),
    mdp VARCHAR(20)
);

ALTER TABLE Compte MODIFY COLUMN login VARCHAR(50);
SELECT * FROM Compte;

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

SELECT * FROM Commande;
SELECT * FROM Compte;


CREATE TABLE Commande(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idUser VARCHAR(50),
    FOREIGN KEY fk_iduser(idUser) REFERENCES Compte(id)
);

ALTER TABLE Commande_item AUTO_INCREMENT=2;
CREATE TABLE Commande_item(
	id INT PRIMARY KEY AUTO_INCREMENT,
	idCommande INT,
	idPlat VARCHAR(50),
    quantite INT,
    FOREIGN KEY fk_idcom(idCommande) REFERENCES Commande(id),
    FOREIGN KEY fk_idplat(idPlat) REFERENCES Plat(id)
);



DROP TABLE Commande_item;
DROP TABLE Commande;
DROP TABLE Compte;
SELECT * FROM Commande;


INSERT INTO Plat VALUES (
'PLAT-1682851778oryuR',
'Afrique',
'Tajine',
'Maroc',
"4 cuisses de poulet
1 oignon
2 carottes
2 tomates
3 courgettes
1 càs d'huile d'olive
1 verre d'eau
3 pommes de terre
Épices pour tajine",
4,
"1) Faire revenir les oignons avec l'huile d'olive et les épices dans le tajine (une marmite peut faire l'affaire)
2) Ajouter le poulet et remuer
3) Couper les légumes en lamelles et les ajouter dans le tajine
4) Ajouter un verre d'eau, couvrez le tajine et laissez mijoter pendant 1 heure
5) Servir avec du pain",
"Le tajine est un plat traditionnel de la cuisine marocaine, également apprécié dans d'autres pays d'Afrique du Nord et du Moyen-Orient. Il est préparé dans un plat en terre cuite éponyme, appelé tajine, qui permet une cuisson lente et uniforme. Le tajine est généralement composé de viande ou de poulet, de légumes, d'épices et d'herbes aromatiques, le tout mijoté dans une sauce savoureuse et parfumée. Les ingrédients sont cuits à feu doux, permettant aux saveurs de se mélanger et de se développer lentement, offrant ainsi un goût délicieusement complexe. Le tajine est un plat réconfortant et chaleureux, souvent servi avec du pain traditionnel pour absorber la sauce.",
12.5,
120,
'../img/db_images/PLAT-1682851778oryuR',
"<iframe class='video_recette' src='https://www.youtube.com/embed/yyr5PnCPA58' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' allowfullscreen></iframe>"
);


UPDATE Plat SET lien_video='<iframe width="560"  height="315" src="https://www.youtube.com/embed/PYEU6Ri_HB4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>' WHERE id=2;
INSERT INTO Plat VALUES (
'PLAT-1682851891b2Fj6',
'Afrique',
'Couscous',
'Maghreb',
"4 cuisses de poulet
2 oignons
4 carottes
4 tomates
4 courgettes
1 càs d'huile d'olive
3 navets
Semoule
Épices pour couscous",
4,
"1) Faire revenir les oignons avec l'huile d'olive et les épices pour couscous dans la marmite
2) Ajouter le poulet
3) Couper les légumes en lamelles et en morceaux (pour les navets uniquement) et les ajouter les carottes, les tomates et les navets
4) Laisser cuire pendant 1 heure
5) Hacher le persil et ajouter à la marmite
6) Ajouter les courgettes et laisser cuire 25 minutes
7) Cuire la semoule
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
"1 poulet
4 càs de pâte d'arachide
1 L d'eau
50 g de concentré de tomate
2 gousses d'ail
Huile d'arachide
Riz
Épices pour le mafé",
6,
"1) Faire revenir les oignons avec l'huile d'arachide, et les épices pour le mafé dans la marmite
2) Ajouter le poulet et laisser cuire
3) Une fois le poulet cuit, réserver le poulet
4) Ajouter la tomate concentrée, les gousses d'ail hachées et de l'eau
5) Laisser cuire 25 minutes
6) Ajouter la pâte d'arachide
7) Ajouter le poulet à la sauce et laisser cuire pendant 30 minutes
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
"1 kg de poulet
4 carottes
1 L d'eau
1 demi chou blanc
A tomate
2 oignons
2 gousses d'ail
Riz
Épices pour le thieb",
8,
"1) Faire revenir les oignons avec l'huile d'arachide, et les épices pour le thieb dans la marmite
2) Ajouter le poulet et un verre d'eau et laisser cuire pendant 20 minutes
3) Couper les légumes en morceaux
4) Ajouter la tomate concentrée, les gousses d'ail hachées, les légumes et 1 L d'eau bouillante
5) Laisser cuire
6) Ajouter le riz dans la marmite et laisser cuire
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
"2,5 L d'eau
100 g de sucre
2 sachets de sucre vanillé
2 càs de fleur d'oranger
2 tasses de fleur d'hibiscus séchées
1 pincée de noix de muscade",
6,
"1) Rincer les fleurs d'hibiscus
2) Mettre les 2,5 L dans une marmite puis y ajouter les fleurs
3) Faire bouillir l'eau et attendre que l'eau se colore
4) Laisser refroidir l'infusion puis ajouter les sucres, la muscade et la càs de fleur d'oranger
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
"1,5 kg de poisson (poisson-chat)
2 aubergines
2 oignons
6 gousses d'ail
2 càs de concentré de tomate
1 càs de pâte d'arachide
2 càs d'huile rouge
A càs de sel et de poivre",
8,
"1) Éplucher et hacher les oignons et les gousses d'ail. Couper les aubergines en gros cubes et réserver
2) Dans une grande casserole, chauffer l'huile rouge à feu moyen et ajouter les oignons et l'ail hachés et faire revenir
3) Ajouter le concentré de tomate, la pâte d'arachide, le sel et le poivre. Remuer pour mélanger tous les ingrédients
4) Versez de l'eau dans la casserole pour recouvrir le mélange et porter à ébullition puis laisser mijoter pendant 10 à 15 minutes
5) Ajouter les cubes d'aubergines dans la casserole puis remettre à mijoter pendant 10 minutes
6) Ajouter le poisson entier dans la casserole et couvrir la casserole et laisser mijoter à feu moyen pendant 20 minutes
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
"1 oignon
1 pincée de sel et de poivre
Coriandre
100 g de crevettes
200 g de viande rouge de votre choix
20 feuillets de raviolis
Huile de sésame",
2,
"1) Hacher l'oignon la coriandre, les crevettes et la viande rouge
2) Mélanger les ingrédients hachés avec le sel, le poivre et l'huile de sésame
3) Mettre une càc de farce dans chaque feuillet de raviolis et les fermer
4) Cuire à la vapeur pendant 15 minutes",
"Les raviolis chinois, également appelés jiaozi en mandarin, sont un plat traditionnel de la cuisine chinoise, qui remonte à plus de 1800 ans. Ces petites bouchées sont souvent servis avec une sauce soja ou une sauce aux arachides.
Les raviolis chinois sont non seulement délicieux, mais sont également un aliment symbolique dans la culture chinoise, souvent associés aux célébrations du Nouvel An chinois, où les familles se réunissent pour les préparer et les manger ensemble.",
8,
49,
'../img/db_images/PLAT-1682852198w1gGa',
'<iframe class="video_recette" src="https://www.youtube.com/embed/MEBdzCm93bw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'

);
UPDATE Plat SET lien_video='<iframe class="video_recette" src="https://www.youtube.com/embed/foD42-73wdI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>' WHERE id='PLAT-1683361311Fa2Xm';

UPDATE Plat SET continent='Europe' WHERE id='PLAT-1683363404wSYja';
