<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="@@meta@@" />
<title>@@page_title@@</title>
<link rel="stylesheet" type="text/css" href="/html/operationCourse/css/course.css" />
<script type="text/javascript" src="/html/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/js/webSite.js"></script>
</head>

<body>
		<%@include file="/html/common/clearfix.jsp"%>

		<div class="content" style="    margin: 130px auto 0;">
			<div class="art-content">
				<!--左边-->
				<div class="art-content-left">
					<div class="art-content-title">@@contenttitles@@</div>
					<!--内容框  start-->
					<div class="contentBox">
						@@insethtml@@
					</div>
					<!--内容框  end-->
					<div class="up-data">@@createtime@@</div>
				</div>
				<!--右边-->
				<div class="art-content-right">
					<div class="art-content-right-top">
						<div class="art-content-right-title">@@s1@@</div>
						<div class="art-content-right-lecturer">
							<div class="lecturer-photo"><img src="@@teacherimg@@"  /></div>
							<div class="lecturer-name">@@teachername@@</div>
							<div class="lecturer-intro">@@teacherdesc@@</div>
						</div>
						<!--其他课程-->
						<div class="otherClass">
							<div class="art-content-right-title">@@s2@@</div>
							<ul class="otherClass-row" id="otherClass-row1">

							</ul>
						</div>
					</div>
					<!--最新推荐-->
					<div class="art-content-right-bottom">
						<div class="art-content-right-title">@@s3@@</div>
						<ul class="otherClass-row" id="otherClass-row2">

						</ul>
					</div>
				</div>
				<div class="page">
					<a id="next" class="onPage  next">@@s4@@</a>
					<a id="last" class="onPage next">@@s5@@</a>
				</div>
			</div>
		</div>

<script>
    var teacherid = "@@teacherid@@";
    var id = "@@id@@";
    $(function () {
        var productJson = WSFUNCTION.doPost(
            "/operationCourse/html/courselist1", {});
        var products = productJson.courselist;
        var  a  = 10 ;
        if (a > products.length){
            a = products.length;
		}
        for(var i=0;i<a;i++){
            $('#otherClass-row2').append('<li>'
                +'<img src="'+products[i].logourl+'"/>'
                +'<div class="ellipsis"><a href="/html/operationCourse/operationCourse_'+products[i].id+'.jsp">'+products[i].pcdesc+'</a></div>'
                +'</li>');
        }
        var a = 0 ;
        for(var j = 0 ; j < products.length ; j++){
				if(products[j].teacherid == teacherid && products[j].id != id ){
						$('#otherClass-row1').append('<li>'
							+'<img src="'+products[j].logourl+'"/>'
							+'<div class="ellipsis"><a href="/html/operationCourse/operationCourse_'+products[j].id+'.jsp">'+products[j].pcdesc+'</a></div>'
							+'</li>');
						a++;
                }
                if(a == 2 ) {
                    break;
                }
        }
        if(a == 0 ){
            $('#otherClass-row1').append('<span> @@s6@@ </span>');
		}

        for (var b = 0 ; b < products.length ; b++){
            debugger;
            if (products[b].id == id){
                if(b == (products.length-1)){
                    $("#next").attr("href",'javascript: void(0);');
                }else {
                    $("#next").attr("href",'/html/operationCourse/operationCourse_'+products[b+1].id+'.jsp');
                }
                if(b==0){
                    $("#last").attr("href",'javascript: void(0);');
                }else {
                    $("#last").attr("href",'/html/operationCourse/operationCourse_'+products[b-1].id+'.jsp');
                }
                break;
            }
        }


    })



</script>
		<!--====================================================================================-->


		
		<%@include file="/html/common/footer.jsp"%>
		
</body>
</html>

