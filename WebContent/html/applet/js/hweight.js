//循环显示对话框
var delayID=0;
	var Num=1;
	var i;
	function change()
	{
	  if(Num==4)Num=1;
	  for(i=1;i<=3;i++)
	  {
	  document.getElementById('td'+i).style.display="none";
	  }
	  document.getElementById('td'+Num).style.display="";
	  Num++;
	  delayID=setTimeout("change()", 3000);
	}
	change();


  $(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
             ///
             console.log($(window).scrollTop())

             if(scrollTop >2800 && scrollTop < 3100){
            	 $(".xcx-floor7").find(".imgs").addClass("fadeInUp");
            	 setTimeout(function(){
                     $(".imgs").find(".hw-txt1").addClass("fadeIn");
                  },500);
                 setTimeout(function(){
                     $(".imgs").find(".hw-txt2").addClass("fadeIn");
                 },1000);
                 setTimeout(function(){
                     $(".imgs").find(".hw-txt3").addClass("fadeIn");
                  },1500);
                 setTimeout(function(){
                     $(".imgs").find(".hw-txt4").addClass("fadeIn");
                  },2000);
                 setTimeout(function(){
                     $(".imgs").find(".hw-txt5").addClass("fadeIn");
                  },2500);

             }

    });
});
