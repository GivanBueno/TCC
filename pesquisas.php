<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>

    <script src="assets/js/jquery.js"></script>

    <script>
        $(document).ready(function() {
        $('#example').DataTable();
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
    <div class="row">
        <div class="col-md-12">
            <div class="section-tittle mb-35" style="margin-top:3%">
                <h2>Pesquisas Especificas</h2>
            </div>
            <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6" style="text-align: center;">
                        <div class="single-cat">
                            <div class="cat-icon">
                                <img src="assets/img/gallery/k.png" alt="" style="max-width: 80px;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="livros.php"><span class="element">Livros</span></a></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6" style="text-align: center;">
                        <div class="single-cat">
							<div class="cat-icon">                                
							<img src="assets/img/gallery/l.png" alt="" style="max-width: 80px;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="artigos.php"><span class="element">Artigos </span></a></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6" style="text-align: center;">
                        <div class="single-cat">
                            <div class="cat-icon">
                                <img src="assets/img/gallery/word.png" alt="" style="max-width: 80px;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="links.php"><span class="element">Links úteis</span></a></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6" style="text-align: center;">
                        <div class="single-cat">
                            <div class="cat-icon">
                                <img src="assets/img/gallery/n.png" alt="" style="max-width: 80px;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="referencias.php"><span class="element">Documentos de Referencias</span></a></h5>
                            </div>
                        </div>
                    </div>
                </div>

        </div>
    </div>


        
    <div class="row">
        <div class="col-xl-8 col-lg-9 col-md-12">
            <div class="section-tittle mb-35" style="margin-top:3%">
                <h2>Central de Pesquisa</h2>
            </div>
            <div class="about-caption mb-50">
                <p>Nesta pagina encontra-se todo o material coletado pelo observatório atraves de pesquisas com referencias bibligraficas </p>
            </div>
        </div>
    </div>



    <div class="col-xl-12 col-lg-12 col-md-12" style="margin-bottom:30px">
        <div class="progress-table-wrap">
        <iframe src="tabela/index.php" style="width:100%;min-height:800px; border:none;"></iframe>
        </div>
    </div>
</div>
<?php include(FOOTER_TEMPLATE); ?>