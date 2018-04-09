$(document).on('ready page:change turbolinks:load', function(e) {
  $('#run-js-welcome').click( function() {
    if (confirm('Vil du lære JavaScript?')) { 
      window.location.href = 'http://carlsbergpirates.dk/javascript'
    } else {
      window.location.href = 'http://carlsbergpirates.dk/workshops'
    }
  })
})