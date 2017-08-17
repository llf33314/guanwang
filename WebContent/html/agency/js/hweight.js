
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
                 }, 500);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".a-ag-d-pix-img2").addClass("fadeInUp");
                 }, 1000);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".a-ag-d-pix-img3").addClass("fadeInUp");
                 }, 1500);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the1").addClass("fadeIn");
                 }, 2000);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the2").addClass("fadeIn");
                 }, 2500);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the3").addClass("fadeIn");
                 }, 3000);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the4").addClass("fadeIn");
                 }, 3500);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the5").addClass("fadeIn");
                 }, 4000);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the6").addClass("fadeIn");
                 }, 4500);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the7").addClass("fadeIn");
                 }, 5000);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the8").addClass("fadeIn");
                 }, 5500);
                 setTimeout(function () {
                     $(".a-ag-development-box").find(".the9").addClass("fadeIn");
                 }, 6000);

             }
    });
});



