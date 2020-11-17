<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Dados da Noticia</h2>

<form action="edit.php?id=<?php echo $customer['id']; ?>" method="post">
  <hr />
  <div class="row">
  
  <div class="form-group col-md-4">
    <label for="name">ID do usuário</label>
    <input type="text" class="form-control" name="customer['id_usuario']" value="<?= $customer['id_usuario']?>">
  </div>

  <div class="form-group col-md-4">
    <label for="name">Título</label>
    <input type="text" class="form-control" name="customer['titulo']" value="<?= $customer['titulo']?>">
  </div>

  <div class="form-group col-md-12">
      <label for="conteudo">Conteudo</label>
      <textarea class="form-control" name="customer['conteudo']" ><?= $customer['conteudo']?>"</textarea>
  </div>

  <div class="form-group col-md-4">
    <label for="name">Link da Imagem</label>
    <input type="text" class="form-control" name="customer['imagem']" value="<?= $customer['imagem']?>">
  </div>

  </div>
  <div id="actions" class="row">
    <div class="col-md-12">
      <button type="submit" class="btn btn-primary">Salvar</button>
      <a href="index.php" class="btn btn-default">Cancelar</a>
    </div>
  </div>
</form>

<?php include(FOOTER_TEMPLATE); ?>