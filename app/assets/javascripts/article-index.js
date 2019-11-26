// $(function(){
//   $(document).on('turbolinks:load', function() { 
//     var $width =640; // 横幅
//     var $height =300; // 高さ
//     var $interval = 3000; // 切り替わりの間隔（ミリ秒）
//     var $fade_speed = 1000; // フェード処理の早さ（ミリ秒）
//     $("#article_header ul li").css({"position":"relative","overflow":"hidden","width":$width,"height":$height});
//     $("#article_header ul li").hide().css({"position":"absolute","top":0,"left":0});
//     $("#article_header ul li:first").addClass("active").show();
//     setInterval(function(){
//     var $active = $("#article_header ul li.active");
//     var $next = $active.next("li").length?$active.next("li"):$("#article_header ul li:first");
//     $active.fadeOut($fade_speed).removeClass("active");
//     $next.fadeIn($fade_speed).addClass("active");
//     },$interval);

//   }); 
// });

