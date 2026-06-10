INSERT INTO quartier (nom_quartier, description) VALUES
('Centre-Ville', 'Le coeur de Pointe-Noire'),
('Lumumba', 'Arrondissement 1 de Pointe-Noire'),
('Tié-Tié', 'Arrondissement 3 de Pointe-Noire'),
('Mpaka', 'Quartier situé dans le 6e arrondissement'),
('Côte Sauvage', 'Zone côtière et touristique');

INSERT INTO utilisateur (nom, email, mot_de_passe, role) VALUES
('Gerzo MAKAYA', 'gerzomakaya55@gmail.com', '126457645lk', 'moderateur'),
('Précieux KIMINOU', 'precieuxrelkiminou@gmail.com', 'Admin3506l', 'restaurateur'),
('Gotron MBOMO','gotronMB@gmail.com','Gotron564','Restaurateur'),
('Selma MOULOUANDA','tiphaniemoun@gmail.com','SM756SD','Restaurateur'),
('Djowen MAKOSSO', 'bigbossking@gmail.com', 'Djowen97J7Y', 'client'),
('Monica OPPELET','monicaoppelet@gmail.com','Monica75TF','Client'),
('Izya LOCKO','lockoizya@gmail.com','izya132LK','Client'),
('Kevin Mavoungou','kevin.mavoungou@gmail.com','k3vin@2026','Client'),
('Sarah Ndziami','sarah.ndziami@yahoo.com','S4rahpass','Client'),
('Jordan Mbemba','jordan.mbemba@gmail.com','j0rdan!2026','Client'),
('Grâce Taty','grace.taty@gmail.com','Gr@ce7890','Client');

INSERT INTO restaurant (nom_restaurant,Adresse,Téléphone,Description,Latitude,longitude,statut,null,quartier_id) VALUES
('Saveurs de Lumumba','Avenue Lumumba','+242 06-101-10-01','Cuisine congolaise et grillades',-4.7751,11.8561,'ACTIF',photo_url,1),
('Le Baobab Royal','Rue des manguiers','+242 06-101-10-02','Spécialités locales et plats familiaux',-4.7760,11.8570,'ACTIF',phoyo_url,1),
('Chez Maman Yaya','Avenue de la gare','+242 06-101-10-03','Cuisine Traditionnelle Congolaise',-4.7902,11.8485,'ACTIF',phoyo_url,2),
('Tchié-Tchié Grill','Rue des Ecoles','+242 06-101-10-04','Grillades et poissons braisés',-4.7911,11.8498,'ACTIF',photo_url,2),
('Océan Bleu','Boulevard Océan','+242 06-101-10-05','Fruits de mer avec vue sur Océan',-4.7825,11.8320,'ACTIF',photo_url,4),
('Sunset Côte Sauvage','Route de la plage','+242 06-101-10-06','Terrasse face à la mer',-4.7839,11.8335,'ACTIF',photo_url,4),
('Chez Biso','Avenue de Mpaka','+242 06-101-10-07','Cuisine africaine à prix abordables',-4.8122,11.8701,'ACTIF',photo_url,3),
('Le palmier Vert','Rue du Marché','+242 06-101-10-08','Plats locaux et jus naturels',-4.8138,11.8715,'ACTIF',photo_url,3),
('Mpaka Délices','Boulevard Principal','+242 06-101-10-09','Cuisine mixte africaine et européenne',-4.8151,11.8730,'ACTIF',photo_url,3),
('Central Food','Avenue Charles de Gaulle','+242 06-101-10-10','Cuisine rapide et moderne',-4.7848,11.8632,'ACTIF',photo_url,5),
('Le Gourmet du Centre','Rue Loango','+242 06-101-10-11','Restaurant gastronomique',-4.7855,11.8640,'ACTIF',photo_url,5),
('Riviera Centre','Avenue Indépendance','+242 06-101-10-12','Cuisine Internationale',-4.7862,11.8654,'ACTIF',photo_url,5),
('Le phare Gourmand','Rue du Littoral','+242 06-101-10-13','Fruits de mer et cocktails',-4.7810,11.8305,'ACTIF',photo_url,4),
('Lumumba Express','Avenue du Stade','+242 06-101-10-14','Fast-food et grillades',-4.7775,11.8582,'ACTIF',photo_url,1),
('Tchié Saveurs','Rue des palmiers','+242 06-101-10-15','Spécialités africaines et européennes',-4.7924,11.8509,'ACTIF',photo_url,2);

INSERT INTO menu (nom_plat, prix, description, disponible, id_restaurant) VALUES
('Poisson braisé', 3000, 'Poisson grillé au feu de bois', true, 1),
('Poulet DG',6500'FCFA','Poulet sauté avec légumes et plantains mûrs',true,1),
('Poisson braisé',5500'FCFA','Poisson frais grillé avec attiéké',true,1),
('Saka-Saka au poisson',4500'FCFA','Feuilles de manioc préparées avec du poisson fumé',true,2),
('Poulet Mayo',5000'FCFA','Poulet rôti servi avec fruits et mayonnaise',false,2),
('Brochettes de Boeuf',4000'FCFA','Brochettes épicées accompagnées de bananes plantains',true,4),
('Riz aux crevettes',6000'FCFA','Riz parfumé aux crevettes et légumes',true,4),
('Tilapia Grillé'7000'FCFA','Tilapia entier grillé avec sauce pimentée',true,2),
('Burger Tropical',5500'FCFA','Burger de boeuf avec ananas grillé',false,5),
('Pizza Fruits de Mer',8500'FCFA','Pizza garnie de crevettes, calamars et moules',true,3),
('Spaghetti Bolognaise'5000'FCFA','Pâte servies avec sauce à la viande hâchée',true,5),
('Salade Océan'3500'FCFA','Salade fraîche aux crevettes et thon',true,3),
('Mafé au Boeuf'6000'FCFA','Sauce arachide accompagnée de viande de boeuf',true,4),
('Poulet Yassa'5500'FCFA','Poulet mariné au citron et aux oignons',false,5),
('Crevettes Sautées',7500'FCFA','Crevettes sautées et au beurre',true,5),
('Couscous Royal'8000'FCFA','Couscous garni de viandes et légumes'true,2),
('Omelette Spéciale',2500'FCFA','Omelette garnie de légumes et fromages',true,1),
('Chawarma Poulet',3000'FCFA','Galette roulée au poulet et légumes',true,3),
('Frites de patate',2000'FCFA','Frites croustillantes de patate douce',true1),
('Assiette Mixte'9000'FCFA','Mélange de boeuf, poulet et saucisses',false,1),
('Plateau Fruits de Mer',12000'FCFA','Assortiment de poissons crevettes et calamars',true,1);

INSERT INTO avis (note, commentaire, date_avis, id_user, id_restaurant) VALUES
(5, 'Excellent restaurant, vivement la prochaine fois !', '2026-01-15', 3, 1),
(5, 'Très bon poisson braisé, je recommande.','2026-05-13',5,2),
(4, 'Cadre magnifique et plats délicieux.','2026-05-14',4,4),
(3, 'Cuisine correcte mais attente un peu longue.','2026-05-14',2,5),
(4, 'Bon rapport qualité prix.','2026-05-16',1,3),
(4, 'Nourriture correcte sans plus.','2026-05-20',1,5);