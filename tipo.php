<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); 
$classe = filter_input(INPUT_GET,'search',FILTER_SANITIZE_STRING);
$sql = "SELECT * FROM classes WHERE classe_name = '$classe'";
$query = $conn->query($sql); $response=[];
while($row=$query->fetch_assoc()) {
    $response=$row;
}
$classe2 = $response['classe'];
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
    <h1>Documentos: <?=$classe2?></h1>
    <br>
    <div class="row mt-4">
        <?php
            
            
            if($classe2 == 'Artigos Científicos') {
                $sql2 = "SELECT DISTINCT nomeclatura FROM documentos WHERE classe = '$classe2'";
                $query2 =$conn->query($sql2); $response2=[];
                while($row=$query2->fetch_assoc()) {
                    $response2[]=$row;
                } 
                foreach($response2 as $object) {
                    ?>
                    <a href="articlesa.php?search=<?=$object['nomeclatura']?>">
                        <div class='col'>
                            <div class="row">
                                <div class="col-12 text-dark text-center mt-2"><i class="fas fa-5x fa-paw"></i></div>
                                <div class="col-12 text-dark text-center mb-2"><?=$object['nomeclatura']?></div>
                            </div>
                        </div>
                    </a>
                    <?php
                }
            } else {
                $sql2 = "SELECT * FROM documentos WHERE classe = '$classe2'";
                $query2 =$conn->query($sql2); $response2=[];
                while($row=$query2->fetch_assoc()) {
                    $response2[]=$row;
                } 
                echo "<table class='table table-bordered'>";
                foreach($response2 as $object) {
                    ?>
                        <tr>
                            <td><a href="doc.php?search=<?=$object['link']?>" target="_blank" class="text-dark" style="border: 1px solid black !important; background: green !important;; color: white !important; padding: 5px; border-radius: 5px;"><i class="fas fa-lg fa-file-alt"></i></a></td>
                            <td class="text-dark"><?=$object['titulo']?></td>
                        </tr>
                    <?php
                }
                echo "</table>";
            }
            
            
        ?>
    </div>
</div>

<?php require(FOOTER_TEMPLATE); ?>