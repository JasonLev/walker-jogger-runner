$(function (){
var map;
var markers = [];
function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(37.7833,-122.4167),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('canvas'),
      mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);

});

var markers = function() {
  $.ajax({
      type: "GET",
      dataType: "json",
      data: {location: location},
      url: '../api'
    }).done(function(data) {
      competitions = data["_results"];
    });
};
console.log(markers);
// console.log(competitions);

