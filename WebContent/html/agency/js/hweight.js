
  $(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
             ///
             // console.log($(window).scrollTop())

             if(scrollTop >1235 && scrollTop < 1386) {
                 $(".a-ag-development").find(".a-ag-development-box").addClass("fadeInUp");
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".a-ag-d-pix-img1").addClass("fadeInUp");
                 }, 300);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".a-ag-d-pix-img2").addClass("fadeInUp");
                 }, 600);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".a-ag-d-pix-img3").addClass("fadeInUp");
                 }, 900);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the1").addClass("fadeIn");
                 }, 1100);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the2").addClass("fadeIn");
                 }, 1400);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the3").addClass("fadeIn");
                 }, 1700);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the4").addClass("fadeIn");
                 }, 2000);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the5").addClass("fadeIn");
                 }, 2300);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the6").addClass("fadeIn");
                 }, 2600);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the7").addClass("fadeIn");
                 }, 2900);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the8").addClass("fadeIn");
                 }, 3100);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the9").addClass("fadeIn");
                 }, 3400);

             }
    });
});



