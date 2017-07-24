<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉产品使用手册</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
<%@include file="/html/common/cmm_css.jsp" %>
<link rel="stylesheet" href="./css/aboutus.css">
<%@include file="/html/common/js.jsp" %>

<script type="text/javascript">
	$(function(){
		var par = "<%=request.getParameter("i") %>".split("@@");
		var manualDetail = WSFUNCTION.doPost("/manual/html/list", {id:par[0]})[0];
		$("#title").html(par[1]+manualDetail.title);
		$("#cont").html(manualDetail.content);
	});
</script>

</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>

    <div class="instructions-container">
        <!--中间内容-->
        <h1 class="instr-title">多粉产品使用手册</h1>
        <img class="instr-tab" src="${imageUrl}/aboutus/tab.png" alt="">
        <div class="guide_mweb">
             <dl>
                 <dt id="title"></dt>
                 <dd id="cont">
                     
                 </dd>
             </dl>     
        </div>       
    </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>

