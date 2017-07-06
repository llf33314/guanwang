<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="@@meta@@" />
<title>@@page_title@@</title>
<%@include file="/html/common/css.jsp"%>
<%@include file="/html/common/js.jsp"%>
<script type="text/javascript">
        $(function () {
        	var productJson = WSFUNCTION.doPost(
					"/productCenter/html/productlist", {});
			var products = productJson.products;
			var productsLength = products.length;
			var tempArr = new Array();
			while (tempArr.length < 5 && productsLength > 0) {
				var index = Math.ceil(Math.random() * products.length) - 1;
				if (tempArr.indexOf(index) == -1){
					tempArr.push(index);
					productsLength--;
				}
			} /* console.log(tempArr); */
			for(var i=0;i<tempArr.length;i++){
				$('body > div > div.containter > div > div.fl.vote-content-left > ul').append('<li class="clear">'
					+'<a href="product_'+products[tempArr[i]].id+'.jsp"><img class="fl" src="'+products[tempArr[i]].logourl+'" alt="" style="height: 69px;">'
					+'</a><div class="fl desc-vote"><a href="product_'+products[tempArr[i]].id+'.jsp">'
					+'<h3>'+products[tempArr[i]].pcname+'</h3></a><p>'+products[tempArr[i]].pcdesc+'</p></div></li>');
			}
        	
        	$('.roll').on('click', function () {
	        	$(this).addClass('active');
	        	$(this).siblings().removeClass('active');
		        var index = $(this).index();
		        var imgchild = $('.show-img').eq(index);
		        imgchild.fadeIn().siblings().fadeOut();
        	});
        	
        	if($('.code-center p').html() == '') $('.code-center').remove();
        })
        </script>
        <style type="text/css">
        	.show-vote-img img{height: 327px;}
        </style>
</head>

<body>
	<div class="wrap index">
		<%@include file="/html/common/clearfix.jsp"%>


		

		<div class="containter">
			
			<img class="img-product-img"
				src="${imageUrl}/product-center/poster.png" alt="">
					
			<div class="n-navigation clear">
				@@s11@@: 
				<a href="/html/index.jsp">@@s12@@</a> / 
				<a href="/html/product.jsp">@@s13@@</a> / 
				@@pctypename@@ / 
				@@pcname@@
			</div>				
				
			<div class="vote-main clear">
				<div class="fl vote-content-left">

					<div class="vote-icon">
						<a href="javascript:void(0);"> <img src="@@logo@@" alt="" style="height: 92px;">
							<div class="aside-desc">
								<h3>@@pcname@@</h3>
								<p>@@pcdesc@@</p>
							</div>
						</a>
					</div>
					<div class="user-explain clear">
						<a href='../instructions.jsp'><button class="fl">@@s1@@</button></a>
						<div class="vote-class-long fl">
							<p class="mb">@@s6@@:@@pctypename@@</p>
							<p class="mb">@@s7@@:@@s8@@</p>
							<p>@@s9@@:@@s10@@</p>
						</div>
					</div>

					<h1 class="vote-recommend">@@s2@@</h1>
					<ul class="vote-ul">
					</ul>

				</div>

				
				<div class="fr vote-content-right">
					<h1 class="product-detail">@@s3@@</h1>
					<p class="product-desc">
						@@pcdetail@@
					</p>

					
					<div class="product-desc-list">
						<p class="light-fn">@@s4@@:</p>
						<div class="wrap-ol">
							<ol class="list-introduce-desc">
								@@pcfeatures@@
							</ol>
						</div>
					</div>
					
					<div class="show-vote">
						<ul class="show-vote-img">
							@@imgs@@
							<li class="show-img passive"></li>
						</ul>
						<%--<div class="guide-vote clear">--%>
						<%--<p class=" fl roll active "></p>--%>
						<%--<p class=" fl roll "></p>--%>
						<%--<p class=" fl roll "></p>--%>
						<%--</div>--%>
					</div>

					
					<div class="code-center">
						<img src="@@qrcode@@" alt="">
						<p>@@s5@@</p>
					</div>
					
					<div class="n-videobtnset">
						@@vbtn@@
					</div>
					
				</div>
			</div>


			
		</div>


		<!--====================================================================================-->


		
		<%@include file="/html/common/footer.jsp"%>
		
	</div>
</body>
</html>

