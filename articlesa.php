<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); 
$classe = filter_input(INPUT_GET,'search',FILTER_SANITIZE_STRING);
?>
<script src="<?=BASEURL?>assets/js/jquery.js"></script>
<script src="<?=BASEURL?>DataTables/datatables.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
<script>
    $(document).ready(function() {
        // $('#preloader-active').hide();
    } );
</script>

<style>

</style>

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
    <h1>Documentos: <?=$classe?></h1>
    <br>
    <a href="javascript:history.back()" class="btn-danger" style="display: inline-block;font-weight: 400;text-align: center;white-space: nowrap;vertical-align: middle;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;border: 1px solid transparent;padding: .375rem .75rem;font-size: 1rem;line-height: 1.5;border-radius: .25rem;transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out">Voltar</a>
    <br>
    <div class="container mt-4">
        <table class='table table-bordered'>
        <?php
                $sql2 = "SELECT * FROM documentos WHERE nomeclatura = '$classe'";
                $query2 =$conn->query($sql2); $response2=[];
                while($row=$query2->fetch_assoc()) {
                    $response2[]=$row;
                } 
                foreach($response2 as $object) {
                    ?>
                        <tr>
                            <td><a href="<?=$object['link']?>" target="_blank" class="text-dark" style="border: 1px solid black !important; background: green !important;; color: white !important; padding: 5px; border-radius: 5px;"><i class="fas fa-lg fa-file-alt"></i></a></td>
                            <td class="text-dark"><?=$object['titulo']?></td>
                        </tr>
                    <?php
                }
        ?>
        </table>
    </div>
</div>

<?php require(FOOTER_TEMPLATE); ?>