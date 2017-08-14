$(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
             ///
              /*console.log($(window).scrollTop())*/
             
             if(scrollTop >120 && scrollTop <300){
            	 $(".a-hw-third").find(".a-hw-third-ul").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".a-hw-third-ul").find("#third1").addClass("fadeInUp");
                  },500);
                 setTimeout(function(){
                     $(".a-hw-third-ul").find("#third2").addClass("fadeInUp");
                 },800);
                 setTimeout(function(){
                     $(".a-hw-third-ul").find("#third3").addClass("fadeInUp");
                  },1100);
             }
             
             if(scrollTop >520 && scrollTop < 860){
            	 $(".a-hw-four").find(".a-hw-four-show").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".a-hw-four-show").find(".a-hw-four-span1").addClass("fadeInLeft");
                  },800);
                 setTimeout(function(){
                    $(".a-hw-four-show").find(".a-hw-four-span2").addClass("fadeInLeft");
                 },1200);
                 setTimeout(function(){
                     $(".a-hw-four-show").find(".a-hw-four-span3").addClass("fadeInRight");
                  },800);
                 setTimeout(function(){
                     $(".a-hw-four-show").find(".a-hw-four-span4").addClass("fadeInRight");
                  },1200);
                 setTimeout(function(){
                     $(".a-hw-four-show").find("#hfour1").addClass("fadeIn");
                  },500);
                 
             }
             if(scrollTop >1020 && scrollTop < 1400){
            	 $(".a-hw-five").find(".a-hw-five-ul").addClass("fadeInUp");
                 setTimeout(function(){
                     $(".a-hw-five-ul").find("#hfour5").addClass("fadeInUp");
                  },500);
                 setTimeout(function(){
                     $(".a-hw-five-ul").find("#hfour6").addClass("fadeInUp");
                  },800);
                 setTimeout(function(){
                     $(".a-hw-five-ul").find("#hfour7").addClass("fadeInUp");
                  },1100);
                 setTimeout(function(){
                     $(".a-hw-five-ul").find("#hfour8").addClass("fadeInUp");
                  },1400);
             }
        if(scrollTop >120 && scrollTop < 400){
            setTimeout(function(){
                $(".a-hw-ele-record").find(".a-hw-ele-dsie-pix-three").addClass("fadeInUp");
            },100);
        }

    });
});
