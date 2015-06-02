
$(document).ready(function(){

function initialize(latitude, longitude) {
    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      center: new google.maps.LatLng(latitude, longitude),
      zoom: 14,
      mapTypeId: google.maps.MapTypeId.TERRAIN
      }
    var map = new google.maps.Map(mapCanvas, mapOptions)
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(40.735577, -73.990448),
      map: map,
      title: "union square"
    })
    //marker.setMap(map);
    }

function getLocation(){ navigator.geolocation.getCurrentPosition(function(position){
     var latitude = position.coords.latitude;
     var longitude = position.coords.longitude;

      new initialize(latitude, longitude);
    })
  }
 
 getLocation();

})