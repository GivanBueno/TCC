<?php

require_once('../config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de Pesquisas
 */
function index() {
	global $customers;
	$customers = find_all('documentos');
}


/**
 *  Pesquisa Todos os Registros de uma Tabela
 */

function find_all( $table ) {
	return find($table);
  }

  /**
 *  Cadastro de Pesquisas
 */
function add() {

	if (!empty($_POST['customer'])) {
	  
	  $today = 
		date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	  $customer = $_POST['customer'];
	  $customer['modifed'] = $customer['created'] = $today->format("Y-m-d H:i:s");
	  
	  save('documentos', $customer);
	  header('location: index.php');
	}
  }

  
/**
 *	Atualizacao/Edicao de Pesquisas
 */
function edit() {

	$now = date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	if (isset($_GET['id'])) {
  
	  $id = $_GET['id'];
  
	  if (isset($_POST['customer'])) {
  
		$customer = $_POST['customer'];
		$customer['modifed'] = $now->format("Y-m-d H:i:s");
  
		update('documentos', $id, $customer);
		header('location: index.php');
	  } else {
  
		global $customer;
		$customer = find('documentos', $id);
	  } 
	} else {
	  header('location: index.php');
	}
  }

  /**
 *  Visualização de uma pesquisa
 */
function view($id = null) {
	global $customer;
	$customer = find('documentos', $id);
  }

  /**
 *  Exclusão de uma pesquisa
 */
function delete($id = null) {

	global $customer;
	$customer = remove('documentos', $id);
  
	header('location: index.php');
  }