$(function () {
  // クリックして非表示
  $(".hide").click(function(){
    $(this).animate({opacity: 0}, 200);
  });
  // 削除のidを連番化
  $(".delete").each(function(i){
    $(this).attr("id","delete" + (i+1));
  });
  $(".delete-button").each(function(i){
    $(this).attr("id", (i+1));
  });
});