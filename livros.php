<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>

<div class="slider-area2 section-bg2" data-background="assets/img/gallery/pesquisa.png">
    <div class="slider-height2 d-flex align-items-center" style="background: #00000060;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap hero-cap2">
                            <h2>Livros</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="container">
    <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12" style="margin-bottom:30px">
            <div class="progress-table-wrap">
            <iframe src="tabela/livros.php" style="width:100%;min-height:800px; border:none;"></iframe>
            </div>
        </div>
    </div>
</div>

<?php include(FOOTER_TEMPLATE); ?>