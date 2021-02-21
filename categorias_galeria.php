<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>
<script src="<?=BASEURL?>assets/js/jquery.js"></script>
<script src="<?=BASEURL?>DataTables/datatables.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
<script>
    $(document).ready(function() {
        // $('#preloader-active').hide();
    } );
</script>

<div class="slider-area2 section-bg2" data-background="assets/img/gallery/pesquisa.png">
    <div class="slider-height2 d-flex align-items-center" style="background: #00000060;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12" style="text-align:center">
                    <div class="hero-cap hero-cap2 ">
                            <h2>Galeria</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
     <br>
    <h1>Categorias</h1>
    <br>
    <div class="container" style="padding:30px 0">
    <div class="row">
    <?php
        $sql = "SELECT DISTINCT * FROM tipos_animais";    
            if($results = $conn->query($sql))
            {
                while ($row = $results->fetch_assoc())
                {           
                    echo'<div class="card col-md-3" style="width: 18rem; padding-top:5px">
                    <a href="tipo_galeria.php?search='.$row['tipo'].'"> <img class="card-img-top" src="'.$row['icone'].'" alt="Card image cap"> </a>
                    <div class="card-body">
                      <p class="card-title"> <strong>'.$row['tipo'].' </strong></p>
                    </div>
                  </div>';
                }

            }
        ?>
    </div>
</div>
</div>

<?php require(FOOTER_TEMPLATE); ?>