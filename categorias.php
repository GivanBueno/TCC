<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>
<?php include(HEADER_TEMPLATE); ?>
<script src="<?=BASEURL?>assets/js/jquery.js"></script>
<script src="<?=BASEURL?>DataTables/datatables.js"></script>
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
    <div class="row">
        <?php
            $db = open_database();
            $sql = "SELECT * FROM classes";
            $query = $db->query($sql); $response=[];
            while($row=$query->fetch_assoc()) {
                $response[]=$row;
            }
            foreach($response as $object) {
                
            }
        ?>
    </div>
</div>

<?php include(FOOTER_TEMPLATE); ?>