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
      <label for="page">Pagina</label>
      <select name="customer['pagina']" id="page" class="form-control">
        <option value="<?=$customer['pagina']?>"><?=$customer['pagina']?></option>
      </select> 
    </div>

    <div class="form-group col-md-12">
      <label for="campo2">Conteudo</label>
      <textarea class="form-control" name="customer['txt']"><?= $customer['txt']?></textarea>
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