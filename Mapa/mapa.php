<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "observatorio";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset('utf-8');


$sql = "SELECT * FROM fotos WHERE validado = '1'";
$result = $conn->query($sql);


echo '<!DOCTYPE html>';
echo '<html>';
    echo '<head>';
        echo '<style>';
            echo '#map 
            {
                height: 100%;
            }';
            echo 'html, body 
            {
                height: 100%;
                margin: 0;
                padding: 0;
            }';
        echo '</style>';
    echo '</head>';
    echo '<body>';
        echo '<div id="map"></div>';
        echo '<script>';
            echo 'var map;';
            echo 'function initMap() 
            {
               
                var sorocaba = {lat: -23.497272, lng: -47.455759};
                
                var map = new google.maps.Map(
                    document.getElementById(\'map\'), {zoom: 12, center: sorocaba});
                 
                    // var locations = [';
                    if ($result->num_rows > 0) 
                        {
                            // output data of each row
                            while($row = $result->fetch_assoc()) 
                            {
                            $contentString =
                            '<div id="content">' .
                            '<div id="siteNotice">' .
                            "</div>" .
                            '<h1 id="firstHeading" class="firstHeading">'.$row['nome_comum'].'</h1>' .
                            '<div id="bodyContent">' .
                            "<p>Nome: ".$row['nome_comum']."</p>" .
                            "<p>Nome Científico: ".$row['nome_cientifico']."</p>" .
                            "<p>Encontrado em: ".$row['localizacao']."</p>" .
                            '<p><img style="width: 100%; max-width: 300px" src="'.$row['foto'].'"></p>' .
                            '<p class="text-muted">Créditos: '.$row['nome_envio']."</p>" .
                            "</div>" .
                            "</div>";


                                // echo "['".$row['id']."', ".$row['lat'].",".$row['lng'].",'$contentString'],";
                                ?>

                                infowindow<?=$row['id']?>  = new google.maps.InfoWindow({
                                    content: '<?=$contentString?>'
                                })
                                
                                var marker<?=$row['id']?>  = new google.maps.Marker(
                                {
                                    position: new google.maps.LatLng(<?=$row['lat']?>, <?=$row['lng']?>),
                                    title: <?=$row['id']?>,
                                    map: map
                                });
                                marker<?=$row['id']?>.addListener("click", () => {
                                    infowindow<?=$row['id']?>.open(map, marker<?=$row['id']?> );
                                });
                                <?php
                            }

                            $row = $result->fetch_assoc();
                            
                        } 
                        echo'}';
                    // echo '];    

                //     for (var i = 0; i < locations.length; i++) 
                // {  
                    
                // }   
            // }';

                    
    echo '</script>'.PHP_EOL;
    echo '<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqeFKoCq4Ruu4CQDd-4zV-x7rGb_uxlFQ&callback=initMap"></script>';
    echo '</body>';
echo '</html>';

