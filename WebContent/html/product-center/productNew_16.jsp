<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE HTML><html lang="zh-CN"><head>	<meta charset="UTF-8">	<meta name="description" content="h规范化发的个" />	<title>和法国后发的个</title>	<link rel="stylesheet" type="text/css" href="/html/weixinSell/css/marketing.css" />	<script type="text/javascript" src="/html/js/jquery-1.10.2.js"></script>	<script type="text/javascript" src="/js/webSite.js"></script></head><body style="background: #f8f8f8;"><%@include file="/html/common/clearfix.jsp"%><div class="a-details">	<div class="a-details-l">		<ul class="a-details-l-box">			<li>  <h3>undefined</h3> <p>undefined</p> <img src="http://maint.duofriend.com/upload/image/websiteUpload/website/D15EFF6CEA9643B2E08B3C6232EBD3E7.jpg" class="a-details-img"></li><li>
				<h3>扫一扫，立即体验!</h3>
				<div class="a-details-ewm"><img src="http://maint.duofriend.com/upload/image/websiteUpload/website/C09557D25CACA1849073638758B29CDA.png">
					<p>过分的话发个</p>
				</div>
			</li>		</ul>	</div>	<div class="a-details-r">		<div class="a-details-r-t">			<div class="a-details-unified">				<div class="a-details-unified-l">					<img src="http://maint.duofriend.com/upload/image/websiteUpload/website/89422F9D8E2905CABC428968285D5B6E.png" style="width: 50px;height:50px;">				</div>				<div class="a-details-unified-r">					<h4>过分的话发个<a href="/html/instructions.jsp">(使用手册)</a></h4>					<p>和法国的和法国的</p>				</div>			</div>		</div>		<div class="a-details-r-b">			<div class="a-details-r-t-title">				<p>相关推荐</p>			</div>			<div class="a-details-r-roll">			</div>		</div>	</div></div><script>    $(function () {        var productJson = WSFUNCTION.doPost(            "/productCenterNew/html/productlist", {});        var products = productJson.products;        for(var i=0;i<products.length;i++){            $('.a-details-r-roll').append('	<div class="a-details-unified">'                +'<div class="a-details-unified-l">'                +'<img src="'+products[i].logourl+'"  style="width: 50px;height: 50px;">'                +'</div>'                +'<div class="a-details-unified-r">'                +' <a href="productNew_'+products[i].id+'.jsp " > <h4>' +products[i].pcname+'</h4></a>'                +'<p>'+products[i].pcdesc+'</p>'                +' </div>'                +' </div>');        }    })</script><%@include file="/html/common/footer.jsp"%></body></html>