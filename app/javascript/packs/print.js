$(document).on('turbolinks:load', function(e) {
  $('.btn-print').click( function() {
    window.print();
  })
})