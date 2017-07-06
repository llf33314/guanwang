//判断浏览器低版本提醒
$(function(){
		 var idcard ='${map.idcard}';
		 idcard = idcard.substr(0,6)+"****"+idcard.substr(10,idcard.length);
		 $("#idcard").html(idcard);
		$('.items a').click(function(){	
			$('.items a').removeClass("headerCurrent");
            $(this).removeClass("headerCurrent").end().siblings().addClass("headerCurrent");
		});
		function FuckInternetExplorer() {
	        var browser = navigator.appName;
	        var b_version = navigator.appVersion;
	        var version = b_version.split(";");
	  		if (version.length > 1) {
	            var trim_Version = parseInt(version[1].replace(/[ ]/g, "").replace(/MSIE/g, ""));
	            if (trim_Version < 9) {
	                $("#upgrade").show();
	                return false;
	            }
	        }
	        return true;
	    }
		FuckInternetExplorer();
		$("#upgrade").on("click","i",function(){
			$("#upgrade").hide();
		})
	});

/*百度统计代码*/
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?14a62041b4de52f2586d283b14d1175c";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();


$(function(){
	/*头部点击字体改变样式*/
	$('.headerItems .itemNav').click(function(){	
		alert($(this).attr("class"));
		$('.headerItems .itemNav').removeClass('headerCurrent');
        $(this).addClass("headerCurrent").siblings().removeClass("headerCurrent");
	});
	
});

/*页面右侧信息*/
//超过一定高度时， 显示返回顶部按钮
$(window).scroll(function() {
    var scrollTop =  document.body.scrollTop || document.documentElement.scrollTop
    if (scrollTop > 200) {
    	$('#gotop').show();
    }
    else {
    	$('#gotop').hide();
    }
});

//右侧功能按钮
$(function(){	
   //getHeight();
	$('#gotop').hide();
	//返回顶部按钮
	$('#gotop a').click(function(){
		$(document).scrollTop(0);
        document.documentElement.scrollTop = 0;
	});
	//二维码显示消失功能
	$('#code').hover(function(){
		$('.code').css('background','url(../../../images/icons.jpg) no-repeat center center');
		$('.code').show();
	},function(){
		$('.code').hide();
	});
	//联系我们
	$('#code2').hover(function(){
		$('.code2').show();
	    },function(){
		$('.code2').hide();
	});
	});

/*底部点击字体变蓝色*/
$(function(){
	$(".foot-con1 a").click(function(){
		
	})
})
	

