<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>文章</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":434});
    var id = <%=request.getParameter("id") %>;
    var data = WSFUNCTION.doPost("/article/html/list", {id: id})[0];
	$("#title").html(data.title);
	$("#content").html(data.content);
})
</script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>
    
     <div class=" wrap1000">
         <!--中间内容-->
         <div class="product">
             <h2 class="fl">多粉产品动态</h2>
             <!--<ul class="pro_nav fl">-->
                 <!--<li><a href="javascript:;">企业动态</a></li>-->
                 <!--<li><a href="javascript:;">产品更新</a></li>-->
                 <!--<li><a href="javascript:;">公司新闻</a></li>-->
                 <!--<li><a href="javascript:;">沙龙学堂</a></li>-->
             <!--</ul>-->
         </div>

         <div class="what clear" style="border-bottom:none" >
             <h2 style="border-bottom: 1px solid #eaeaea;" id="title"></h2>
             <span style='color: gray;font-size: medium;'>2016-07-08</span>
             <br>
             <br>
             <p id="content">
             </p>

         </div>
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
     </div>

    


     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>

