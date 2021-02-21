<?php 
  require_once('functions.php'); 
  add();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Nova Foto</h2>

<form action="add.php" method="post">
  <!-- area de campos do form -->
  <hr />
  <div class="row">
    <div class="form-group col-md-4">
      <label for="name">ID do usuário</label>
      <input type="text" class="form-control" name="customer['id_usuario']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Nome de quem enviou</label>
      <input type="text" class="form-control" name="customer['nome_envio']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Nome do animal</label>
      <input type="text" class="form-control" name="customer['nome_comum']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Nome científico do animal</label>
      <input type="text" class="form-control" name="customer['nome_cientifico']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Categoria do animal</label>
      <input type="text" class="form-control" name="customer['categoria']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Localização da foto</label>
      <input type="text" class="form-control" name="customer['localizacao']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Latitude</label>
      <input type="text" class="form-control" name="customer['lat']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Longitude</label>
      <input type="text" class="form-control" name="customer['lng']">
    </div>

    <div class="form-group col-md-4">
      <label for="name">Link da foto</label>
      <input type="text" class="form-control" name="customer['foto']">
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