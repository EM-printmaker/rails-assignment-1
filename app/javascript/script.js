$(function () {
  // クリックして非表示
  $(".hide").click(function(){
    $(this).animate({opacity: 0}, 200);
  });
});