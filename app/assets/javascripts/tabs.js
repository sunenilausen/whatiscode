$(document).on('turbolinks:load', function() {
  $(".next-tab").click(function() {
    console.log($(this).data("target"))
    $('ul.tabs').tabs('select_tab', $(this).data("target"));
  });
});