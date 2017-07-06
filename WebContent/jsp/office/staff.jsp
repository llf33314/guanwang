<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link rel="stylesheet" type="text/css" href="css/office/staff.css?<%= System.currentTimeMillis()%>"/>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
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
		<div class="staffCon" id="staffCon">
		    <div class="staffOne"></div>
		    <div class="staffTwo">
		        <div class="warp">
		             <div class="inquire">
		                 <h2 class="inqTit">员工查询</h2>
		                 <div class="inqCon">
		                     <div class="inqWarp">
		                        <div class="select">请选择：<input type="radio" name="select" class="number" id="number" value="1" checked />工号 <input type="radio" name="select" value="2" class="inqName" id="inqName" />姓名</div>
		                         <form action="#" method="post" class="numForm" id="numForm">
                                      <p><label class="selectl">工号：</label><input type="text" class="numText" id="numbercx" /></p>
                                      <p><label class="selectl">验证码：</label>
                                      <input type="text" class="codeText" name="valCode1" id="valCode1"/>
                                      <!--  <div style="width: 80px;height: 35px;float: right;margin-right: 75px;"> -->
                    		               <img alt="失败啦！" id="valCodeImg" src="/login/html/buildCode" style="cursor: pointer;vertical-align: middle;"title="看不清，换一张">
                    	              <!--  </div> -->
                                      </p>	
                                      <p>
                                      <font class="tsy1" style="color:red;align:center;"></font>
                                       
                                      </p>	                         
		                         </form>
		                         <form action="#" method="post" class="numForm" id="nameForm" style="display: none">
                                      <p><label class="selectl">姓名：</label><input type="text" class="numText" id="namecx" /></p>
                                      <p><label class="selectl">验证码：</label> <input type="text" class="codeText" name="valCode2" id="valCode2"/>
                    		               <img alt="失败啦！" id="valCodeImg" src="/login/html/buildCode" style="cursor: pointer;vertical-align: middle;"title="看不清，换一张">
                                       <p>
                                         <font class="tsy2" style="color:red;align:center;"></font>
                                      </p>	
                                      
		                         </form>
		                          <div class="operate">
		                               <input type="button" value="查询" class="ok" id="ok" />
		                               <input type="button" value="返回" class="return" id="return" onclick="window.location.href='jsp/office/index.jsp'"/>
		                           </div>
		                     </div>
		                 </div>
		             </div>
		             <div class="inquireShow" style="display: none">
		                <input type="hidden" id="maphidd" name="maphidd" value="">
		                <span class="hide"></span>
		                <div class="detail">
		                    <div class="detailMsg">
		                        <div class="detailItem">
		                            <label class="msgItem msgItem1">姓名:</label>
		                            <label class="result showNmae" id="showName">dkjgid</label>
		                        </div>
		                        <div class="detailItem">
		                            <label class="msgItem msgItem1">性别:</label>
		                            <label class="result sex" id="sex">ldgjld</label>
		                        </div>
		                        <div class="detailItem">
		                            <label class="msgItem msgItem1">工号:</label>
		                            <label class="result showNum" id="showNum">1234567890</label>
		                        </div>
		                        <div class="detailItem">
		                            <label class="msgItem msgItem4">身份证:</label>
		                            <label class="result idCard" id="idCard">1234567890987654321</label>
		                        </div>
		                        <div class="detailItem">
		                            <label class="msgItem">所属地区:</label>
		                            <label class="result area" id="area">广州惠州总部</label>
		                        </div>
		                    </div>
		                    <div class="detailPic">
		                        <img src="images/staff/thr2.png" id="ipdict" />
		                    </div>
		                </div>
		                <div class="channel">
		                    <div class="chaMsg">
		                        <label class="msgItem">所属渠道:</label>
		                        <label class="result" id="channel">惠州总部</label>
		                    </div>
		                    <div class="star">
		                      <label class="msgItem">星级：</label>
		                       <span class="starShow">
		                       </span>
		                    </div>
		                </div>
		                <hr />
		                <div class="case">
		                   <div class="msgItem">服务案例:</div>
		                   <div class="caseShow">
		                   </div>
		                </div>
		                <hr />
		                <div class="assess">
		                   <div class="msgItem">客户评价:</div>
		                   <div class="assShow">快捷地打开了更健康代理发票肯定健康的话I酷多久领导咳嗽来得及哦是历史地看佛</div>
		                </div>
		                <a class="goAssess" style="cursor:pointer;">立即评价>>></a>
		             </div>
		        </div>
		    </div>
		    <div class="staffThr">
		        <ul>
		          <li class="thrItem thrItem1">
		              <img class="pic" src="images/staff/thr1.png" alt="img" title="诚信 严谨" />
		              <p class="intro">诚信 &nbsp;严谨</p>
		          </li>
		          <li class="thrItem thrItem2">
		              <img class="pic" src="images/staff/thr2.png" alt="img" title="极致 专业" />
		              <p class="intro">极致 &nbsp;专业</p>
		          </li>
		          <li class="thrItem thrItem3">
		              <img class="pic" src="images/staff/thr3.png" alt="img" title="服务 至上" />
		              <p class="intro">服务 &nbsp;至上</p>
		          </li>
		        </ul>
		    </div>
		</div>
		<!-- 中间内容结束 -->
        <!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
        <script type="text/javascript">
            $(function(){
            	  /* 工号姓名显示一个 */
            	  
            	 $(".select input:radio").click(function(){
            		/*  $(this).attr("checked",true); */
            		 if($("#inqName").attr("checked")){
            			 $("#numForm").hide();
            			 $("#nameForm").show();
            		 }else{
            			 $("#numForm").show();
            			 $("#nameForm").hide();
            		 }
            	 });
            	
            			// 点击验证码
            	$("#valCodeImg").click(function() {
            		var src = $(this).prop("src");
            		$(this).prop("src", src + "?");
            	});
            	
            	  /* 查询按钮显示右侧数据 */
            	  $("#ok").bind("click",function(){
            		  var select = $("input[name='select']:checked ").val();
            		  var cx;
            		  var valcode;
            		  //select ==1 代表是员工号查询
            		  if(select==1){
            			  var numbercx = $("#numbercx").val();
            			  if(numbercx==null||numbercx==""){
            				  return;
            			  }
            			  var valCode1 = $("#valCode1").val();
            			  if(valCode1==null||valCode1==""){
            				  return;
            			  }
            			  cx = numbercx;
            			  valcode = valCode1;
            		  }else{
            			  var namecx = $("#namecx").val();
            			  if(namecx==null||namecx==""){
            				  return;
            			  }
            			  var valCode2 = $("#valCode2").val();
            			  if(valCode2==null||valCode2==""){
            				  return;
            			  }
            			  cx = namecx;
            			  valcode = valCode2;
            		  }
            		  $.ajax({   
            				type:"post",
            				url:"/login/employeeQuery",
            				data:{select:select,cx:cx,valcode:valcode},
            				async:false,
            				dataType:"json",
            				success:function(data){
            					var error=data.error;
            					if(error==1||error=="1"){
            					 if(select==1){
            						 $(".tsy1").html("提示："+data.message);
            					 }else{
            						 $(".tsy2").html("提示："+data.message);
            					 }
            					}
            					else{
            						 $(".tsy1").html("");
            						 $(".tsy2").html("");
            						 $("#numbercx").val("");
            						 $("#valCode1").val("");
            						 $("#namecx").val("");
            						 $("#valCode2").val("");
            						 var s=data.map;
            						 var json = jQuery.parseJSON(s); 
            						 $("#maphidd").val(json.id);
            						 $("#showName").html(json.name);
            						 $("#sex").html(json.sex);
            						 $("#showNum").html(json.number);
            						 var idcard =json.idcard;
            						 idcard = idcard.substr(0,6)+"****"+idcard.substr(10,idcard.length);
            						 $("#idCard").html(idcard);
            						 $("#area").html(json.adder);
            						 $("#channel").html(json.channel);
            						 var http = data.http;
            						 var url = json.url;
            						 if(url!=null&&url!=""){
            							 $("#ipdict").attr("src",http+url);
            						 }
            						 var score = json.score;
            						 $(".starShow").find("img").remove();
            						 var htmlsc = "";
            						 if(score>=1){
            							 htmlsc += "<img src='images/staff/starCur.png' alt='star'/>";
            						 }
            						 if(score>=2){
            							 htmlsc += "<img src='images/staff/starCur.png' alt='star'/>";
            						 }
            						 if(score>=3){
            							 htmlsc += "<img src='images/staff/starCur.png' alt='star'/>";
            						 }
            						 if(score>=4){
            							 htmlsc += "<img src='images/staff/starCur.png' alt='star'/>";
            						 }
            						 if(score>=5){
            							 htmlsc += "<img src='images/staff/starCur.png' alt='star'/>";
            						 }
            						 $(".starShow").append(htmlsc);
            						 $(".caseShow").find("p").remove();
            						 var serviceList = data.serviceList;
            						 var html = "";
            						 for(var i=0;i<serviceList.length;i++){
            							 html+="<p>"+serviceList[i].servicecase+"</p>"
            							
            						 }
            						 $(".caseShow").append(html);
            						 $(".assShow").html(json.evaluate);
            						 $(".inquireShow").show(); 
            					
            					}
            				}
            		 });
            	  })
            	   /* 右侧数据内容隐藏按钮 */
            	$('.inquireShow .hide').bind("click",function(){
            	  $(".inquireShow").hide();	
            	});
            	$(".goAssess").bind("click",function(){
            		 var id = $("#maphidd").val();
            		window.location.href = "login/staffForm?id="+id;
            	})
            	  
            });
        </script>
</body>
</html>