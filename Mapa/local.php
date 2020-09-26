<!DOCTYPE html>
<html>
    <head>
        <title>Geolocation</title>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
        <meta charset="utf-8">
    
        <style>
            #map
            {
                height: 100%;
            }
            html, body 
            {
                height: 100%;
                margin: 0;
                padding: 0;
            }
        </style>
    </head>
    
    <body>
        <div id="map"></div>
        <script>
        
        var map, infoWindow;
        function initMap() 
        {
            var sorocaba = {lat: -23.497272, lng: -47.455759};

            map = new google.maps.Map(document.getElementById('map'), 
            {
            center: {sorocaba},
            zoom: 9
            });
            
            infoWindow = new google.maps.InfoWindow;

            
            if (navigator.geolocation) 
            {
                navigator.geolocation.getCurrentPosition(function(position) 
                {
                    var pos = 
                    {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    infoWindow.open(map);
                    map.setCenter(pos);
                }, 
                function() 
                {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } 
            else 
                {
                handleLocationError(false, infoWindow, map.getCenter());
                }
            }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) 
        {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                                'Error: O serviço de Geolocalização falhou.' :
                                'Error: Seu navegador não suporta essa localização');
            infoWindow.open(map);
        }
        </script>
        
        <script defer
        src="https://maps.googleapis.com/maps/api/js?keyAIzaSyCb1xprYSpXd0q_yDsJ1W2UGhfl9_YGKU0&callback=initMap">
        </script>
    </body>
</html>

