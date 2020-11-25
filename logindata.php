<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php

echo $_POST['login'];
if(empty($_POST['login']) || empty($_POST['password']))
{

    header('Location: login.php');
    exit;
}

$login = mysqli_real_escape_string($conn, $_POST['login']);
$senha = mysqli_real_escape_string($conn, $_POST['password']);
$login = $_POST['login'];
$senha = $_POST['password'];

$query = "SELECT * FROM usuario WHERE email = '$login' AND senha = '$senha'";
echo $query;
exit;




?>


