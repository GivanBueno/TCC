<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Dados da Foto</h2>

<form action="edit.php?id=<?php echo $customer['id']; ?>" method="post">
  <hr />
  <div class="row">
  <div class="form-group col-md-4">
      <label for="name">Id do usuário</label>
      <input type="text" class="form-control" name="customer['id_usuario']" value="<?= $customer['id_usuario']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Nome comum</label>
      <input type="text" class="form-control" name="customer['nome_comum']" value="<?= $customer['nome_comum']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Nome cientifico</label>
      <input type="text" class="form-control" name="customer['nome_cientifico']" value="<?= $customer['nome_cientifico']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Categoria</label>
      <input type="text" class="form-control" name="customer['categoria']" value="<?= $customer['categoria']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Localização</label>
      <input type="text" class="form-control" name="customer['localizacao']" value="<?= $customer['localizacao']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Latitude</label>
      <input type="text" class="form-control" name="customer['lat']" value="<?= $customer['lat']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Longitude</label>
      <input type="text" class="form-control" name="customer['lng']" value="<?= $customer['lng']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">link da foto</label>
      <input type="text" class="form-control" name="customer['foto']" value="<?= $customer['foto']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">É exibido no site ou não? (1 = sim e 2 = não)</label>
      <input type="text" class="form-control" name="customer['validado']" value="<?= $customer['validado']?>">
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