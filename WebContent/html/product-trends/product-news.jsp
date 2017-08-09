<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="description" content="多粉是国内专业的微信第三方开发平台，您可以通过本页展示的公司新闻、产品更新、行业动态和沙龙学堂了解我们。"/>

    <title>多粉（duofriend）-多粉动态</title>

<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":434});
    $(".pro_nav li").click(function(){
    	$(this).siblings().find("a").removeClass("active-reader");
    	$(this).find("a").addClass("active-reader");
    	product_news($(this).attr("art-type"), 1);
    });
    var type = 2;
    var retype = <%=request.getParameter("type") %>;
    if(retype != null) type = retype;
    product_news(type, 1);
    $(".pro_nav li").find("a").removeClass("active-reader");
    $(".pro_nav li[art-type='"+type+"']").find("a").addClass("active-reader");
})
</script>
<style type="text/css">
	.greenBtn{
		background-color: #71c73f !important;
		color: white;
	}
</style>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>
    
     <div class=" wrap1000">
         <!--中间内容-->
         <div class="product">
             <h2 class="fl">多粉产品动态</h2>
             <ul class="pro_nav fl">
                 <li art-type="2"><a class='active-reader' href="javascript:void(0);">公司新闻</a></li>
                 <li art-type="1"><a href="javascript:void(0);">产品更新</a></li>
                 <li art-type="0"><a href="javascript:void(0);">行业动态</a></li>
                 <li><a href="product-video.jsp">沙龙学堂</a></li>
             </ul>
         </div>

         <ul class="what clear">
         </ul>
         <ul class="num_list">
             <li><a href="javascript:void(null)">1</a></li>
             <li><a href="javascript:void(null)">2</a></li>
             <li><a href="javascript:void(null)">3</a></li>
             <li><a href="javascript:void(null)">下一页</a></li>
         </ul>
         <!--中间内容-->
     </div>

    


     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
<script type="text/javascript">
function product_news(type, page){
	var re = WSFUNCTION.doPostReturnFull("/article/html/list", {article_type: type, page: page, pageSize: 12});
	var a = "", b = "";
	for(var i=0;i<re.data.length;i++){
		var d = new Date(re.data[i].createtime.time);
		var time = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
		/* a += "<li><a href='/html/product-trends/product-article.jsp?id="+re.data[i].id+"'>"+re.data[i].title+"</a>" + 
		"<span style='float: right;color: gray;font-size: smaller;'>" + time + "&nbsp;&nbsp;</span></li>"; */
		a += "<li><a href='/html/articlePage/article_"+re.data[i].id+".jsp' >"+re.data[i].title+"</a>" + 
		"<span style='float: right;color: gray;font-size: smaller;'>" + time + "&nbsp;&nbsp;</span></li>";
	}
	$(".what").html(a);
	if(page - 2 > 0){
		b += "<li><a href='javascript:void(0)' onclick='product_news("+type+", "+(page-1)+");'>上一页</a></li>";
	}
	if(page - 1 > 0){
		b += "<li><a href='javascript:void(0)' onclick='product_news("+type+", "+(page-1)+");'>"+(page-1)+"</a></li>";
	}
	b += "<li><a class='greenBtn' href='javascript:void(0)' onclick='product_news("+type+", "+page+");'>"+page+"</a></li>";
	if(page + 1 <= re.totalPage){
		b += "<li><a href='javascript:void(0)' onclick='product_news("+type+", "+(page+1)+");'>"+(page+1)+"</a></li>";
	}
	if(page + 2 <= re.totalPage){
		b += "<li><a href='javascript:void(0)' onclick='product_news("+type+", "+(page+1)+");'>下一页</a></li>";
	}
	$(".num_list").html(b);
}
</script>
</html>

