<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>


<div class="slider-area2 section-bg2" data-background="assets/img/hero/fon.jpg">
    <div class="slider-height2 d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap hero-cap2 text-center">
                        <h2>Notícias</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php

$sql = "SELECT * FROM  noticias ORDER BY criacao DESC ";
$results = $conn->query($sql);
if($row = $results->fetch_assoc()) {
echo '<section class="blog_area section-padding">
    <div class="container">
        <div class="row" style="margin:40px 0;">
            <div class="col-lg-12 mb-12 mb-lg-12">
                <div class="blog_left_sidebar">
                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="'.$row['imagem'].'" alt="">
                            <a href="#" class="blog_item_date">
                                <h3>17</h3>
                                <p>Ago</p>
                            </a>
                        </div>
                        <div class="blog_details">
                            <a class="d-inline-block" href="noticia.php?id='.$row['id'].'">
                                <h2 class="blog-head" style="color: #2d2d2d;">'.$row['titulo'].'</h2>
                            </a>
                            <p>'.substr($row['conteudo'],0, 304).'...</p>
                        </div>
                    </article>
                    <nav class="blog-pagination justify-content-center d-flex">
                        <ul class="pagination">
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Previous">
                                    <i class="ti-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link">1</a>
                            </li>
                            <li class="page-item active">
                                <a href="#" class="page-link">2</a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Next">
                                    <i class="ti-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4">
        </div>
    </div>
    </div>
</div>';
}
?>


<?php include(FOOTER_TEMPLATE); ?>