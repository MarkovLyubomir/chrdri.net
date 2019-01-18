<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "blog";

// Create connection
$db = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$db) {
    die("Connection failed: " . mysqli_connect_error());
}
// echo "Connected successfully";
