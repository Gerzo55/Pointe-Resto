--CREATION DES TABLES--

--TABLE QUARTIER--
CREATE TABLE quartier (
    id_quartier  SERIAL PRIMARY KEY,
    nom_quartier VARCHAR(100) NOT NULL,
    description  TEXT
);
 
 
-- TABLE UTILISATEUR--
CREATE TABLE utilisateur (
    id_user      SERIAL PRIMARY KEY,
    nom          VARCHAR(100) NOT NULL,
    email        VARCHAR(150) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    role         VARCHAR(20)  NOT NULL DEFAULT 'client'
                 CHECK (role IN ('client', 'restaurateur', 'moderateur'))
);
 
 
-- TABLE RESTAURANTS--
CREATE TABLE restaurants (
    id_restaurant  SERIAL PRIMARY KEY,
    nom            VARCHAR(150) NOT NULL,
    adresse        VARCHAR(255) NOT NULL,
    telephone      VARCHAR(20),
    description    TEXT,
    latitude       DECIMAL(10, 8),
    longitude      DECIMAL(11, 8),
    statut         VARCHAR(20)  NOT NULL DEFAULT 'ouvert'
                   CHECK (statut IN ('ouvert', 'ferme_bientot', 'ferme')),
    photo_url      VARCHAR(255),
    quartier_id    INT NOT NULL REFERENCES quartier(id_quartier) ON DELETE CASCADE
);
 
 
-- TABLE PHOTO--
CREATE TABLE photo (
    id_photo      SERIAL PRIMARY KEY,
    url_photo     VARCHAR(255) NOT NULL,
    id_restaurant INT NOT NULL REFERENCES restaurants(id_restaurant) ON DELETE CASCADE
);
 
 
-- TABLE MENU--
CREATE TABLE menu (
    id_menu       SERIAL PRIMARY KEY,
    nom_plat      VARCHAR(150) NOT NULL,
    prix          DECIMAL(10, 2) NOT NULL CHECK (prix >= 0),
    description   TEXT,
    photo_url     VARCHAR(255),
    disponible    BOOLEAN DEFAULT TRUE,
    id_restaurant INT NOT NULL REFERENCES restaurants(id_restaurant) ON DELETE CASCADE
);
 
 
--TABLE AVIS--
CREATE TABLE avis (
    id_avis       SERIAL PRIMARY KEY,
    note          INT  NOT NULL CHECK (note BETWEEN 1 AND 5),
    commentaire   TEXT,
    date_avis     DATE NOT NULL DEFAULT CURRENT_DATE,
    id_user       INT  REFERENCES utilisateur(id_user) ON DELETE SET NULL,
    id_restaurant INT  NOT NULL REFERENCES restaurants(id_restaurant) ON DELETE CASCADE
);
 
 
-- TABLE FAVORI--
CREATE TABLE favori (
    id_user       INT NOT NULL REFERENCES utilisateur(id_user) ON DELETE CASCADE,
    id_restaurant INT NOT NULL REFERENCES restaurants(id_restaurant) ON DELETE CASCADE,
    PRIMARY KEY (id_user, id_restaurant)
);