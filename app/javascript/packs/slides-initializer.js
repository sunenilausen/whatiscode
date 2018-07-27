$(document).on('turbolinks:load ready', function(e) {
  if ( $( ".remark-slides" ).length >= 1 ) {
    remark.create({ ratio: '16:9' });
    $( "html.remark-container" ).each( function() {
      $(this).removeClass();
    })
  }
});