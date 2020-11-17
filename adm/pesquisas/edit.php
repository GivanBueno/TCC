<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Dados da Pesquisa</h2>

<form action="edit.php?id=<?php echo $customer['id']; ?>" method="post">
  <hr />
  <div class="row">

  <div class="form-group col-md-4">
    <label for="name">ID do usuário</label>
    <input type="text" class="form-control" name="customer['id_usuario']" value="<?= $customer['id_usuario']?>">
  </div>

  <div class="form-group col-md-4">
    <label for="name">Titulo</label>
    <input type="text" class="form-control" name="customer['titulo']" value="<?= $customer['titulo']?>">
  </div>

    <div class="form-group col-md-4">
      <label for="name">Filo</label>
      <input type="text" class="form-control" name="customer['filo']" value="<?= $customer['filo']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Arquivo</label>
      <input type="text" class="form-control" name="customer['link']" value="<?= $customer['link']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Imagem</label>
      <input type="text" class="form-control" name="customer['image']" value="<?= $customer['image']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Nomeclatura</label>
      <input type="text" class="form-control" name="customer['nomeclatura']" value="<?= $customer['nomeclatura']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Classe</label>
      <input type="text" class="form-control" name="customer['classe']" value="<?= $customer['classe']?>">
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