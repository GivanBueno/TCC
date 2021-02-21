<?php 
	require_once('functions.php'); 
	view($_GET['id']);
?>

<?php include(HEADER_TEMPLATE); ?>

<h2><?php echo $customer['nome_comum']; ?></h2>
<hr>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>

<dl class="dl-horizontal">
	<dt>ID da foto:</dt>
	<dd><?php echo $customer['id']; ?></dd>
	<br/>
	<dt>ID do usuário:</dt>
	<dd><?php echo $customer['id_usuario']; ?></dd>
	<br/>
	<dt>Nome comum:</dt>
	<dd><?php echo $customer['nome_comum']; ?></dd>
	<br/>
	<dt>Nome cietífico:</dt>
	<dd><?php echo $customer['nome_cientifico']; ?></dd>
	<br/>
	<dt>Categoria:</dt>
	<dd><?php echo $customer['categoria']; ?></dd>
	<br/>
	<dt>Localização da foto:</dt>
	<dd><?php echo $customer['localizacao']; ?></dd>
	<br/>
	<dt>Latitude:</dt>
	<dd><?php echo $customer['lat']; ?></dd>
	<br/>
	<dt>Longitude:</dt>
	<dd><?php echo $customer['lng']; ?></dd>
	<br/>
	<dt>Link da foto:</dt>
	<dd><?php echo $customer['foto']; ?></dd>
	<br/>
	<dt>Está sendo exibido no site:</dt>
	<dd><?php echo $customer['validado']; ?></dd>
	<br/>
	<dt>Data de criacao:</dt>
	<dd><?php echo $customer['criacao']; ?></dd>
	<br/>
	<dt>Data de modificacao:</dt>
	<dd><?php echo $customer['modificacao']; ?></dd>
	<br/>
	

</dl>
<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?id=<?php echo $customer['id']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>