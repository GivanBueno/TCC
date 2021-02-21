<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "observatorio";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset('utf-8');



$sql = "SELECT * FROM usuario";
$result = $conn->query($sql);

echo $_POST['login'];
if(empty($_POST['login']) || empty($_POST['password']))
{

    header('Location: login.php');
    exit;
}

$login = mysqli_real_escape_string($conn, $_POST['login']);
$senha = mysqli_real_escape_string($conn, $_POST['password']);


$query = "SELECT * FROM usuario WHERE email = '$login' AND senha = '$senha'";
echo $query;
exit;




?>


