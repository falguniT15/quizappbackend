<?php
session_start();
require_once 'vendor/autoload.php';

// Load environment variables
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$clientId = $_ENV['GOOGLE_CLIENT_ID'];
$clientSecret = $_ENV['GOOGLE_CLIENT_SECRET'];


$client = new Google_Client();
$client->setClientId($clientId);
$client->setClientSecret($clientSecret);
$client->setRedirectUri('http://localhost/quizappbackend/oauth2callback.php');

// If the code is set, authenticate the user
if (isset($_GET['code'])) {
    $client->authenticate($_GET['code']);
    $_SESSION['access_token'] = $client->getAccessToken();
    header('Location: http://localhost:8080/home');  // Redirect to a success route in your Vue app
    exit;
}

// If access token is already in session, set it
if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {
    $client->setAccessToken($_SESSION['access_token']);
} else {
    header('Location: http://localhost/quizappbackend/login.php');
    exit;
}

// Get user info
$oauth2 = new Google_Service_Oauth2($client);
$userInfo = $oauth2->userinfo->get();

// Store user info in the session (optional)
$_SESSION['user'] = [
    'id' => $userInfo->id,
    'name' => $userInfo->name,
    'email' => $userInfo->email,
    'picture' => $userInfo->picture
];

header('Location: http://localhost:8080/home'); // Redirect to Vue.js success page
exit;
?>
