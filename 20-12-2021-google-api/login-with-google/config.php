<?php

//start session on web page
session_start();

//config.php

//Include Google Client Library for PHP autoload file
require_once 'vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('1058036998369-nu8fjrlkuad7oqog20j6iqrd7ad3hm3k.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('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');

//Set the OAuth 2.0 Redirect URI
$google_client->setRedirectUri('http://localhost/PhpWork/backend/20-12-2021-google-api/login-with-google/index.php');

// to get the email and profile 
$google_client->addScope('email');

$google_client->addScope('profile');

?>