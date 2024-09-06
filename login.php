<?php
session_start();
require_once 'vendor/autoload.php';

// Handle preflight OPTIONS request
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS"); 
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Authorization");
    exit(0);
}

// Allow CORS
header("Access-Control-Allow-Origin: *"); // To allow specific domains Replace '*' with specific domains
header("Access-Control-Allow-Methods: GET, POST, OPTIONS"); 
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Authorization");

// Load environment variables
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$clientId = $_ENV['GOOGLE_CLIENT_ID'];
$clientSecret = $_ENV['GOOGLE_CLIENT_SECRET'];




// Google API Client Setup
$client = new Google_Client();
$client->setClientId($clientId);
$client->setClientSecret($clientSecret);/8
$client->setRedirectUri('http://localhost/quizappbackend/oauth2callback.php');
$client->addScope('email');
$client->addScope('profile');

// Create OAuth URL and return it as a response
$authUrl = $client->createAuthUrl();
echo json_encode(['authUrl' => $authUrl]);
exit;
?>
