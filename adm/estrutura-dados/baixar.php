<?php

# Debug
ini_set('display_errors',1);

# Inclusão de arquivos necessários
require '../config.php';
require DBAPI;

# Requisição ao banco de dados
$db = open_database();
$sql = "SELECT * FROM documentos WHERE classe = 'Links'";
$query = $db->query($sql);

# Oranização dos Dados
$response=[];
while($row=$query->fetch_assoc()) {
    $response[]=$row;
}

# Exibição dos Dados
$json = json_encode($response,JSON_UNESCAPED_UNICODE);
echo "<pre>$json</pre>";