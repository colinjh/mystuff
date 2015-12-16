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


