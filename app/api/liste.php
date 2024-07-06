<?php
// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json; charset=UTF-8');
header('Access-Control-Allow-Methods: GET');
header('Access-Control-Max-Age: 3600');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');

if($_SERVER['REQUEST_METHOD'] !== 'GET'){
    http_response_code(405);
    echo json_encode(['error' => 'Method unauthorized']);
    exit;
}

require_once './class/Db.php';
require_once './class/Agences.php';

// On instancie la base de données
$database = new Db();
$db = $database->getConnection();

// On instancie les agences
$agences = new Agences($db);

// On récupère les données
$listeAgences = $agences->liste();

echo json_encode($listeAgences);