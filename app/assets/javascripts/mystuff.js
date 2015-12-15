$(document).ready( function() {

  var $container = $('.masonry-container');
  $container.imagesLoaded( function () {
    $container.masonry({
      itemSelector: '.item',
    });
  });

  $('button.preview').click(function () {
    $(this).toggleClass('btn-default btn-danger');
  });

});


handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'map'}}, function(){
  markers = handler.addMarkers([
    {
      lat: 0,
      lng: 0,
      picture: {
        url: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
        width:  36,
        height: 36
      },
      infowindow: "hello!"
    }
  ]);
});

var handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'multi_markers'}}, function(){
  var markers = handler.addMarkers([
    { lat: 43, lng: 3.5},
    { lat: 45, lng: 4},
    { lat: 47, lng: 3.5},
    { lat: 49, lng: 4},
    { lat: 51, lng: 3.5}
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
}); 