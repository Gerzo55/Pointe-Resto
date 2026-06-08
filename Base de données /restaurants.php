<?php

// On autorise toutes les applications à accéder à cette API
header("Access-Control-Allow-Origin: *");

// On dit que les données renvoyées seront en format JSON
header("Content-Type: application/json");

// On inclut les fichiers dont on a besoin
include_once "../config/database.php";
include_once "../classes/Restaurant.php";

// On crée la connexion à la base de données
$database   = new Database();
$db         = $database->getConnection();

// On crée un objet Restaurant avec la connexion
$restaurant = new Restaurant($db);

// On récupère la méthode de la requête
$methode = $_SERVER['REQUEST_METHOD'];

// Si l'utilisateur demande la liste des restaurants
if ($methode == 'GET') {

    // On récupère tous les restaurants
    $resultat = $restaurant->getTousLesRestaurants();
    $liste    = array();

    // On transforme chaque restaurant en tableau
    while ($ligne = $resultat->fetch(PDO::FETCH_ASSOC)) {
        $liste[] = $ligne;
    }

    // On renvoie la liste en format JSON
    echo json_encode($liste);
}
?>