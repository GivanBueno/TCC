<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); 
$classe = filter_input(INPUT_GET,'search',FILTER_SANITIZE_STRING);
$sql = "SELECT * FROM tipos_animais WHERE tipo = '$classe'";
$query = $conn->query($sql); $response=[];
while($row=$query->fetch_assoc()) 
{
    $response=$row;
}
$classe2 = $response['tipo'];
?>
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
    <h1>Buscar por: <?=$classe2?></h1>
    <br>
</div>

<div class="container" style="padding:40px 0">
    <div class="row">
        <?php
        $sql = "SELECT DISTINCT nome_comum, nome_cientifico, foto FROM fotos WHERE  categoria = '$classe'";    
            if($results = $conn->query($sql))
            {
                while ($row = $results->fetch_assoc())
                {       
                        
                    echo'<div class="card col-md-3" style="width: 18rem;padding-top:5px">
                    <a href="foto.php?search='.$row['nome_comum'].'"> <img class="card-img-top" src="'.$row['foto'].'" alt="Card image cap"> </a>
                    <div class="card-body">
                    <p class="card-title"> <strong>'.$row['nome_comum'].' </strong></p>
                    <p class="card-title"> <strong><i>'.$row['nome_cientifico'].'</i> </strong></p>
                    </div>
                  </div>';
                }

            }
        ?>
    </div>
</div>

<?php require(FOOTER_TEMPLATE); ?>