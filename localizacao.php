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
                            <h2>Localização</h2>
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
                
                <h2>Mapa da Localização do Dispositivo</h2>
            </div>
            <div class="about-caption mb-50">
                
                <p>Aqui você poderá observar a sua localização com base no dispositivo atual </p>
            </div>
        </div>

        
    </div>
    <div class="col-xl-12 col-lg-12 col-md-12" style="margin-bottom:30px">
        <div class="progress-table-wrap">
        <iframe src="Mapa/local.php" style="width:100%;min-height:600px; border:none;"></iframe>
        </div>
    </div>
</div>

<?php include(FOOTER_TEMPLATE); ?>