$(document).on('ready page:change turbolinks:load', function(e) {
  if ( $( ".remark-slides" ).length ) {
    var slideshow = remark.create({ ratio: '16:9' });
  };
});