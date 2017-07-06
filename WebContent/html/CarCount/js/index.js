
/*首页轮播*/
$(function(){
	function initialization(){
		$('#myContainer').fullpage({
			sectionsColor: ['#fff', '#fff', '#1a82f1', '#fff','#1a82f1','#fff','#1a82f1'],
			//anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
			resize: true,
			//animateAnchor:false,
			scrollOverflow: false,
			//autoScrolling:true,
			//responsive: 900,
			//fitSection: false,
			menu: '#menu',
			navigation:true,
			//continuousVertical:true,
			//paddingTop: '20px',
			css3: true,
			onLeave:function(e,direction){
//				console.log('e+++'+e)
//				console.log('direction++'+direction)
				if(e == 1){
					if(direction == 2){
						$('.car-ban-img').removeClass('fadeInUp');
						$('.car-ban-img').addClass('fadeOutDown');
						$('.car-home-small-box-animated').addClass('fadeInDownBig');
					}
				}
				else if(e == 2){
					if(direction == 1){
						$('.car-ban-img').removeClass('fadeOutDown');
						$('.car-ban-img').addClass('fadeInUp');
						$('.car-home-small-box-animated').removeClass('fadeInDownBig');
					}
					if(direction == 3){
//						console.log("我是第3个")
						 setTimeout(function(){
							$('#main-h2').addClass('fadeInUp');
						},800)
						
						setTimeout(function(){
							$('#main-nav').addClass('fadeInUp');
						},1300)
						
						setTimeout(function(){
							$('.txt').addClass('fadeInUp');
						},2700)
						
						setTimeout(function(){
							$('.xg-wrap').addClass('fadeInUp');
						},1800)
						
						setTimeout(function(){
							$('#main-xun').addClass('fadeInUp');
						},1800)
					}
				}
				else if(e == 3){
					if(direction == 4){
//						console.log("我是第4个")
						setTimeout(function(){
							$('.car-txt1').addClass('fadeInUp');
						},500)
						
						setTimeout(function(){
							$('.car-home-demand-span').addClass('fadeInUp');
						},1300)

						setTimeout(function(){
							$('.demand').addClass('fadeInLeft');
						},4800)
						
						setTimeout(function(){
							$('.demand-line').addClass('fadeInLeft');
						},4200)
						
						setTimeout(function(){
							$('.Pain').addClass('fadeInLeft');
						},3800)
						
						setTimeout(function(){
							$('.Pain-line').addClass('fadeInLeft');
						},3300)
						
						setTimeout(function(){
							$('.point').addClass('fadeInLeft');
						},2800)
						
						setTimeout(function(){
							$('.point-line').addClass('fadeInLeft');
						},2300)
						
						setTimeout(function(){
							$('.main').addClass('fadeInLeft');
						},1800)
						
						setTimeout(function(){
							$('.main-line').addClass('fadeInRight');
						},2300)
						
						setTimeout(function(){
							$('.technology').addClass('fadeInRight');
						},2800)
						
						setTimeout(function(){
							$('.technology-line').addClass('fadeInRight');
						},3200)
						
						setTimeout(function(){
							$('.major').addClass('fadeInRight');
						},3800)
						
						setTimeout(function(){
							$('.major-line').addClass('fadeInRight');
						},4200)
						
						setTimeout(function(){
							$('.discuss').addClass('fadeInRight');
						},4800)
						
						setTimeout(function(){
							$('.form').addClass('fadeInRight');
						},5300)
					}
				}
				else if(e == 4){
					if(direction == 5){
//						console.log("我是第五个")
						setTimeout(function(){
							$('.car-txt2').addClass('fadeInUp');
						},500)

						setTimeout(function(){
							$('.car-home-choice-span').addClass('fadeInUp');
						},1000)
						
						setTimeout(function(){
							$('#choice1-1').addClass('fadeInUp');
						},1800)
						
						setTimeout(function(){
							$('#choice0').addClass('fadeInUp');
						},2300)
						setTimeout(function(){
							$('#choice1').addClass('fadeInUp');
						},2500)
						setTimeout(function(){
							$('#choice2').addClass('fadeInUp');
						},3000)
						setTimeout(function(){
							$('#choice3').addClass('fadeInUp');
						},3500)
						setTimeout(function(){
							$('#choice4').addClass('fadeInUp');
						},4000)
						setTimeout(function(){
							$('#choice5').addClass('fadeInUp');
						},4500)
					}
				}
				else if(e == 5){
					if(direction == 6){
//						console.log("我是第6个")
						 setTimeout(function(){
							$('.car-txt1').addClass('fadeInUp');
						},500)
						
						setTimeout(function(){
							$('#scanning-span').addClass('fadeInUp');
						},1000)
						
						setTimeout(function(){
							$('.car-home-scanning-box-pic').addClass('fadeInUp');
						},1200)
						setTimeout(function(){
							$('#ind1').addClass('fadeIn');
						},6100)
						setTimeout(function(){
							$('#ind2').addClass('fadeIn');
						},3600)
						setTimeout(function(){
							$('#ind3').addClass('fadeIn');
						},5200)
						setTimeout(function(){
							$('#ind4').addClass('fadeIn');
						},4500)
						setTimeout(function(){
							$('#ind5').addClass('fadeIn');
						},1500)
						setTimeout(function(){
							$('#ind6').addClass('fadeIn');
						},3500)
						setTimeout(function(){
							$('#ind7').addClass('fadeIn');
						},2600)
						
						
						
					}
				}
				else if(e == 6){
					if(direction == 7){
//						console.log("我是第7个")
						 setTimeout(function(){
							$('.car-txt2').addClass('fadeInUp');
						},500)
						
						setTimeout(function(){
							$('.car-home-animation-span').addClass('fadeInUp');
						},1000)
						
						setTimeout(function(){
							$('.car-home-animation-box-pic').addClass('fadeInUp');
						},1300)
					}
				}
				
			},
		});
	}
	//fullPage.js initialization
	initialization();
})

/*行业痛点*/
 $(function(){
         var time = window.setInterval(function(){
         	  if($(".ct-erp").find(".xg-wrap").hasClass("show")){
         	  	   $(".ct-erp").find(".xg-wrap").removeClass("show");
         	  	   $(".ct-erp").find(".xg-wrap").find("img").eq(0).removeClass("show");
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(5).removeClass("show");},100);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(4).removeClass("show");},200);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(3).removeClass("show");},300);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(2).removeClass("show");},400);
         	  }
         	  else{
         	  	   $(".ct-erp").find(".xg-wrap").addClass("show");
         	  	   $(".ct-erp").find(".xg-wrap").find("img").eq(0).addClass("show");
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(2).addClass("show");},100);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(3).addClass("show");},200);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(4).addClass("show");},300);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(5).addClass("show");},400);
         	  }
         },2000);


         $("#section2").find("nav a").click(function(e){
              e.preventDefault();
              var _index = $(this).index();
              $(this).addClass("selected").siblings().removeClass("selected");
              $("#section2").find(".conts-wrap").find(".cont-wrap").eq(_index).show().siblings().hide();
         });

    });

