<?php

// cors
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Origin: *");

$hostname = "localhost";
$username = "root";
$password = "0000";
$dbname = "client_feedback";

$mysqli = new mysqli($hostname, $username, $password, $dbname);

if ($mysqli->connect_errno) {
  echo "Erro: (" . $mysqli->connect_errno . ")" . $mysqli->connect_error;
}

