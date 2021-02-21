<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Dados do Usuário</h2>

<form action="edit.php?id=<?php echo $customer['id']; ?>" method="post">
  <hr />
  <div class="row">
  <div class="form-group col-md-4">
      <label for="name">Nome</label>
      <input type="text" class="form-control" name="customer['nome']" value="<?= $customer['nome']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Email</label>
      <input type="email" class="form-control" name="customer['email']" value="<?= $customer['email']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Senha</label>
      <input type="password" class="form-control" name="customer['senha']" value="<?= $customer['senha']?>">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Administrador</label>
      <input type="text" class="form-control" name="customer['adm']" value="<?= $customer['adm']?>">
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