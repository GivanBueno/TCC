<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "observatorio";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset('utf8mb4');
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
function open_database() {
  global $servername;
  global $username;
  global $password;
  global $dbname;
  $conn = new mysqli($servername, $username, $password, $dbname);
  $conn->set_charset('utf8mb4');
  return $conn;
}
?>