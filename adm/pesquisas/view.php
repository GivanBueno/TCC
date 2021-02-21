<?php 
	require_once('functions.php'); 
	view($_GET['id']);
?>

<?php include(HEADER_TEMPLATE); ?>

<h2><?php echo $customer['titulo']; ?></h2>
<hr>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>

<dl class="dl-horizontal">

	<dt>Id do documento:</dt>
	<dd><?php echo $customer['id']; ?></dd>
	<br/>
	<dt>Id do usuário que cadastrou o documento:</dt>
	<dd><?php echo $customer['id_usuario']; ?></dd>
	<br/>
	<dt>titulo:</dt>
	<dd><?php echo $customer['titulo']; ?></dd>
	<br/>
	<dt>Filo:</dt>
	<dd><?php echo $customer['filo']; ?></dd>
	<br/>
	<dt>Link:</dt>
	<dd><?php echo $customer['link']; ?></dd>
	<br/>
	<dt>Imagem:</dt>
	<dd><?php echo $customer['image']; ?></dd>
	<br/>
	<dt>Nomenclatura:</dt>
	<dd><?php echo $customer['nomeclatura']; ?></dd>
	<br/>
	<dt>Classe:</dt>
	<dd><?php echo $customer['classe']; ?></dd>
	<br/>
	<dt>Data de criação:</dt>
	<dd><?php echo $customer['created']; ?></dd>
	<br/>
	<dt>Data de modificação:</dt>
	<dd><?php echo $customer['modifed']; ?></dd>

</dl>
<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?id=<?php echo $customer['id']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>