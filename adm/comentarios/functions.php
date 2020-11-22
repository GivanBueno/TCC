<?php

require_once('../config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de Comentários
 */
function index() {
	global $customers;
	$customers = find_all('feedback');
}


/**
 *  Pesquisa Todos os Registros de uma Tabela
 */

function find_all( $table ) {
	return find($table);
  }


  
  /**
 *  Visualização de um Comentário
 */
function view($id = null) {
	global $customer;
	$customer = find('feedback', $id);
  }

  /**
 *  Exclusão de um Comentário
 */
function delete($id = null) {

	global $customer;
	$customer = remove('feedback', $id);
  
	header('location: index.php');
  }