$(document).on('ready page:change turbolinks:load', function(e) {
  $('.btn-print').click( function() {
    window.print();
  })
})