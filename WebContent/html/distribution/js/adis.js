
$(document).ready(function(){
	  $("#a-show").mouseenter(function(){
	  $("#a-show2").show();
	  });
	  $("#a-show").mouseleave(function(){
	  $("#a-show2").hide();
	  });
	});
	$(document).ready(function(){
		  $("#b-show").mouseenter(function(){
		  $("#b-show2").show();
		  });
		  $("#b-show").mouseleave(function(){
		  $("#b-show2").hide();
		  });
		});
	$(document).ready(function(){
		  $("#c-show").mouseenter(function(){
		  $("#c-show2").show();
		  });
		  $("#c-show").mouseleave(function(){
		  $("#c-show2").hide();
		  });
		});
	
	function gtShow(id, t) {
		$('.a-in-swiper-box').find('#id' + id).show().siblings('div')
				.hide();
		$("#a-swiper1 > a").removeAttr("style");
        $("#a-swiper2 > a").removeAttr("style");
        $("#a-swiper3 > a").removeAttr("style");
        $("#a-swiper4 > a").removeAttr("style");
        $(t).find("a").attr("style","color:#2d8efe;");



	}

	$(function(){
	    var flag = [0,0,0,0,0];
	    $(window).scroll(function(){
	         var scrollTop = $(window).scrollTop();
	             /* console.log($(window).scrollTop())*/
	             if(scrollTop >10 && scrollTop < 100){ 
	            	 setTimeout(function(){
							$(".a-distribution-none").find(".a-d-da-b").addClass('show');
						},100)	
						setTimeout(function(){
							$(".a-distribution-none").find(".a-d-db-b").addClass('show');
						},500)
						setTimeout(function(){
							$(".a-distribution-none").find(".a-d-dc-b").addClass('show');
						},1500)
						setTimeout(function(){
							$(".a-distribution-none").find(".a-d-dd-b").addClass('show');
						},1000)
	             }
	       
	    });
	});
