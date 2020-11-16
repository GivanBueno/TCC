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
                <div class="col-xl-12">
                    <div class="hero-cap hero-cap2">
                            <h2>Pesquisas Realizadas</h2>
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
    <div class="row mt-4">
        <?php
            $sql = "SELECT * FROM classes";
            $query = $conn->query($sql); $response=[];
            while($row=$query->fetch_assoc()) {
                $response[]=$row;
            }
            foreach($response as $object) {
                ?>
                <a href="tipo.php?search=<?=$object['classe_name']?>">
                    <div class='col'>
                        <div class="row">
                            <div class="col-12 text-dark text-center mt-2"><i class="fas fa-5x fa-<?=$object['icon']?>"></i></div>
                            <div class="col-12 text-dark text-center mb-2"><?=$object['classe']?></div>
                        </div>
                    </div>
                </a>
                <?php
            }
        ?>
    </div>
</div>

<?php require(FOOTER_TEMPLATE); ?>