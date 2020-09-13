<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>
<?php 
$id = $_GET['id'];
$sql = "SELECT * FROM  noticias WHERE id='$id'";
    $results = $conn->query($sql);
    if($row = $results->fetch_assoc()) {
    echo '<main>
    <!--? Hero Start -->
    <div class="slider-area2 section-bg2" data-background="assets/img/hero/fon.jpg">
       <div class="slider-height2 d-flex align-items-center">
          <div class="container">
             <div class="row">
                <div class="col-xl-12">
                      <div class="hero-cap hero-cap2 text-center">
                         <h2>'.$row['Titulo'].'</h2>
                      </div>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- Hero End -->
    <!--? Blog Area Start -->
    <section class="blog_area single-post-area section-padding">
       <div class="container">
          <div class="row">
             <div class="col-lg-12 posts-list">
                <div class="single-post">
                   <div class="feature-img">
                      <img class="img-fluid" src="'.$row['imagem'].'" alt="">
                   </div>
                   <div class="blog_details">
                      <h2 style="color: #2d2d2d;">'.$row['Titulo'].'
                      </h2>
                      <ul class="blog-info-link mt-3 mb-4">
                         <li><a href="#"><i class="fa fa-user"></i> Kamila </a></li>
                         <li><a href="#"><i class="fa fa-comments"></i> </a></li>
                      </ul>
                      '.$row['conteudo'].'
                   </div>
                </div>
               </div>
             </div>
          </div>
       </div>
    </section>
    <!-- Blog Area End -->
 </main>';
   
   
   }
?>




<?php include(FOOTER_TEMPLATE); ?>