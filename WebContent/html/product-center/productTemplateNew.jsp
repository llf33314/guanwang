<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="@@meta@@" />
	<title>@@page_title@@</title>
	<link rel="stylesheet" type="text/css" href="/html/weixinSell/css/marketing.css" />
	<script type="text/javascript" src="/html/js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="/js/webSite.js"></script>
	<style>
		.video-box{
			position: fixed;
			top:50%;
			left: 50%;
			width:100%;
			height: 100%;
			z-index: 90;
			margin-left: -400px;
			margin-top: -250px;
			display: none;
		}
		.video-close{
			position: absolute;
			left: 740px;
			color: #fff;
			top: 40px;
			z-index: 99;
			cursor: pointer;
		}
	</style>
</head>
<body style="background: #f8f8f8;">
<%@include file="/html/common/clearfix.jsp"%>

<div class="a-details">
	<div class="a-details-l">
		<ul class="a-details-l-box">
			@@insethtml@@
		</ul>
	</div>
	<div class="a-details-r">
		<div class="a-details-r-t">
			<div class="a-details-unified">
				<div class="a-details-unified-l">
					<img src="@@logo@@" style="width: 50px;height:50px;">
				</div>
				<div class="a-details-unified-r">
					<h4>@@pcname@@<a href="/html/instructions.jsp">@@shiyong@@</a></h4>
					<p>@@pcdesc@@</p>
				</div>
			</div>
		</div>
		<div class="a-details-r-b">
			<div class="a-details-r-t-title">
				<p>@@s2@@</p>
			</div>
			<div class="a-details-r-roll">


			</div>
		</div>
	</div>
</div>
<script>
    $(function () {
        var productJson = WSFUNCTION.doPost(
            "/productCenterNew/html/productlist", {});
        var products = productJson.products;
        var  a = 15;
        if (a > products.length){
            a = products.length;
		}
        for(var i=0;i<a;i++){
            $('.a-details-r-roll').append('	<div class="a-details-unified">'
                +'<div class="a-details-unified-l">'
                +'<a href="productNew_'+products[i].id+'.jsp " ><img src="'+products[i].logourl+'"  style="width: 50px;height: 50px;">'
                +'</div>'
                +'<div class="a-details-unified-r">'
                +' <h4>' +products[i].pcname+'</h4>'
                +'<p>'+products[i].pcdesc+'</p>'
                +' </a></div>'
                +' </div>');
        }
    })
</script>
<%@include file="/html/common/footer.jsp"%>

</body>
</html>