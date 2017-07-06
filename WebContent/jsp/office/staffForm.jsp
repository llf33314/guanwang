<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>多粉—连接粉丝，连接世界，广东谷通科技有限公司</title>
<meta http-equiv="X-UA-Compatible"content="IE=edge,chrome=1" />
<!--[if IE 8]>
<meta http-equiv="X-UA-Compatible" content="IE=8">
<![endif]-->
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<meta name="keywords" content="多粉、微营销、微信营销、微信推广、微信代运营、微信定制开发、微信营销软件、微信推广软件、微信推广平台" />
<meta name="description" content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微会员、微商城、微活动、微预约、微分销，助力企业全面开启微营销。" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<link rel="stylesheet" type="text/css" href="css/common.css?<%= System.currentTimeMillis()%>"/>
<link rel="stylesheet" type="text/css" href="css/office/staffForm.css?<%= System.currentTimeMillis()%>"/>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
<script type="text/javascript" src="js/layer/layer.js?<%= System.currentTimeMillis()%>"></script>

<script type="text/javascript">
	$(function(){
		 var idcard ='${map.idcard}';
		 idcard = idcard.substr(0,6)+"****"+idcard.substr(10,idcard.length);
		 $("#idcard").html(idcard);
		
	});
</script>
</head>
<body>
     <!--头部开始-->
		<div id="header" class="clearfix">
				<div class="container">				
				   	<div class="headerLeft fl">
				   		<img src="images/logoIndex.png" alt="logoImg" />
				   	</div>
				  	<div class="headerCent clearfix">
				   		<ul class="clearfix">
				   			<li class="items"><a href="jsp/office/index.jsp" class="white">首页</a></li>
				   			<li class="items"><a href="jsp/office/product.jsp" class="white">产品服务</a></li>
				   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white">合作召集</a></li>
				   			<li class="items"><a href="jsp/office/example.jsp" class="white">案例中心</a></li>
				   			<li class="items"><a href="jsp/office/help.jsp" class="white">帮助中心</a></li>
                            <li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   		<li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
				   		</ul>
				 	</div>
			 	</div>
		   	</div>
		<div id="upgrade">
			<a href="http://browsehappy.com/" target="_blank">浏览器版本提醒：你的浏览器太古董了！将无法体验完整产品功能，还不速速换一个，点击下载新版浏览器！</a>
			<i></i>
		</div>
		<div class="positon" style="height: 77px;width: 100%;"></div>
		<!--头部结束-->
		<!-- 中间内容开始 -->
		<div class="formCon" id="formCon">
		    <h1 class="formTitle">客户评价表</h1>
		    <hr />
		    <div class="abstract">
		         <p class="absTitle">尊敬的客户:</p>
		         <p class="absContent">衷心的感谢您对多粉的信任和支持。为不断的提高我公司的产品和服务质量，完善我们的工作，给您提供更优质的产品及服务。在致以我们诚挚的问候的同时，请您在百忙之中抽空填写员工评价表。我们热切的盼望着对您在我们的工作提出宝贵意见和建议，您的每一个意见和建议，将是我们不断前进的动力。谢谢您的配合，我们将不胜感激! </p>
		    </div>
		    <hr />
		    <!-- 被评价员工资料开始 -->
		    <div class="staffData">
		        <input type="hidden" id="id" value="${map.id}">
		        <input type="hidden" id="issave" value="0">
		        <div class="data">
		            <h2 class="dataTitle">一、被评价员工资料</h2>
		            <ul class="dataList">
		                <li class="dataItem">
		                   <label class="items dataName">姓名:</label>
		                    <label >${map.name}</label>
		                </li>
		                <li class="dataItem">
		                   <label class="items dataNum">工号:</label>
		                    <label >${map.number}</label>
		                </li>
		                <li class="dataItem">
		                    <label class="items dataSex">性别:</label>
		                     <label >${map.sex}</label>
		                </li>
		                <li class="dataItem">
		                    <label class="items dataArea">所属地区:</label>
		                    <label >${map.adder}</label>
		                </li>
		                <li class="dataItem">
		                    <label class="items dataId">身份证:</label>
		                    <label id="idcard"></label>
		                </li>
		                <li class="dataItem">
		                    <label class="items dataChannel">所属渠道:</label>
		                     <label >${map.channel}</label>
		                </li>
		            </ul>
		            <div class="staffImg">
		               <c:if test="${map.url eq null}">
			           <img src="images/staff/thr2.png" alt="照片" title="员工照片" />
			           </c:if>
			           <c:if test="${map.url ne null}">
			              <img src="${http}${map.url}" alt="照片" title="员工照片" />
			           </c:if>
			        </div>
		        </div>
		    </div>
		    <!-- 员工服务工作评定结束 -->
		    <hr />
		    <!-- 员工服务工作评定开始 -->
		    <div class="evaluate">
		       <h2>二、员工服务工作评定</h2>
		       <div class="evabox">
		           <div class="appearance">
			          <label class="appeItem">仪容仪表</label>
			          <span class="appeStar QuacorGrading" id="QuacorGrading1">
							<input name="1" type="button" />
							<input name="2" type="button" />
							<input name="3" type="button" />
							<input name="4" type="button" />
							<input name="5" type="button" />
							<input type="hidden" id="groomingnum" value="5">
			          </span>
			       </div>
			       <div class="appeText">
			          <label class="textItem">评价：</label>
			          <textarea cols="100" rows="3" class="appeCon" id="appeCon" placeholder="不能超过100字" maxlength="100"></textarea>
			       </div>
		       </div>
		       <div class="evabox">
		           <div class="express">
			          <label class="expItem">表达能力</label>
			          <span class="expStar QuacorGrading" id="QuacorGrading2">
			            <input name="1" type="button" />
						<input name="2" type="button" />
						<input name="3" type="button" />
						<input name="4" type="button" />
						<input name="5" type="button" />
						<input type="hidden" id="expressnum" value="5">
			          </span>
			       </div>
			       <div class="expText">
			          <label class="textItem">评价：</label>
			          <textarea cols="100" rows="3" class="expCon" id="expCon" placeholder="不能超过100字" maxlength="100"></textarea>
			       </div>
		       </div>
		       <div class="evabox">
		           <div class="service">
			          <label class="servItem">服务态度</label>
			          <span class="servStar QuacorGrading" id="QuacorGrading3">
			                <input name="1" type="button" />
							<input name="2" type="button" />
							<input name="3" type="button" />
							<input name="4" type="button" />
							<input name="5" type="button" />
							<input type="hidden" id="servicenum" value="5">
			          </span>
			       </div>
			       <div class="servText">
			          <label class="textItem">评价：</label>
			          <textarea cols="100" rows="3" class="servCon" id="servCon" placeholder="不能超过100字" maxlength="100"></textarea>
			       </div>
		       </div>
		       <div class="evabox">
		           <div class="professional">
			          <label class="proItem">专业知识</label>
			          <span class="proStar QuacorGrading" id="QuacorGrading4">
			                <input name="1" type="button" />
							<input name="2" type="button" />
							<input name="3" type="button" />
							<input name="4" type="button" />
							<input name="5" type="button" />
							<input type="hidden" id="majornum" value="5">
			          </span>
			       </div>
			       <div class="proText">
			          <label class="textItem">评价：</label>
			          <textarea cols="100" rows="3" class="maCon" id="maCon" placeholder="不能超过100字" maxlength="100"></textarea>
			       </div>
		       </div>
		    </div>
		    <!-- 员工服务工作评定结束 -->
		    <hr />
		    <!-- 需求反馈改进建议开始 -->
		    <div class="suggest">
		       <h2>三、需求反馈及改进建议</h2>
		       <textarea cols="100" rows="5" class="sugCon" id="sugCon" placeholder="不能超过100字" maxlength="100"></textarea>
		    </div>
		     <!-- 需求反馈改进建议结束 -->
		     <div class="evaBtn">
		        <input type="submit" name="" id="formSub" class="formSub" value="" />
		        <input type="button" name="" id="formReturn" class="formReturn" value="" />
		     </div>
		</div>
		<!-- 中间内容结束 -->
         <!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
        <script type="text/javascript">
			var GradList = document.getElementById("QuacorGrading1").getElementsByTagName("input");
			var GradList2 = document.getElementById("QuacorGrading2").getElementsByTagName("input");
			var GradList3 = document.getElementById("QuacorGrading3").getElementsByTagName("input");
			var GradList4 = document.getElementById("QuacorGrading4").getElementsByTagName("input");
			for(var i=0;i < GradList.length;i++){
				GradList[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList.length;Qi++){
						GradList[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList[Qii].style.backgroundPosition = 'left center';
						
					}
					$("#groomingnum").val(this.name);
				}
			}
			for(var i=0;i < GradList2.length;i++){
				GradList2[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList2.length;Qi++){
						GradList2[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList2[Qii].style.backgroundPosition = 'left center';
					}
					$("#expressnum").val(this.name);
				}
			}
			
			for(var i=0;i < GradList3.length;i++){
				GradList3[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList3.length;Qi++){
						GradList3[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList3[Qii].style.backgroundPosition = 'left center';
					}
					$("#servicenum").val(this.name);
				}
			}
			for(var i=0;i < GradList4.length;i++){
				GradList4[i].onmouseover = function(){
					for(var Qi=0;Qi<GradList4.length;Qi++){
						GradList4[Qi].style.backgroundPosition = 'right center';
					}
					for(var Qii=0;Qii<this.name;Qii++){
						GradList4[Qii].style.backgroundPosition = 'left center';
					}
					$("#majornum").val(this.name);
				}
			}
			 $(function(){
				$("#formSub").click(function() {
					var issave = $("#issave").val();//防止二次提交
					if(issave==1){
						return;
					}
					var employeeid = $("#id").val();
					var groomingnum = $("#groomingnum").val();
					var expressnum = $("#expressnum").val();
					var servicenum = $("#servicenum").val();
					var majornum = $("#majornum").val();
					var groomingtext = $("#appeCon").val();
					var expresstext = $("#expCon").val();
					var servicetext = $("#servCon").val();
					var majortext = $("#maCon").val();
					$("#issave").val(1);
					  $.ajax({   
          				type:"post",
          				url:"/login/employeeadd",
          				data:{employeeid:employeeid,groomingnum:groomingnum,expressnum:expressnum,servicenum:servicenum,majornum:majornum,groomingtext:groomingtext,expresstext:expresstext,majortext:majortext,servicetext:servicetext},
          				async:false,
          				dataType:"json",
          				success:function(data){
          					var error = data.error;
          					if(error==1){
          						 alert(data.message);
          						$("#issave").val(0);
          					}else{
          						 alert("谢谢你对该员工的认可！");
          						  window.location.href = "/jsp/office/staff.jsp";  
          					}
          				}
					  })
		            });
			     $("#formReturn").click(function() {
			    	 window.location.href = "/jsp/office/staff.jsp"
			     })
			 })
			
	  </script>
</body>
</html>