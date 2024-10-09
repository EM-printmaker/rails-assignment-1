$(function () {
  // クリックして非表示
  $(".hide").click(function(){
    $(this).animate({opacity: 0}, 200);
  });
});

  $(document).on('turbolinks:load', function() {
    $('.datepicker').datepicker({
      format: "yyyy/mm/dd",
      language: "ja"
    });
  });
