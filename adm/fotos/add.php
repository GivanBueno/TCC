<?php 
  require_once('functions.php'); 
  add();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Novo Cliente</h2>

<form action="add.php" method="post">
  <!-- area de campos do form -->
  <hr />
  <div class="row">
    <div class="form-group col-md-4">
      <label for="name">Titulo</label>
      <input type="text" class="form-control" name="customer['titulo']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Filo</label>
      <input type="text" class="form-control" name="customer['filo']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Arquivo</label>
      <input type="text" class="form-control" name="customer['link']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Tipo</label>
      <input type="text" class="form-control" name="customer['tipo']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Imagem</label>
      <input type="text" class="form-control" name="customer['img']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Classificação 1</label>
      <input type="text" class="form-control" name="customer['nomeclatura']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Classificação 2</label>
      <input type="text" class="form-control" name="customer['classe']">
    </div>


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