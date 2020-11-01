<style>
.links{color:#a41719}
.links:hover{color:#a4171960}

</style>
<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>

<div class="slider-area2 section-bg2" data-background="assets/img/fonny.png">
    <div class="slider-height2 d-flex align-items-center" style="background: #00000060;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12" style="text-align:center">
                    <div class="hero-cap hero-cap2">
                            <h2>Mapa</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-xl-8 col-lg-9 col-md-12">
            <div class="section-tittle mb-35" style="margin-top:3%">
                
                <h2>Mapa da vida local da região de Sorocaba</h2>
            </div>
            <div class="about-caption mb-50">
                
                <p>Aqui temos o mapa da região de Sorocaba mostrando as entradas da comunidade </p>
            </div>
        </div>

        
    </div>
    <div class="col-xl-12 col-lg-12 col-md-12" style="margin-bottom:30px">
        <div class="progress-table-wrap">
        <iframe src="Mapa/mapa.php" style="width:100%;min-height:600px; border:none;"></iframe>
        </div>
    </div>
</div>


<div class="container" style="padding:40px 0">
    <div class="row">
        <?php
        $sql = "SELECT * FROM fotos";    
            if($results = $conn->query($sql))
            {
                while ($row = $results->fetch_assoc())
                {           
                    echo'<div class="card col-md-3" style="width: 18rem;">
                    <img class="card-img-top" src="'.$row['foto'].'" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">'.$row['nome_comum'].'</h5>
                      <p class="card-text">'.$row['nome_cientifico'].', '.$row['id_usuario'].' <br> 
                      <strong>'.$row['localizacao'].'</strong></p>
                    </div>
                  </div>';
                }

            }
        ?>
    </div>
</div>
<?php include(FOOTER_TEMPLATE); ?>