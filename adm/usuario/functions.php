<?php

require_once('../config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de Clientes
 */
function index() {
	global $customers;
	$customers = find_all('usuario');
}


/**
 *  Pesquisa Todos os Registros de uma Tabela
 */

function find_all( $table ) {
	return find($table);
  }

  /**
 *  Cadastro de Clientes
 */
function add() {

	if (!empty($_POST['usuario'])) {
	  
	  $today = 
		date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	  $customer = $_POST['usuario'];
	  $customer['senha']    = hash('sha256',$customer['senha']);
	  $customer['modified'] = $customer['created'] = $today->format("Y-m-d H:i:s");
	  
	  save('usuario', $customer);
	  header('location: index.php');
	}
  }

  
/**
 *	Atualizacao/Edicao de Cliente
 */
function edit() {

	$now = date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	if (isset($_GET['id'])) {
  
	  $id = $_GET['id'];
  
	  if (isset($_POST['customer'])) {
  
		$customer = $_POST['customer'];
		$customer['senha'] = hash('sha256',$customer['senha']);
		$customer['modificacao'] = $now->format("Y-m-d H:i:s");
  
		update('usuario', $id, $customer);
		header('location: index.php');
	  } else {
  
		global $customer;
		$customer = find('usuario', $id);
	  } 
	} else {
	  header('location: index.php');
	}
  }

  /**
 *  Visualização de um Cliente
 */
function view($id = null) {
	global $customer;
	$customer = find('usuario', $id);
  }

  /**
 *  Exclusão de um Cliente
 */
function delete($id = null) {

	global $customer;
	$customer = remove('usuario', $id);
  
	header('location: index.php');
  }