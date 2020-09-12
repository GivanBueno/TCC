<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Cliente</h2>

<form action="edit.php?id=<?php echo $customer['id']; ?>" method="post">
  <hr />
  <div class="row">
  <div class="form-group col-md-4">
      <label for="name">nome</label>
      <input type="text" class="form-control" name="customer['nome']" value="<?= $customer['nome']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">email</label>
      <input type="email" class="form-control" name="customer['email']" value="<?= $customer['email']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">senha</label>
      <input type="password" class="form-control" name="customer['senha']" value="<?= $customer['senha']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Foto</label>
      <input type="text" class="form-control" name="customer['profile_pic']" value="<?= $customer['profile_pic']?>">
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