-- Database: Point_Resto2.0

-- DROP DATABASE IF EXISTS "Point_Resto2.0";

CREATE DATABASE "Point_Resto2.0"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_Congo.1252'
    LC_CTYPE = 'French_Congo.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


--Création de la table RESTAURANT--

	CREATE TABLE restaurant (
		restaurant_id SERIAL PRIMARY KEY,
		nom VARCHAR(25) NOT NULL, 
		adresse VARCHAR NOT NULL,
		telephone VARCHAR,
		description TEXT,
		latitude DECIMAL,
		longitude DECIMAL,
		quartier_id INT NOT NULL,
		statut VARCHAR,
		photo_url VARCHAR
	);

	SELECT * FROM restaurant


--Création de la table UTILISATEUR--

	CREATE TABLE utilisateur (
		utilisateur_id SERIAL PRIMARY KEY,
		nom VARCHAR NOT NULL,
		email VARCHAR NOT NULL,
		mot_de_passe VARCHAR (8) NOT NULL
	);

	SELECT * FROM utilisateur


--Création de la table MENU--
	
	CREATE TABLE menu (
		menu_id SERIAL PRIMARY KEY,
		nom_plat VARCHAR,
		prix DECIMAL,
		description TEXT,
		photo_url VARCHAR,
		disponible BOOLEAN,
		restaurant_id INTEGER,
		FOREIGN KEY (restaurant_id)
			REFERENCES restaurant(restaurant_id)
	);

	SELECT * FROM menu

--Création de la table FAVORI--

	CREATE TABLE favori (
    utilisateur_id INTEGER,
    restaurant_id INTEGER,
    PRIMARY KEY (utilisateur_id, restaurant_id),
    FOREIGN KEY (utilisateur_id)
        REFERENCES utilisateur(utilisateur_id),
    FOREIGN KEY (restaurant_id)
        REFERENCES restaurant(restaurant_id)
);

--Création de la table REVIEWS--

	CREATE TABLE reviews (
		avis_id SERIAL PRIMARY KEY,
		note INT,
		commentaire TEXT,
		date_avis DATE,
		utilisateur_id INTEGER,
		FOREIGN KEY (utilisateur_id)
			REFERENCES utilisateur (utilisateur_id),
		restaurant_id INTEGER,
		FOREIGN KEY (restaurant_id)
			REFERENCES restaurant (restaurant_id)
	);

--Création de la table QUARTIER--

	CREATE TABLE quartier(
		quartier_id SERIAL PRIMARY KEY,
		nom_quartier VARCHAR,
		description TEXT
	);

--Création de la table PHOTO--

	CREATE TABLE photo(
		photo_id SERIAL PRIMARY KEY,
		photo_url VARCHAR,
		restaurant_id INTEGER,
		FOREIGN KEY (restaurant_id)
			REFERENCES restaurant(restaurant_id)
	);