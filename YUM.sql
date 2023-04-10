/*CREATE DATABASE YUM;*/
USE YUM;

CREATE TABLE Compte(
	id INT PRIMARY KEY,
    login VARCHAR(20),
	nom VARCHAR(20),
    prenom VARCHAR(20),
    mdp VARCHAR(20),
    panier TEXT
) ;

CREATE TABLE Plat(
	id INT PRIMARY KEY,
    nom VARCHAR(20),
    prix VARCHAR(10),
    description TEXT,
    continent VARCHAR(20),
    photo VARCHAR(50),
    ingredients TEXT,
    stock INT
); 