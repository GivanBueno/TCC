<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php

$customers = null;
$customer = null;

if(empty($_POST['login']) || empty($_POST['password']) || empty($_POST['katchau']))
{
    header('Location: artigos.php');
    exit;
}

$login = mysqli_real_escape_string($conn, $_POST[<$customer['senha']]);
$senha = mysqli_real_escape_string($conn, $_POST['password']);


$query = "SELECT * FROM usuario WHERE email = 'observatoriobiodiversidadeurb@gmail.com' AND senha = 'kamila'";
echo $query;
exit;




?>


