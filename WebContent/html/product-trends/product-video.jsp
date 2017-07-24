<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="多粉是国内专业的微信第三方开发平台，您可以通过本页展示的公司新闻、产品更新、行业动态和沙龙学堂了解我们。"/>
    <title>多粉（duofriend）-多粉动态</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":434});
    product_videos(1);
});
</script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


     <div class=" wrap1125">
         <!--中间内容-->
         <div class="product">
             <h2 class="fl">多粉产品动态</h2>
             <ul class="pro_nav fl">
                 <li><a href="/html/product-trends/product-news.jsp">公司新闻</a></li>
                 <li><a href="/html/product-trends/product-news.jsp?type=1">产品更新</a></li>
                 <li><a href="/html/product-trends/product-news.jsp?type=0">行业动态</a></li>
                 <li><a class='active-reader' href="javascript:void(0)">沙龙学堂</a></li>
             </ul>
         </div>
         <ul class="teacher clear ">
         	<!-- <embed src="http://192.168.3.10:8080/websiteUpload/video/201606210339612975.mp4" /> -->
         </ul>
         <br>
         <ul class="num_list">
         </ul>
         <!--中间内容-->
     </div>

    


     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
<script type="text/javascript">
function product_videos(page){
	var re = WSFUNCTION.doPostReturnFull("/article/html/list", {article_type: 3, page: page, pageSize: 6});
	var a = "", b = "";
	for(var i=0;i<re.data.length;i++){
		a += "<li class='fl'>"
			+"<iframe frameborder='0' width='373' height='248' "
			+"src='"+re.data[i].video_url+"' allowfullscreen></iframe><p class='desc-teach'>"+re.data[i].title+"</p>"
			+"</li>";
	}
	$(".teacher").html(a);
	if(page - 2 > 0){
		b += "<li><a href='javascript:void(0)' onclick='product_videos("+(page-1)+");'>上一页</a></li>";
	}
	if(page - 1 > 0){
		b += "<li><a href='javascript:void(0)' onclick='product_videos("+(page-1)+");'>"+(page-1)+"</a></li>";
	}
	b += "<li><a href='javascript:void(0)' onclick='product_videos("+page+");'>"+page+"</a></li>";
	if(page + 1 <= re.totalPage){
		b += "<li><a href='javascript:void(0)' onclick='product_videos("+(page+1)+");'>"+(page+1)+"</a></li>";
	}
	if(page + 2 <= re.totalPage){
		b += "<li><a href='javascript:void(0)' onclick='product_videos("+(page+1)+");'>下一页</a></li>";
	}
	$(".num_list").html(b);
}
</script>
<script type="text/javascript">
	/* window.onload=function(){
		console.log($(".teacher").find("iframe"));
		var aaa = $(".teacher").find("iframe");
		for(var i=0;i<aaa.length;i++){
			console.log( aaa[i].contentWindow.document.body );
			//console.log( $($("iframe")[i]).find("video").attr("name") );
		}
	} */
</script>
</html>

