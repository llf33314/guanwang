<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="@@meta@@"/>
<title>@@page_title@@</title>
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
    
     <div class=" wrap1130 clear">
         <div class="navigation fl">
             <div class="productStyle">
                 <h2 class="fl">@@subtitle@@</h2>

             </div>
             @@menu@@
  
         </div>
        <div class="fr mainArticle">
         <h2>@@title@@</h2>
         <h4 style='color: #9e9e9e;'>@@datetime@@</h4> 
         <div class="what clear" style="border-bottom:none" >
             <h2 style="border-bottom: 1px solid #eaeaea;" id="title"></h2>
             <span style='color: gray;font-size: medium;' id="datetime"></span>
             <br>
             <br>
             <p id="content">@@content@@
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

