$(document).on('turbolinks:load', function() {
  $("#article_insertions").on("cocoon:after-insert",
  function() {
    window.materializeForm.init()
  });
});
