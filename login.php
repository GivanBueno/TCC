<link href="adm/css/bootstrap-login.css" rel="stylesheet" id="bootstrap-css">
<script src="adm/js/bootstrap.min.js"></script>
<!-------  <script src="cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> ---------->

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icone -->
    <div class="fadeIn first">
      <img src="upload/Nova pasta/logo.png" id="icon" alt="User Icon" />
    </div>

    <!-- Form do Login -->
    <form action="logindata.php">
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="Login" value="<?= $customer['email']?>">
      <input type="text" id="password" class="fadeIn third" name="login" placeholder="Senha" <?= $customer['senha']?>>
      <input type="submit" class="fadeIn fourth" value="Entrar">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Não tem cadastro?</a>
    </div>

  </div>
</div>