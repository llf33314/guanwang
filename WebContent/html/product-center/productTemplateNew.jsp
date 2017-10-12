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
        for(var i=0;i<products.length;i++){
            $('.a-details-r-roll').append('	<div class="a-details-unified">'
                +'<div class="a-details-unified-l">'
                +'<img src="'+products[i].logourl+'"  style="width: 50px;height: 50px;">'
                +'</div>'
                +'<div class="a-details-unified-r">'
                +' <a href="productNew_'+products[i].id+'.jsp " > <h4>' +products[i].pcname+'</h4></a>'
                +'<p>'+products[i].pcdesc+'</p>'
                +' </div>'
                +' </div>');
        }
    })
</script>
<%@include file="/html/common/footer.jsp"%>

</body>
</html>