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
      <label for="page">Pagina</label>
      <select name="customer['pagina']" id="page" class="form-control">
        <option value="home">Home</option>
        <option value="noticias">Noticias</option>
        <option value="pesquisa">Pesquisas</option>
        <option value="mapa">Mapas</option>
        <option value="LEEF">LEEF</option>
        <option value="contato">Contato</option>
      </select> 
    </div>

    <div class="form-group col-md-12">
      <label for="campo2">Conteudo</label>
      <textarea class="form-control" name="customer['txt']"></textarea>
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