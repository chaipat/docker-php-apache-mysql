<?php
$servername = "db";
$username = "user";
$password = "userpassword";
$database = "mydatabase";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Successfully connected the database";
?>
