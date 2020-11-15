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
	$customers = find_all('noticias');
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

	if (!empty($_POST['noticias'])) {
	  
	  $today = 
		date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	  $customer = $_POST['noticias'];
	  $customer['modified'] = $customer['created'] = $today->format("Y-m-d H:i:s");
	  
	  save('noticias', $customer);
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
  
	  if (isset($_POST['noticias'])) {
  
		$customer = $_POST['noticias'];
		$customer['modified'] = $now->format("Y-m-d H:i:s");
  
		update('noticias', $id, $customer);
		header('location: index.php');
	  } else {
  
		global $customer;
		$customer = find('noticias', $id);
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
	$customer = find('noticias', $id);
  }

  /**
 *  Exclusão de um Cliente
 */
function delete($id = null) {

	global $customer;
	$customer = remove('noticias', $id);
  
	header('location: index.php');
  }