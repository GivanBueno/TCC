<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "obu";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset('utf-8');


$sql = "SELECT * FROM spawpoint";
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
            echo 'function initMap() {
               
                var sorocaba = {lat: -23.497272, lng: -47.455759};
                
                var map = new google.maps.Map(
                    document.getElementById(\'map\'), {zoom: 12, center: sorocaba});
                 
                    var locations = [';
                    if ($result->num_rows > 0) 
                        {
                            // output data of each row
                            while($row = $result->fetch_assoc()) 
                            {
                             
                                echo "['".$row['id']."', ".$row['lat'].",".$row['lng']."],";
                             
                            }

                            $row = $result->fetch_assoc();
                            
                        } 
                    echo '];    

                    for (var i = 0; i < locations.length; i++) 
                {  
                    var marker = new google.maps.Marker(
                        {
                            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                            title: locations[i][0],
                            map: map
                        });
                }   
            }';

                    
    echo '</script>';
    echo '<script defer src="https://maps.googleapis.com/maps/api/js?keyAIzaSyCb1xprYSpXd0q_yDsJ1W2UGhfl9_YGKU0
    &callback=initMap">
     </script>';
    echo '</body>';
echo '</html>';

