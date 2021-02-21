<?php

require_once('../config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de fotos
 */
function index() {
	global $customers;
	$customers = find_all('fotos');
}


/**
 *  Pesquisa Todos os Registros de uma Tabela
 */

function find_all( $table ) {
	return find($table);
  }

  /**
 *  Cadastro de fotos
 */
function add() {

	if (!empty($_POST['customer'])) {
	  
	  $today = 
		date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	  $customer = $_POST['customer'];
	  $customer['modificacao'] = $customer['criacao'] = $today->format("Y-m-d H:i:s");
	  
	  save('fotos', $customer);
	  header('location: index.php');
	}
  }

  
/**
 *	Atualizacao/Edicao de fotos
 */
function edit() {

	$now = date_create('now', new DateTimeZone('America/Sao_Paulo'));
  
	if (isset($_GET['id'])) {
  
	  $id = $_GET['id'];
  
	  if (isset($_POST['customer'])) {
  
		$customer = $_POST['customer'];
		$customer['modificacao'] = $now->format("Y-m-d H:i:s");
  
		update('fotos', $id, $customer);
		header('location: index.php');
	  } else {
  
		global $customer;
		$customer = find('fotos', $id);
	  } 
	} else {
	  header('location: index.php');
	}
  }

  /**
 *  Visualização de uma foto
 */
function view($id = null) {
	global $customer;
	$customer = find('fotos', $id);
  }

  /**
 *  Exclusão de um foto
 */
function delete($id = null) {

	global $customer;
	$customer = remove('fotos', $id);
  
	header('location: index.php');
  }