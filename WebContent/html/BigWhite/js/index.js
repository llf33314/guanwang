$(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
             ///
             if(scrollTop >400 && scrollTop < 750){ 
            	 $(".big-west").find(".big-west-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".big-west-box").find(".big-west-box-left").addClass("fadeInLeft");
                  },300);
                 setTimeout(function(){
                     $(".big-west-box").find(".big-west-box-right").addClass("fadeInRight");
                 },500);
                 setTimeout(function(){
                     $(".big-west-box").find(".big-west-box-body").addClass("fadeIn");
                  },1300);
             }
             
             if(scrollTop >840 && scrollTop < 1300){
            	 
            	 $(".big-service").find(".big-service-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".big-service-box").find("#service1").addClass("rotateInDownLeft");
                  },300);
                 setTimeout(function(){
                    $(".big-service-box").find("#service2").addClass("fadeInRight");
                 },800);
                 setTimeout(function(){
                     $(".big-service-box").find("#service3").addClass("rotateInUpLeft");
                  },1300);
                 setTimeout(function(){
                     $(".big-service-box").find("#service4").addClass("fadeInRight");
                  },1800);
             }
             if(scrollTop >1400 && scrollTop < 1860){           	 
            	 $(".car-more").find("#more-txt").addClass("fadeInUp");
                 setTimeout(function(){
                     $(".car-more").find("#more-pic1").addClass("fadeInLeftBig rotateIn");
                  },600);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic2").addClass("fadeInLeftBig rotateIn");
                  },900);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic3").addClass("fadeInLeftBig rotateIn");
                  },1200);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic4").addClass("fadeInLeftBig rotateIn");
                  },1500);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic5").addClass("fadeInLeftBig rotateIn");
                  },1800);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic6").addClass("fadeInLeftBig rotateIn");
                  },2100);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic7").addClass("fadeInLeftBig rotateIn");
                  },2400);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic8").addClass("fadeInLeftBig rotateIn");
                  },2700);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic9").addClass("fadeInLeftBig rotateIn");
                  },3000);
                 setTimeout(function(){
                     $(".car-more").find("#more-pic10").addClass("fadeInLeftBig rotateIn");
                  },3300);
                 
             }
        /////
             if(scrollTop >50 && scrollTop < 280){
            	 $(".system").find(".s-out").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".s-out").find("#gn1").addClass("fadeInUp");
                  },300);
                 
             }
             if(scrollTop >520 && scrollTop < 835){
            	 $(".line").find(".l-left").addClass("fadeInUp");
            	 $(".line").find(".l-right").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".l-left").find("#gn2").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".l-right").find(".l-out").addClass("fadeInUp");
                  },600);
                 
             }
             if(scrollTop >1028 && scrollTop < 1440){
            	 $(".storage").find(".storage-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".storage-box").find("#s-b-img2").addClass("fadeInDown");
                  },300);
            	 setTimeout(function(){
                     $(".storage-box").find("#s-b-img1").addClass("fadeIn");
                  },600);
            	 setTimeout(function(){
                     $(".storage-box").find(".s-b-right").addClass("fadeInUp");
                  },1000);
                 
             }
             if(scrollTop >1644 && scrollTop < 2044){
            	 $(".business").find(".bus-right").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".business").find(".bus-left").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".bus-right").find("#s-b-img3").addClass("fadeIn");
                  },1500);
            	 setTimeout(function(){
                     $(".bus-right").find("#s-b-img4").addClass("fadeInUp");
                  },600);
                 
             }
             if(scrollTop >2100 && scrollTop < 2638){
            	 $(".mobility").find(".mobility-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".mobility-box").find(".mobility-box").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".mobility-box").find("#mo1").addClass("bounceIn");
                  },1800);
            	 setTimeout(function(){
                     $(".mobility-box").find("#mo2").addClass("fadeInLeft");
                  },1300);
            	 setTimeout(function(){
                     $(".mobility-box").find("#mo3").addClass("fadeIn");
                  },800);
            	 setTimeout(function(){
                     $(".mobility-box").find("#mo4").addClass("fadeInRight");
                  },1300);
            	 setTimeout(function(){
                     $(".mobility-box").find("#mo5").addClass("fadeIn");
                  },2300);
            	 
                 
             }
             if(scrollTop >2765 && scrollTop < 3675){
            	 $(".applet").find(".applet-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".applet").find("#gn3").addClass("fadeInUp");
                  },200);
            	 setTimeout(function(){
                     $(".applet-box").find(".app-b-top").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".applet-box").find("#app1").addClass("bounceIn");
                  },1300);
            	 setTimeout(function(){
                     $(".applet-box").find("#app2").addClass("fadeInLeftBig");
                  },800);
            	 setTimeout(function(){
                     $(".applet-box").find("#app3").addClass("fadeInRightBig");
                  },1300);
            	 setTimeout(function(){
                     $(".applet-box").find("#app4").addClass("fadeIn");
                  },2300);
            	 
                 
             }
             
         
    });
});

