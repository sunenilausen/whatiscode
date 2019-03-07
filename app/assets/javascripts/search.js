$(document).on('turbolinks:load', function(){
  $('.search-toggle').on('click', function(event) {
    $("#article_search").addClass("show");
    $("#q_title_or_category_title_cont").focus();
  });

  $("#q_title_or_category_title_cont").focusout(function(event) {
    $("#article_search").removeClass("show");
  });
});