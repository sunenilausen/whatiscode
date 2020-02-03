$(document).on('turbolinks:load', function(e) {
  $('#run-js-welcome').click( function() {
    if (confirm('Vil du lære JavaScript?')) {
      window.location.href = 'http://hvaderkode.dk/javascript'
    } else {
      window.location.href = 'http://hvaderkode.dk/workshops'
    }
  })
})
