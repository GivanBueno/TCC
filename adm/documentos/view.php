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
	<dt>titulo:</dt>
	<dd><?php echo $customer['titulo']; ?></dd>

	<dt>filo:</dt>
	<dd><?php echo $customer['filo']; ?></dd>

	<dt>link:</dt>
	<dd><?php echo $customer['link']; ?></dd>
</dl>

<dl class="dl-horizontal">
	<dt>tipo:</dt>
	<dd><?php echo $customer['tipo']; ?></dd>

	<dt>img:</dt>
	<dd><?php echo $customer['img']; ?></dd>

	<dt>edit:</dt>
	<dd><?php echo $customer['edit']; ?></dd>
</dl>

<dl class="dl-horizontal">
	<dt>Classificação 1:</dt>
	<dd><?php echo $customer['nomeclatura']; ?></dd>

	<dt>Classificação 2:</dt>
	<dd><?php echo $customer['classe']; ?></dd>

	<dt>Autor:</dt>
	<dd><?php echo $customer['edit']; ?></dd>

</dl>
<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?id=<?php echo $customer['id']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>