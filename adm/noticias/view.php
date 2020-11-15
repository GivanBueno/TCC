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
	<dt>ID da notícia:</dt>
	<dd><?php echo $customer['id']; ?></dd>
	<br/>
	<dt>ID do usuário:</dt>
	<br/>
	<dd><?php echo $customer['id_usuario']; ?></dd>
	<dt>Título da notícia:</dt>
	<dd><?php echo $customer['titulo']; ?></dd>
	<br/>
	<dt>Conteúdo da notícia:</dt>
	<dd><?php echo $customer['conteudo']; ?></dd>
	<br/>
	<dt>Imagem da notícia:</dt>
	<dd><?php echo $customer['imagem']; ?></dd>
	<br/>
	<dt>Data de criação:</dt>
	<dd><?php echo $customer['criacao']; ?></dd>
	<br/>
	<dt>Data de modificação:</dt>
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