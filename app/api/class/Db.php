<?php

class Db
{
    // Propriétés de la base de données
    private string $host = 'database';
    private string $dbname = 'osm';
    private string $dbuser = 'osmuser';
    private string $dbpass = 'osmpass';
    public ?PDO $connexion;

    // Connexion
    public function getConnection(): PDO
    {
        // On ferme la connexion si elle existe
        $this->connexion = null;

        // On se connecte
        try{
            $this->connexion = new PDO('mysql:host=' . $this->host . ';dbname=' . $this->dbname, $this->dbuser, $this->dbpass);
            $this->connexion->exec('set names utf8');
        }catch(PDOException $exception){
            // On affiche l'erreur
            die('Erreur de connexion : ' . $exception->getMessage());
        }

        return $this->connexion;
    }
}