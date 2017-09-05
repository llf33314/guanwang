
  $(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
             ///
             /*console.log($(window).scrollTop())*/
             if(scrollTop >1300 && scrollTop < 1600) {
                 $(".a-call-gray-box").find(".a-call-phone").addClass("fadeIn");
                 setTimeout(function () {
                     $(".a-call-phone").find("#phone1").addClass("fadeIn");
                 }, 500);
                 setTimeout(function () {
                     $(".a-call-phone").find("#phone2").addClass("fadeIn");
                 }, 1000);
                 setTimeout(function () {
                     $(".a-call-phone").find("#phone3").addClass("fadeIn");
                 }, 1500);
                 setTimeout(function () {
                     $(".a-call-phone").find("#phone4").addClass("fadeIn");
                 }, 2000);
                 setTimeout(function () {
                     $(".a-call-phone").find("#phone5").addClass("fadeIn");
                 }, 2500);

             }
        if(scrollTop >2100 && scrollTop < 2300) {
            $(".a-call-standard").find(".b-call").addClass("show");
            setTimeout(function () {
                $(".a-call-phone").find("#phone1").addClass("fadeIn");
            }, 500);
            setTimeout(function () {
                $(".a-call-phone").find("#phone2").addClass("fadeIn");
            }, 1000);
            setTimeout(function () {
                $(".a-call-phone").find("#phone3").addClass("fadeIn");
            }, 1500);
            setTimeout(function () {
                $(".a-call-phone").find("#phone4").addClass("fadeIn");
            }, 2000);
            setTimeout(function () {
                $(".a-call-phone").find("#phone5").addClass("fadeIn");
            }, 2500);

        }
    });
});



