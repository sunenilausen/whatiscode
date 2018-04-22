$(document).on('turbolinks:load', function() {
  $('.flash').append('<button class="waves-effect btn-flat right close"><i class="material-icons">close</i></button>');

  $('body').on('click', '.flash .close', function() {
      $(this).parent().fadeOut(300, function() {
          $(this).remove()
      })
  })
})