<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>文章</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":434});
    var id = <%=request.getParameter("id") %>;
    var data = WSFUNCTION.doPost("/article/html/list", {id: id})[0];
	$("#title").html(data.title);
	$("#content").html(data.content);
	var d = new Date(data.createtime.time);
	var time = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
	$("#datetime").html(time);
})
</script>
</head>

<body>
<div class="wrap index">    
    <%@include file="/html/common/clearfix.jsp" %>
    
     <div class=" wrap1130 clear">
         <!--中间内容-->        
         <!--导航栏-->
         <div class="navigation fl">
             <div class="productStyle">
                 <h2 class="fl">多粉产品动态</h2>

             </div>
             <h3 class="fl titleNewsCnt">公司新闻</h3>
             <ul class="ul-newslist">
                 <li class="newsList-article">
                     <span class="dot-green"></span>
                     <span class="ctnnews">微信支付无现金日，商家们准备好了吗?</span>
                 </li>
                 <li class="newsList-article">
                     <span class="dot-green"></span>
                     <span class="ctnnews">微信支付无现金日，商家们准备好了吗?</span>
                 </li>
                 <li class="newsList-article">
                     <span class="dot-green"></span>
                     <span class="ctnnews">微信支付无现金日，商家们准备好了吗?</span>
                 </li>
             </ul>   
             <h3 class="fl titleNewsCnt">产品更新</h3>
             <ul class="ul-newslist">
                 <li class="newsList-article">
                     <span class="dot-green"></span>
                     <span class="ctnnews">微信支付无现金日，商家们准备好了吗?</span>
                 </li>
                 <li class="newsList-article">
                     <span class="dot-green"></span>
                     <span class="ctnnews">微信支付无现金日，商家们准备好了吗?</span>
                 </li>
                 <li class="newsList-article">
                     <span class="dot-green"></span>
                     <span class="ctnnews">微信支付无现金日，商家们准备好了吗?</span>
                 </li>
             </ul>
  
         </div>
          <!-- 导航栏-->
        <div class="fr mainArticle">
         <h2>导航栏</h2>
         <h4 style='color: #9e9e9e;'>2016-12-21</h4> 
         <div class="what clear" style="border-bottom:none" >
             <h2 style="border-bottom: 1px solid #eaeaea;" id="title"></h2>
             <span style='color: gray;font-size: medium;' id="datetime"></span>
             <br>
             <br>
             <p id="content">
             </p>
 
         </div>
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

