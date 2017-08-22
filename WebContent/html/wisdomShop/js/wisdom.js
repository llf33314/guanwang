
  $(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();

             /*console.log($(window).scrollTop())*/

             if(scrollTop >100 && scrollTop < 306) {
                 $(".a-floor-2-r").find(".xab").addClass("show");
                 $(".a-floor-2").find(".a-floor-2-r").addClass("fadeInUp");
                 setTimeout(function () {
                     $(".a-floor-2-r").find("#a-floor-pix3").addClass("fadeIn");
                 }, 500);
                 setTimeout(function () {
                     $(".a-floor-2-r").find(".a-floor-txt1").addClass("fadeIn");
                 }, 1500);

             }
    });
});



