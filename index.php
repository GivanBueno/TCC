<style>
.cha li{
    list-style: outside!important;
}

.linku{ color: #000000}
.linku:hover{color: #00000050}
</style>

<?php require_once 'config.php'; ?>
<?php include(HEADER_TEMPLATE); ?>
<?php require_once DBAPI; ?>
<main>
       
<?php

    $sql = "SELECT * FROM  noticias ORDER BY created DESC LIMIT 1";
    $results = $conn->query($sql);
    if($row = $results->fetch_assoc()) {

        echo ' <!--? slider Area Start-->
        <div class="slider-area position-relative" style="background:url('.$row['imagem'].')!important; background-repeat: no-repeat;background-size: auto;">
            <div class="slider-active">
                <!-- Single Slider -->
                    <div class="single-slider slider-height d-flex align-items-center">
                        <div class="container">
                            <div class="row">
                                <div style="background: #00000090;padding: 10;" class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <div class="hero__caption">';
                                        echo '<h1 data-animation="fadeInLeft" data-delay="0.2s"><span>'.$row['Titulo'].'</span></h1>
                                        <p data-animation="fadeInLeft" data-delay="0.4s">'.substr($row['conteudo'],0, 304).'...</p><a href="noticia.php?id='.$row['id'].'" class="btn hero-btn" data-animation="fadeInLeft" data-delay="0.7s">Ler Mais <i class="ti-arrow-right"></i></a>';
                                    }
                echo '</div></div>
                </div>
            </div>
        </div>          
    </div>
    <!-- Single Slider -->
    </div>';
?>
                                

        </div>
        <!-- slider Area End-->
        <!--? About 1 Start-->
        <section class="about-low-area section-padding40">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="about-caption mb-50">
                            <!-- Section Tittle -->
                            <div class="section-tittle mb-35">
                                <span class="element">Sobre Nós</span>
                                <h2>OBSERVATÓRIO DA BIODIVERSIDADE URBANA</h2>
                            </div>
                            <p>O Observatório da Biodiversidade Urbana é plataforma digital que reúne todo conteúdo existente a respeito da biodiversidade do município de Sorocaba e sua região metropolitana (RMS) a fim de democratizar o conhecimento sobre a temática. O projeto foi realizado pelo Laboratório de Ecologia Estrutural e Funcional de Ecossistemas – UNIP/Sorocaba e se consiste em compilar, organizar e divulgar informações de forma acessível para população, mas principalmente para a comunidade científica, como uma ferramenta para a conservação e valorização da biodiversidade.<br>
							Além da facilitação que a ferramenta traz para quem deseja fazer pesquisas relacionadas a biodiversidade urbana, pretende-se também ampliar a articulação entre o executivo e as instituições de pesquisa, tendo em vista que para se conservar e criar planos de ação mais eficazes é necessário conhecer. Por tanto a conversa entre a academia e o governo se torna indispensável.
						</p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- About  End-->
        
        <!--? Categories Area Start -->
		<div class="categories-area section-padding40 about-low-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <div class="section-tittle text-center mb-100">
                            <span class="element">Ferramentas</span>
                            <h2>Nesta seção encontram-se ferramentas para lhes auxiliar</h2>
                        </div>
                    </div>
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
							<div class="cat-icon" >                                
							<img src="assets/img/gallery/l.png" alt="" style="max-width: 80px;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="artigos.php"><span class="element">Artigos </span></a></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6" style="text-align: center;">
                        <div class="single-cat">
                            <div class="cat-icon" >
                                <img src="assets/img/gallery/word.png" alt="" style="max-width: 80px;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="links.php"><span class="element">links úteis</span></a></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6" style="text-align: center;">
                        <div class="single-cat">
                            <div class="cat-icon" >
                                <img src="assets/img/gallery/n.png" alt="" style="max-width: 80px;background: #f7f7fd;">
                            </div>
                            <div class="cat-cap">
                                <h5><a href="referencias.php"><span class="element">Documentos de Referencias </span></a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Services Area End -->
        <!-- Contact form Start -->
        <div class="contact-form testimonial-area section-padding40 mb-40">
            <div class="container">
                <!-- Section Tittle -->
                
                <div class="row no-gutters">
                    <div class="col-lg-6 col-md-12">
                        <!-- contact-form -->
                        <div class="form-wrapper" style="padding: 45px;">
                            <div class="row ">
                                <div class="col-xl-12">
                                    <div class="row justify-content-center"style="max-height: 86px;">
                                        <div class="col-xl-5 col-lg-6 col-md-8 col-sm-10" style="max-height: 86px;">
                                            <div class="section-tittle text-center mb-100">
                                                <span class="element">Parques da Cidade</span>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="cha">
                                        <li><a href="http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-natural-chico-mendes/" class="linku"> Parque Natural Chico Mendes</a></li>
                                        <li><a href="http://www.sorocaba.sp.gov.br/zoo/" class="linku">Parque Zoológico Municipal Quinzinho de Barros</a></li>
                                        <li><a href="https://meioambiente.sorocaba.sp.gov.br/educacaoambiental/parque-natural-municipal-corredores-de-biodiversidade-pnmcbio/" class="linku">Parque Natural Municipal Corredores da Biodiversidade</a> </li>
                                        <li><a href="http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-ecologico-ouro-fino/" class="linku">Parque Natural Ouro Fino</a></li>
                                        <li><a href="https://agendasorocaba.com.br/parque-biquinha/" class="linku">Parque da Biquinha</a></li>
                                        <li><a href="https://meioambiente.sorocaba.sp.gov.br/educacaoambiental/parque-natural-agua-vermelha/" class="linku">Parque da Água Vermelha</a></li>
                                        <li><a href="http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-braulio-guedes-da-silva/" class="linku">Estação Ecológica Bráulio Guedes da Silva</a></li>
                                        <li><a href="http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-governador-mario-covas/" class="linku">Estação Ecológica Governador Mário Covas</a></li>
                                        <li><a href="http://meioambiente.sorocaba.sp.gov.br/jardimbotanico/" class="linku">Jardim Botânico Irmãos Vilas Boas</a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-6 col-md-12">
                        <!-- slider -->
                        <div class="single-man-slider">
                            <div class="man-slider-active">
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/1.png" alt="chico mendes">
                                </div>                           
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/4.png" alt="Jardim Botânico Irmãos Vilas Boas">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/5.png" alt="Parque da Biodiversidade">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/6.png" alt="parque da biquinha">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/7.png" alt="Parque Natural Ouro Fino">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/8.png" alt="parque">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/9.png" alt="photoduran-agua-vermelha">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/3.png" alt="Estação Ecológica Governador Mário Covas">
                                </div>
                                <div class="single-mam-img">
                                    <img src="assets/img/parques/2.png" alt="Estação Ecológica Bráulio Guedes da Silva">
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    
                </div>
            </div>
        </div>
        <!-- Contact form End -->
        <!--? Blog Area Start -->


        <?php

            echo '<section class="home-blog-area pb-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="section-tittle mb-100">
                                    <span class="element">Ultimas Notícias</span>
                                    <h2>Notícias & Artigos</h2>
                                    <p>Os dois ultimos Artigos e noticias publicados estao localizados a direita. Para ver todos clique no link abaixo</p>
                                    <a href="noticias.php" class="btn hero-btn">Ver Todos</a>
                                </div>
                            </div>';

            $sql = "SELECT * FROM  noticias ORDER BY created ";
            $results = $conn->query($sql);
            if($row = $results->fetch_assoc()) {
                echo '<div class="col-lg-4 col-md-6">
                        <div class="home-blog-single mb-30">
                            <div class="blog-img-cap">
                                <div class="blog-img">
                                    <img src="'.$row['imagem'].'" alt="">
                                </div>
                                <div class="blog-cap">
                                    <p>18 Ago</p>
                                    <h3><a href="noticia.php?id='.$row['id'].'">'.$row['Titulo'].'</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>';
            }
        ?>
                </div>
            </div>
        </section>
        <!-- Blog Area End -->
        <!--?  Map Area start  -->
        <section class="Map-area">
            <div class="d-none d-sm-block">
               <!--MAPA VEM AKI-->
        </section>
        <!-- Map Area End -->
        <!-- Want To work 2-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper w-padding3">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-3">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <div class="logo">
                                    <img src="assets/img/logo/logo.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8">
                            <div class="double-btn f-right ">
                                <a href="#" class="btn w-btn wantToWork-btn mr-20">Observatório <i class="ti-arrow-right"></i></a>
                                <a href="#" class="btn2 w-btn wantToWork-btn">Links de Pesquisa <i class="ti-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Want To work End 2-->
    </main>


<?php include(FOOTER_TEMPLATE); ?>