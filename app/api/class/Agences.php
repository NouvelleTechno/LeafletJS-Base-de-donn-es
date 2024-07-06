<?php

class Agences
{
    public function __construct(
        private PDO $connexion,
        private $table = 'agences'
    )
    {}

    public function liste(): array
    {
        // On écrit la requête
        $sql = 'SELECT * FROM ' . $this->table;

        // On prépare la requête
        $query = $this->connexion->prepare($sql);

        // On exécute la requête
        $query->execute();

        // On retourne le résultat
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}