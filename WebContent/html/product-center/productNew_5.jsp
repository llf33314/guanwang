<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE HTML><html lang="zh-CN"><head>    <script>        var _hmt = _hmt || [];        (function() {            var hm = document.createElement("script");            hm.src = "https://hm.baidu.com/hm.js?14a62041b4de52f2586d283b14d1175c";            var s = document.getElementsByTagName("script")[0];            s.parentNode.insertBefore(hm, s);        })();    </script>	<meta charset="UTF-8">	<meta name="description" content=" 规范的公司地方" />	<title>固定费鬼地方</title>	<link rel="stylesheet" type="text/css" href="/html/weixinSell/css/marketing.css" />	<script type="text/javascript" src="/html/js/jquery-1.10.2.js"></script>	<script type="text/javascript" src="/js/webSite.js"></script>	<style>		.video-box{			position: fixed;			top:50%;			left: 50%;			width:100%;			height: 100%;			z-index: 90;			margin-left: -400px;			margin-top: -250px;			display: none;		}		.video-close{			position: absolute;			left: 740px;			color: #fff;			top: 40px;			z-index: 99;			cursor: pointer;		}	</style></head><body style="background: #f8f8f8;"><%@include file="/html/common/clearfix.jsp"%><div class="a-details">	<div class="a-details-l">		<ul class="a-details-l-box">			<li> <img src="" class="a-details-img"><img src="" class="a-details-img" onclick="productOpenVideo00();" ><div class="video-box" id="product-video-box00">
    <span class="video-close" onclick="productCloseVideo00()">关闭</span>
    <video preload="none" controls width="800" height="500" id="product-videoMedia00" style="background-color: #000">
        <source src="" type="video/mp4">
    </video>
</div>
<script>
    var productCloseVideo00 =function(){
        var media = document.getElementById("product-videoMedia00");
        media.pause();
        $('#product-video-box00').hide();
    }
    var productOpenVideo00 = function(){
        var media = document.getElementById("product-videoMedia00");
        media.play();
        $('#product-video-box00').show();
    }
</script></li><li>
				<h3>扫一扫，立即体验!</h3> <ul class="a-details-3-pix"><li class="a-details-3-pix-li"><div class="a-details-ewm"><img style="width: 150px;height: 150px;" src="http://maint.duofriend.com/upload/image/websiteUpload/website/89422F9D8E2905CABC428968285D5B6E.png">
					<p style=" margin-top: -10px;">gdfg</p>
				</div></li></ul></li>		</ul>	</div>	<div class="a-details-r">		<div class="a-details-r-t">			<div class="a-details-unified">				<div class="a-details-unified-l">					<img src="http://maint.duofriend.com/upload/image/websiteUpload/website/89422F9D8E2905CABC428968285D5B6E.png" style="width: 50px;height:50px;">				</div>				<div class="a-details-unified-r">					<h4>gdfg<a href="/html/instructions.jsp">(使用手册)</a></h4>					<p>gdfg</p>				</div>			</div>		</div>		<div class="a-details-r-b">			<div class="a-details-r-t-title">				<p>相关推荐</p>			</div>			<div class="a-details-r-roll">			</div>		</div>	</div></div><script>    $(function () {        var productJson = WSFUNCTION.doPost(            "/productCenterNew/html/productlist", {});        var products = productJson.products;        var  a = 15;        if (a > products.length){            a = products.length;		}        for(var i=0;i<a;i++){            $('.a-details-r-roll').append('	<div class="a-details-unified">'                +'<div class="a-details-unified-l">'                +'<a href="productNew_'+products[i].id+'.jsp " ><img src="'+products[i].logourl+'"  style="width: 50px;height: 50px;">'                +'</div>'                +'<div class="a-details-unified-r">'                +' <h4>' +products[i].pcname+'</h4>'                +'<p>'+products[i].pcdesc+'</p>'                +' </a></div>'                +' </div>');        }    })</script><%@include file="/html/common/footer.jsp"%></body></html>