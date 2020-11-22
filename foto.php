<style>
.links{color:#a41719}
.links:hover{color:#a4171960}

</style>
<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); 
$classe = filter_input(INPUT_GET,'search',FILTER_SANITIZE_STRING);
$sql = "SELECT * FROM fotos WHERE nome_comum = '$classe'";
$query = $conn->query($sql); $response=[];
while($row=$query->fetch_assoc()) 
{
    $response=$row;
}
$classe2 = $response['nome_comum'];
?>
<script src="<?=BASEURL?>assets/js/jquery.js"></script>
<script src="<?=BASEURL?>DataTables/datatables.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
<script>
    $(document).ready(function() {
        // $('#preloader-active').hide();
    } );
</script>


<div class="slider-area2 section-bg2" data-background="assets/img/fonny.png">
    <div class="slider-height2 d-flex align-items-center" style="background: #00000060;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12" style="text-align:center">
                    <div class="hero-cap hero-cap2">
                            <h2>Galeria</h2>
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
                
                <h2><?=$classe2?></h2>
            </div>
            <div class="about-caption mb-50">
                
                <p>Aqui temos o mapa da região de Sorocaba mostrando a localização do animal no momento da foto</p>
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

    <div class="about-caption mb-50">
        <p>Acervo de fotos do <?=$classe2?></p>
    </div>

    <div class="row">
        <?php
        $sql = "SELECT * FROM fotos WHERE  nome_comum = '$classe2'";    
            if($results = $conn->query($sql))
            {
                while ($row = $results->fetch_assoc())
                {       
                        
                    echo'<div class="card col-md-3" style="width: 18rem;padding-top:5px">
                    <img class="card-img-top" src="'.$row['foto'].'" alt="Card image cap">
                    <div class="card-body">
                      <p class="card-title"><strong>'.$row['nome_comum'].'</strong></p>
                      <p class="card-text"><strong><i>'.$row['nome_cientifico'].'<strong></i> </p>
                      <p>Tirada por: '.$row['nome_envio'].' </p>
                      <p>'.$row['localizacao'].'</p>
                    </div>
                  </div>';
                }

            }
        ?>
    </div>
</div>
<?php include(FOOTER_TEMPLATE); ?>