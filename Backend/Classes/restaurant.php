<?php
class Restaurant {
    // La connexion à la base de données
    private $conn;

    // Le nom de la table dans PostgreSQL
    private $table = "restaurants";

    // Les informations d'un restaurant
    public $restaurant_id;
    public $nom;
    public $adresse;
    public $telephone;
    public $description;
    public $latitude;
    public $longitude;
    public $statut;
    public $photo_url;
    public $quartier_id;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Récupérer tous les restaurants
    public function getTousLesRestaurants() {
        $sql = "SELECT * FROM " . $this->table . " ORDER BY nom ASC";
        $requete = $this->conn->prepare($sql);
        $requete->execute();
        return $requete;
    }

    // Récupérer un seul restaurant par son ID
    public function getUnRestaurant() {
        $sql = "SELECT * FROM " . $this->table . " WHERE id_restaurant = :id LIMIT 1";
        $requete = $this->conn->prepare($sql);
        $requete->bindParam(":id", $this->id_restaurant);
        $requete->execute();
        return $requete;
    }
}

?>