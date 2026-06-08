<?php
class Database {
    private $host     = "localhost";
    private $db_name  = "POINTE-RESTO";
    private $username = "NOM";
    private $password = "MOT DE PASSE";
    private $conn     = null;

    public function getConnection() {
        try {
            $this->conn = new PDO(
                "pgsql:host=" . $this->host . ";dbname=" . $this->db_name,
                $this->username,
                $this->password
            );
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Erreur de connexion : " . $e->getMessage();
        }
        return $this->conn;
    }
}
?>