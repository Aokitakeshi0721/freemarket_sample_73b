$(function(){
  $('.showThumbnails li').hover(function(){
      //サムネのインデックスを取得
      let index = $('.showThumbnails li').index(this);
      //サムネの画像URLを取得
      let imageurl = $('.showThumbnails li').eq(index).find('img').attr('src');
      // //元のメイン画像を保存しておく
      // defaultImage = $('img.showImage').attr('src');
      //大画像URLの書き換え
      $('img.showImage').attr('src',imageurl);
  });
});
// ,function(){
//   //元のメイン画像に戻す
//   $('img.showImage').attr('src',defaultImage);
// }

$(function() {
  $(".pop").click(function(e) {
    e.preventDefault();
    var popid = $(this).attr("href");
    $(popid).fadeIn();
    $(".popup").fadeIn(1);
  });
  $(".popup,.close").click(function() {
    $(".popup_wrapper:visible").fadeOut();
    $(".popup").fadeOut();
  });
});