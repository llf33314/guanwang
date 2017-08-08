<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>官网</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":434});
})
</script>
</head>

<body>
<div class="wrap index">
     <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/banner.jpg"></a></li>
             <li><a href="#"><img lazy_src="${imageUrl}/banner1.jpg"></a></li>
             <li><a href="#"><img lazy_src="${imageUrl}/banner2.jpg"></a></li>
         </ul>
     </div>



     <div class="containter">
         <!--中间内容-->
          <div >
             <ul class="aboutus_title">
                 <li>多粉简介</li>
                 <li>所获荣誉</li>
                 <li>企业文化</li>
                 <li>加入我们</li>
                 <li>公司团队</li>
                 <li>联系我们</li>
             </ul>
          </div>




         <!--中间内容-->
     </div>

    


     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>

