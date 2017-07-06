$(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
             ///
             /* console.log($(window).scrollTop())*/
             
             if(scrollTop >300 && scrollTop < 700){ 
            	 $(".man-customer").find(".man-customer-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".man-customer-box").find(".man-c-l-h4").addClass("fadeInUp");
                  },500);
                 setTimeout(function(){
                     $(".man-customer-box").find(".man-c-l-ul").addClass("fadeInUp");
                 },800);
                 setTimeout(function(){
                     $(".man-customer-box").find("#txt1").addClass("fadeInUp");
                  },1100);
                 setTimeout(function(){
                     $(".man-customer-box").find("#txt2").addClass("fadeInUp");
                  },1400);
                 setTimeout(function(){
                     $(".man-customer-box").find("#txt3").addClass("fadeInUp");
                  },1700);
                 setTimeout(function(){
                     $(".man-customer-box").find("#txt4").addClass("rotateIn");
                  },2000);
                 setTimeout(function(){
                     $(".man-customer-box").find("#txt5").addClass("rotateIn");
                  },2300);
                 setTimeout(function(){
                     $(".man-customer-box").find("#txt6").addClass("rotateIn");
                  },2600);
                 setTimeout(function(){
                     $(".man-customer-box").find(".man-customer-r").addClass("fadeInUp");
                  },500);
                 
             }
             
             if(scrollTop >980 && scrollTop < 1400){
            	 
            	 $(".man-kuais").find(".man-kuais-l").find(".man-kuais-r").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".man-kuais-l").find("#kua1").addClass("fadeInUp");
                  },500);
                 setTimeout(function(){
                    $(".man-kuais-l").find(".man-kuais-zz").addClass("fadeIn");
                 },800);
                 setTimeout(function(){
                     $(".man-kuais-l").find("#kua3").addClass("rotateInDownLeft");
                  },1100);
                 setTimeout(function(){
                     $(".man-kuais-l").find("#sh1").addClass("fadeInRight");
                  },1400);
                 setTimeout(function(){
                     $(".man-kuais-l").find("#sh2").addClass("fadeInRight");
                  },1700);
                 setTimeout(function(){
                     $(".man-kuais-l").find("#sh3").addClass("fadeInRight");
                  },2000);
                 setTimeout(function(){
                     $(".man-kuais-l").find("#sh4").addClass("fadeInRight");
                  },2300);
                 setTimeout(function(){
                     $(".man-kuais-r").find("#sh5").addClass("fadeInUp");
                  },500);
                 setTimeout(function(){
                     $(".man-kuais-r").find("#sh6").addClass("fadeInUp");
                  },800);
                 setTimeout(function(){
                     $(".man-kuais-r").find("#sh7").addClass("fadeInUp");
                  },1100);

                 
             }
             if(scrollTop >1900 && scrollTop < 2200){           	 
            	 $(".man-store").find(".bg").addClass("show");
            	 $(".man-store").find(".man-store-box").addClass("fadeInUp");
            	 
                 setTimeout(function(){
                     $(".man-store-box").find("#sh8").addClass("fadeInUp");
                  },300);
                 setTimeout(function(){
                     $(".man-store-box").find("#sh9").addClass("fadeInUp");
                  },600);
                 setTimeout(function(){
                     $(".man-store-box").find("#sh10").addClass("fadeInUp");
                  },900);
                 setTimeout(function(){
                     $(".man-store-box").find(".man-s-r").addClass("fadeIn");
                  },100);               
                 setTimeout(function(){
                     $(".man-store-box").find(".man-s-r-title").addClass("fadeIn");
                  },300);
                 setTimeout(function(){
                     $(".man-store-box").find("#kua4").addClass("fadeIn");
                  },300);
                 setTimeout(function(){
                     $(".man-store-box").find(".bl").addClass("fadeIn");
                  },100);
                 setTimeout(function(){
                     $(".man-store-box").find("#kua6").addClass("bounceIn");
                  },1000);
             }
             if(scrollTop >2200 && scrollTop < 3000){           	 
            	 $(".man-choice").find(".man-choice-box").addClass("fadeInUp");            	
                 setTimeout(function(){
                     $(".man-choice-box").find("#choice1").addClass("fadeIn");
                  },300);
                 setTimeout(function(){
                     $(".man-choice-box").find("#choice2").addClass("fadeInUp");
                  },600);
                 setTimeout(function(){
                     $(".man-choice-box").find("#choice3").addClass("fadeInUp");
                  },900);
                 setTimeout(function(){
                     $(".man-choice-box").find("#choice4").addClass("fadeInUp");
                  },1200); 
                 setTimeout(function(){
						$('.response_shows').addClass('fadeIn');
					},1500)	;
                 
             }
        /////
             if(scrollTop >70 && scrollTop < 170){
            	 $(".m-brand-show").find(".m-brand-s-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".m-brand-s-box").find(".m-brand-s-b-l").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".m-brand-s-box").find(".m-brand-s-b-r").addClass("fadeInDown");
                  },600);
                 
             }
             if(scrollTop >600 && scrollTop < 1150){
            	 $(".m-brand-mode").find(".zg").addClass("show");
            	 setTimeout(function(){
                     $(".m-brand-mode").find(".mode-box-l").addClass("fadeInLeft");
                  },600);
            	 setTimeout(function(){
                     $(".m-brand-mode").find(".mode-box-r").addClass("fadeInUp");
                  },900);
                 
             }
             if(scrollTop >1200 && scrollTop < 1600){
            	 $(".m-brand-core").find(".m-brand-core-box").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".m-brand-core-box").find(".m-brand-core-l").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".m-brand-core-box").find("#cor1").addClass("fadeInUp");
                  },600);
            	 setTimeout(function(){
                     $(".m-brand-core-box").find("#cor2").addClass("fadeInUp");
                  },900);
            	 setTimeout(function(){
                     $(".m-brand-core-box").find(".m-brand-core-r").addClass("fadeInRight");
                  },300);
                 
             }

             if(scrollTop >2150 && scrollTop < 2400){
            	 $(".m-brand-more").find(".m-brand-more-pic").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find(".mobility-box").addClass("fadeInUp");
                  },300);
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find("#pic1").addClass("fadeInUp");
                  },600);
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find("#pic2").addClass("fadeInUp");
                  },900);
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find("#pic3").addClass("fadeInUp");
                  },1200);
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find("#pic4").addClass("fadeInUp");
                  },1500);
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find("#pic5").addClass("fadeInUp");
                  },1800);
            	 setTimeout(function(){
                     $(".m-brand-more-pic").find("#pic6").addClass("fadeInUp");
                  },2100);
           }
                   
    });
});



//图片移动放大 
$(function() {
$('.cj-s').on('mouseenter', function() {
	$(this).find('.show1').hide();
	$(this).find('.show2').show();
}).on('mouseleave', function() {
	$(this).find('.show1').show();
	$(this).find('.show2').hide();
})
})
