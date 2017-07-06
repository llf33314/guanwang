<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="css/office/help.css?<%= System.currentTimeMillis()%>"/>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
</head>
	<body>
		<!--头部开始-->
			<div id="header">
				<div class="container clearfix">				
				   	<div class="headerLeft fl">
				   		<img src="images/logoIndex.png" alt="logoImg" />
				   	</div>
				  	<div class="headerCent clearfix">
				   		<ul class="clearfix">
				   			<li class="items"><a href="jsp/office/index.jsp" class="white" >首页</a></li>
				   			<li class="items"><a href="jsp/office/product.jsp" class=" white">产品服务</a></li>
				   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white" >合作召集</a></li>
				   			<li class="items"><a href="jsp/office/example.jsp" class="white" >案例中心</a></li>  
				   			<li class="items"><a href="jsp/office/help.jsp" class="white headerCurrent" >帮助中心</a></li>	
					   		<li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   	    <li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
				   		</ul>
				 	</div>
			 	</div>
		   	</div>
		<!--头部结束-->
		<!--占位div-->
		<div class="position" style="width: 100%;height: 77px;">
			
		</div>
		<!--中间开始-->
		<div id="helpCon">
			  <!--  <div class="conOne"></div> -->
			   <div class="conTwo clearfix">
			   	   <div class="container conTwoWarp">
			   	   	<!--  <h1 class="conTwoH1">帮助中心</h1> -->
			   	   	   <div class="conTwoTr1">
			   	   	   	 <div class="twoOne  helpbox" onclick="showDetails('#helpWarp')">
			   	   	   	 	 <span class="conplay"></span>
			   	   	   	 	 <div class="conText">
			   	   	   	 	 	<h2>1   多粉介绍</h2>
			   	   	   	 	 	<p class="textLeft fl">
			   	   	   	 	 		<label for=""><i>1.1</i>什么是多粉</label>
			   	   	   	 	 		<label for=""><i>1.2</i>多粉平台优势</label>
			   	   	   	 	 		<label for=""><i>1.3</i>什么是粉币</label>
			   	   	   	 	 	</p>
			   	   	   	 	 </div>
			   	   	   	 </div>
			   	   	   	 <div class="twoTwo helpbox" onclick="showDetails('#helpWarp')">
			   	   	   	 	  <span class="conplay"></span>
			   	   	   	 	 <div class="conText">
			   	   	   	 	 	<h2>2   基础设置</h2>
			   	   	   	 	 	<p class="textLeft fl">
			   	   	   	 	 		<label for=""><i>2.1</i>如何注册微信公众号</label>
			   	   	   	 	 		<label for=""><i>2.2</i>如何注册多粉平台</label>
			   	   	   	 	 		<label for=""><i>2.3</i>如何添加公众号</label>
			   	   	   	 	 		<!-- <label for=""><i>2.4</i>账户信息参数详解</label>
			   	   	   	 	 		<label for=""><i>2.5</i>运营图表</label>
			   	   	   	 	 		<label for=""><i>2.6</i>默认设置</label> -->
			   	   	   	 	 	</p>
			   	   	   	 	 	<p class="textRig fr">
			   	   	   	 	 		<!-- <label for=""><i>2.7</i>关注时间回复</label> -->
			   	   	   	 	 		<label for=""><i>2.4</i>文本回复</label>
			   	   	   	 	 		<label for=""><i>2.5</i>图文回复</label>
			   	   	   	 	 		<label for=""><i>2.6</i>自定义菜单</label>
			   	   	   	 	 		<!-- <label for=""><i>2.11</i>LBS回复</label> -->
			   	   	   	 	 	</p>
			   	   	   	 	 </div>
			   	   	   	 </div>
			   	   	   	 <div class="twoThr helpbox" onclick="showDetails('#helpWarp')">
			   	   	   	 	 <span class="conplay"></span>
			   	   	   	 	 <div class="conText">
			   	   	   	 	 	<h2>3   消息、粉丝、群发管理</h2>
			   	   	   	 	 	<p class="textLeft fl">
			   	   	   	 	 		<!-- <label for=""><i>3.1</i>模板消息类别</label>
			   	   	   	 	 		<label for=""><i>3.2</i>模板消息功能解析</label>
			   	   	   	 	 		<label for=""><i>3.3</i>模板消息示例</label> -->
			   	   	   	 	 		<label for=""><i>3.4</i>消息快速群发</label>
			   	   	   	 	 		<label for=""><i>3.5</i>粉丝关键字查询</label>
			   	   	   	 	 		<label for=""><i>3.6</i>粉丝高级查询</label>
			   	   	   	 	 		<label for=""><i>3.7</i>粉丝批量分组</label>
			   	   	   	 	 	</p>
			   	   	   	 	 	<p class="textRig fr">
			   	   	   	 	 		
			   	   	   	 	 		<label for=""><i>3.8</i>粉丝分组修改</label>
			   	   	   	 	 		<label for=""><i>3.9</i>分组快速群发</label>
			   	   	   	 	 		<label for=""><i>3.10</i>高级群发</label>
			   	   	   	 	 	</p>
			   	   	   	 	 </div>
			   	   	   	 </div>
			   	   	   </div>
			   	   	  <div class="conTwoTr2 " >
			   	   	   	 <div class="twoFou helpbox" onclick="showDetails('#helpWarp')">
			   	   	   	 	 <span class="conplay"></span>
			   	   	   	 	 <div class="conText">
			   	   	   	 	 	<h2>4    微官网</h2>
			   	   	   	 	 	<p class="textLeft fl">
			   	   	   	 	 		<label for=""><i>4.1</i>微官网设置</label>
			   	   	   	 	 		<label for=""><i>4.2</i>首页幻灯片设置</label>
			   	   	   	 	 		<!-- <label for=""><i>4.3</i>类管理</label>
			   	   	   	 	 		<label for=""><i>4.4</i>文章添加</label> -->
			   	   	   	 	 		<label for=""><i>4.3</i>模板管理</label>
			   	   	   	 	 		<!-- <label for=""><i>4.6</i>快捷与版权</label> -->
			   	   	   	 	 	</p>
			   	   	   	 	 </div>
			   	   	   	 </div>
			   	   	   	 <div class="twoFiv helpbox" onclick="showDetails('#helpWarp')">
			   	   	   	 	 <span class="conplay"></span>
			   	   	   	 	 <div class="conText">
			   	   	   	 	 	<h2>5  微场景</h2>
			   	   	   	 	 	<p class="textLeft fl">
			   	   	   	 	 		<label for=""><i>5.1</i>微场景设置</label>
			   	   	   	 	 		<label for=""><i>5.2</i>背景幻灯片设置</label>
			   	   	   	 	 		<!-- <label for=""><i>5.3</i>分类管理</label>
			   	   	   	 	 		<label for=""><i>5.4</i>连接添加</label> -->
			   	   	   	 	 		<label for=""><i>5.3</i>模板管理</label>
			   	   	   	 	 		<!-- <label for=""><i>5.6</i>快捷与版权</label> -->
			   	   	   	 	 	</p>
			   	   	   	 	 </div>
			   	   	   	 </div>
			   	   	   	 <div class="twoSix helpbox" onclick="showDetails('#helpWarp')">
			   	   	   	 	 <span class="conplay"></span>
			   	   	   	 	 <div class="conText">
			   	   	   	 	 	<h2>6   微推广</h2>
			   	   	   	 	 	<p class="textLeft fl">
			   	   	   	 	 		<label for=""><i>6.1</i>优惠券</label>
			   	   	   	 	 		<label for=""><i>6.2</i>刮刮卡</label>
			   	   	   	 	 		<label for=""><i>6.3</i>大转盘</label>
			   	   	   	 	 		<label for=""><i>6.4</i>微投票</label>
			   	   	   	 	 		<label for=""><i>6.5</i>中秋送礼</label>
			   	   	   	 	 		<label for=""><i>6.6</i>疯狂划算</label>
			   	   	   	 	 	</p>
			   	   	   	 	 	<p class="textRig fr">
			   	   	   	 	 		<label for=""><i>6.7</i>暖男躲避战</label>
			   	   	   	 	 		<label for=""><i>6.8</i>彩票</label>
			   	   	   	 	 		<label for=""><i>6.9</i>圣诞活动</label>
			   	   	   	 	 		<label for=""><i>6.10</i>微助力</label>
			   	   	   	 	 		<label for=""><i>6.11</i>新年贺卡</label>
			   	   	   	 	 		<label for=""><i>6.12</i>童年回忆</label>
			   	   	   	 	 	</p>
			   	   	   	 	 </div>
			   	   	   	 </div>
			   	   	   </div>
			   	   </div>
			   </div>
		</div>
		<!--中间结束-->
		<!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
		<!--弹出层的遮罩层-->
		 <div id="fade" class="black_overlay"></div> 
		 <div id="helpWarp">
		   <div class="helpClose">
		      
		   </div>
		   <div class="left" id="left">
		     <div class="menu">
	        	<b class="menu-p" id="menu0">多粉介绍</b>
	            <div class="menu-c">
	                <ul>
						<li><a href="javascript:;" onclick="selectTag('item0',this)">什么是多粉</a></li>
						<li><a href="javascript:;" onclick="selectTag('item1',this)">多粉平台优势</a></li>
						<li><a href="javascript:;" onclick="selectTag('item2',this)">什么是粉币</a></li>
					</ul>
	            </div>
	            <b class="menu-p" id="menu1">基础设置</b>
	            <div class="menu-c">
	                <ul>
	                	<li><a href="javascript:;" onclick="selectTag('item3',this)">如何注册微信公众号</a></li>
						<li><a href="javascript:;" onclick="selectTag('item4',this)">如何注册多粉平台</a></li>
						<li><a href="javascript:;" onclick="selectTag('item5',this)">如何添加公众号</a></li>
						<!-- <li><a href="javascript:;" onclick="">账户信息参数详解</a></li>
						<li><a href="javascript:;" onclick="">运营图表</a></li>
						<li><a href="javascript:;" onclick="">默认设置</a></li>
						<li><a href="javascript:;" onclick="">关注时间回复</a></li> -->
						<li><a href="javascript:;" onclick="selectTag('item10',this)">文本回复</a></li>
						<li><a href="javascript:;" onclick="selectTag('item11',this)">图文回复</a></li>
						<li><a href="javascript:;" onclick="selectTag('item12',this)">自定义菜单</a></li>
						<!-- <li><a href="javascript:;" onclick="">LBS回复</a></li> -->
					</ul>
	            </div>
	            <b class="menu-p" id="menu2">消息、粉丝、群发管理</b>
	            <div class="menu-c">
	              <ul>
						<!-- <li><a href="javascript:;" onclick="">模板消息类别</a></li>
						<li><a href="javascript:;" onclick="">模板消息功能解析</a></li>
						<li><a href="javascript:;" onclick="">模板消息示例</a></li> -->
						<li><a href="javascript:;" onclick="selectTag('item17',this)">消息快速群发</a></li>
						<li><a href="javascript:;" onclick="selectTag('item18',this)">粉丝关键字查询</a></li>
						<li><a href="javascript:;" onclick="selectTag('item19',this)">粉丝高级查询</a></li>
						<li><a href="javascript:;" onclick="selectTag('item20',this)">粉丝批量分组</a></li>
						<li><a href="javascript:;" onclick="selectTag('item21',this)">粉丝分组修改</a></li>
						<li><a href="javascript:;" onclick="selectTag('item22',this)">分组快速群发</a></li>
						<li><a href="javascript:;" onclick="selectTag('item23',this)">高级群发</a></li>
					</ul>
	            </div>
	            <b class="menu-p" id="menu3">微官网</b>
					<div class="menu-c">
						<ul>
							<li><a href="javascript:;" onclick="selectTag('item24',this)">微官网设置</a></li>
							<li><a href="javascript:;" onclick="selectTag('item25',this)">首页幻灯片设置</a></li>
							<!-- <li><a href="javascript:;" onclick="">类管理</a></li>
							<li><a href="javascript:;" onclick="">文章添加</a></li> -->
							<li><a href="javascript:;" onclick="selectTag('item28',this)">模板管理</a></li>
							<!-- <li><a href="javascript:;" onclick="">快捷与版权</a></li> -->
						</ul>
					</div>
	            <b class="menu-p" id="menu4">微场景</b>
	            <div class="menu-c">
	                <ul>
						<li><a href="javascript:;" onclick="selectTag('item30',this)">微场景设置</a></li>
						<li><a href="javascript:;" onclick="selectTag('item31',this)">背景幻灯片设置</a></li>
						<!-- <li><a href="javascript:;" onclick="">分类管理</a></li>
						<li><a href="javascript:;" onclick="">连接添加</a></li> -->
						<li><a href="javascript:;" onclick="selectTag('item34',this)">模板管理</a></li>
						<!-- <li><a href="javascript:;" onclick="">快捷与版权</a></li> -->
					</ul>
	            </div>
	            <b class="menu-p" id="menu5">微推广</b>
	            <div class="menu-c">
		            <ul>
		             <li><a href="javascript:;" onclick="selectTag('item35',this)">敬请期待</a></li>
		            </ul>
	                <!-- <ul>
						<li><a href="javascript:;">优惠券</a></li>
						<li><a href="javascript:;">刮刮卡</a></li>
						<li><a href="javascript:;">大转盘</a></li>
						<li><a href="javascript:;">微投票</a></li>
						<li><a href="javascript:;">中秋送礼</a></li>
						<li><a href="javascript:;">疯狂划算</a></li>
						<li><a href="javascript:;">暖男躲避战</a></li>
						<li><a href="javascript:;">彩票</a></li>
						<li><a href="javascript:;">圣诞活动</a></li>
						<li><a href="javascript:;">微助力</a></li>
						<li><a href="javascript:;">新年贺卡</a></li>
						<li><a href="javascript:;">童年回忆</a></li>
					</ul> -->
	            </div>
	          </div> 
		   </div>
		   <div class="right" id="right">
		      
		       <div class="helpMessage helpMessage01  list0" id="item0" style="display: block">
				 	<h1>多粉介绍</h1>
				 	<h2>1.1 什么是多粉</h2>
				 	<p>多粉作为一家新兴的移到互联服务提供商，主要为企业提供微信营销、数据分析、社会化营销及移动客户端的客户管理系统。自公司成立以来以客户需求为出发点，为企业提供微信行业的深度解决方案，平台的建设，系统的维护，运营的体系，策划方案，为品牌客户提供一站式的移动营销及行业应用的解决方案。</p>
			   </div>
			   <div class="helpMessage helpMessage02" id="item1" style="display: none">
			     <h1>多粉介绍</h1>
			     <h2>1.2 多粉的优势</h2>
				 <p>商家可通过多粉平台更好的管理微信公众号，提供管理、互动、服务为一体的微信体验模式。多粉平台是专门为商家和粉丝打造共赢的服务平台，粉丝就是我们的财富，就是我们的潜在客户，让粉丝活跃起来是我们的宗旨。在这里，我们不需要想尽办法“吸粉”，在这里唯一要想是怎样“留粉”！</p>
			   </div>
			   <div class="helpMessage helpMessage03" id="item2" style="display: none">
			       <h1>多粉介绍</h1>
			       <h2>1.3 什么是粉币</h2>
				   <p>简介：粉币是多粉营销平台推出的一种虚拟货币，它的兑换价为1人民币=100粉币。商家通过多粉平台在线充值获得粉币，粉币可以在多粉平台推广活动中使用，如分享红包，幸运大转盘等活动。粉丝获得的粉币可以在多粉平台的粉币商城兑换实物商品、话费、Q币等，也可以在部分商家消费时直接抵扣现金，或可通过多粉平台按比例兑换人民币。</p>
			   </div>
			   <div class="helpMessage helpMessage04 list1" id="item3" style="display:none">
			       <h1>基础设置</h1>
			       <h2>2.1 如何注册微信公众号</h2>
			       <p>1 首先打开网址http://mp.weixin.qq.com,在右上方点击“立即注册”,进入注册页面</p>
			       <img src="images/help/wx1.jpg" alt="img" class="wx1"/>
			       <p>2 填写验证邮箱。这个邮箱要能够方便接受邮件以便验证所需。申请成功后这个邮箱就是你的登录账号了。</p>
			       <img src="images/help/wx2.jpg" alt="img" class="wx2"/>
			       <p>3 注意，这个步骤最为关键，我们需要确定所申请的微信公众账号是属于个人还是机构，如果是个人需要本人手持身份证正面拍照以及其他一些个人信息；如果机构，需要填写具体分类例如：政府 媒体 企业或其他组织，需要的信息更多一些，比如组织机构代码证扫描件和营业执照等等，还需要填写授权运营书。最后提交</p>
			       <img src="images/help/wx3.jpg" alt="img" class="wx3"/>
			       <p>4 这一步骤是选择你所申请的微信公众账号的类型，微信公众平台分为“订阅号”和“服务号”两种类型，订阅号主要以宣传为主，每天可以发送一个推送，服务号偏向索取服务，开放接口类型更丰富，提供的服务更多样，但每月只能发送4次推送。</p>
			       <p>5 确认微信公众账号信息是否正确，最后申请成功，恭喜你有了属于自己(机构)的微信公众账号了！</p>
			   </div>
			   <div class="helpMessage helpMessage05" id="item4" style="display:none">
			       <h1>基础设置</h1>
			       <h2>2.2 如何注册多粉平台</h2>
			       <p>1 首先打开网址http://duofriend.com,在右上方点击“注册”,进入注册页面</p>
			       <img src="images/help/zc1.jpg" alt="img"  style="width:408px; display:block; margin:0 auto;padding:10px 0px"/>
			       <p>2 填写验证信息,同意多粉在线平台服务协议,申请成功后即可以登录。</p>
			       <img src="images/help/zc2.jpg" alt="img"  style="width:480px; display:block; margin:0 auto;padding:10px 0px"/>
			   </div>
			   <div class="helpMessage helpMessage06" id="item5" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.3 如何添加公众号</h2>
			      <p>1 首先用自己的账号登录多粉平台(如果没有多粉账号,请参考2.2 如何注册多粉平台)。</p>
			      <p>2 进入商家后台首页，左上角信息头像下点击"一键绑定"按钮，进入绑定微信公众号界面。</p>
			      <p>3 填写相应信息，点击授权并登录，即可以完成授权。</p>
			      <img src="images/help/band.jpg" alt="img" style="width:570px;display:block; margin: 0 auto;padding:15px 0px	"/>
			   </div>
			   <div class="helpMessage helpMessage07" id="item6" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.4  账户信息参数详解</h2>
			       <p style="margin-bottom:20px;">1 登录平台后，进入我的账户和微信设置可以看到有关账户的详细信息。</p>
			       <table  cellspacing="1">
			         <tbody>
			           <tr>
			             <td class="tdLeft">用户名</td>
			             <td class="tdRig">注册时的用户名，可作为登录时的登录名。</td>
			           </tr>
			            <tr>
			             <td class="tdLeft">手机号</td>
			             <td class="tdRig">注册时填写的手机号，用以接收验证信息，可作为登录时的登录名。</td>
			           </tr>
			           <tr>
			             <td class="tdLeft">邮箱</td>
			             <td class="tdRig">绑定邮箱信息，忘记密码时，可用于登录名，也可用以找回密码。</td>
			           </tr>
			            <tr>
			             <td class="tdLeft">公众号名称</td>
			             <td class="tdRig">登陆多粉平台后，一键绑定时授权的公众号</td>
			           </tr>
			           <tr>
			             <td class="tdLeft">公众号原始ID</td>
			             <td class="tdRig">原始ID就是用户在注册微信公众号的时候，系统自动生产用户注册的微信公众号网络账号的身份账号</td>
			           </tr>
			            <tr>
			            <td class="tdLeft">头像地址</td>
			             <td class="tdRig">商家微信公众号头像的地址链接</td>
			           </tr>
			           <tr>
			             <td class="tdLeft">AppID</td>
			             <td class="tdRig">appid是接口参数,服务号和认证了的订阅号都可以获得。</td>
			           </tr>
			            <tr>
			             <td class="tdLeft">二维码</td>
			             <td class="tdRig">商家微信公众号微信的地址链接</td>
			           </tr>
			         </tbody>
			       </table>
			   </div>
			
			   <div class="helpMessage helpMessage08" id="item7" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.5  运营图表</h2>  
			   </div>
			   <div class="helpMessage helpMessage09" id="item8" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.6  默认设置</h2>
			   </div>
			   <div class="helpMessage helpMessage10" id="item9" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.7 关注时间回复</h2>
			   </div>
			   <div class="helpMessage helpMessage11" id="item10" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.4  文本回复</h2>
	              <p>1 登陆多粉平台，点击左侧菜单的设置。欢迎词、默认回复、图文编辑里面都有文本回复设置。</p>
	              <p>2 点击文本消息下的新增按钮，进入新增页面，可以看到回复内容编辑框，填写内容即可设置相应的文本回复。</p>
	              <img src="images/help/textSet.jpg" alt="img" style="width:590px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			    <div class="helpMessage helpMessage12" id="item11" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.5  图文回复</h2>
	              <p>1 登陆多粉平台，点击左侧菜单的设置。欢迎词、默认回复、图文编辑里面都有图文回复设置，包括单图文和多图文。</p>
	              <p>2 点击图文消息下的新增按钮，进入新增页面，可以看到回复内容编辑框，全文内容任选一种即可设置相应的图文回复。</p>
	              <img src="images/help/picSet.jpg" alt="img" style="width:476px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			   <div class="helpMessage helpMessage13" id="item12" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.6 自定义菜单</h2>
	              <p>1 登陆多粉平台，点击左侧菜单的设置中的自定义菜单，即可进入自定义菜单页面。左侧部分有自定义菜单的简要操作说明。</p>
	              <p>2 微信端最多创建3个一级菜单，每个一级菜单下最多可以创建5个二级菜单，菜单最多支持两层。(多出部分会生成前三个一级菜单)</p>
	              <img src="images/help/wx.jpg" alt="img" style="width:560px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			   <div class="helpMessage helpMessage14" id="item13" style="display:none">
			      <h1>基础设置</h1>
			      <h2>2.11 LBS回复</h2>
			   </div>
			   <div class="helpMessage helpMessage15" id="item14" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.1 模板消息类别</h2>
			   </div>
			    <div class="helpMessage helpMessage16" id="item15" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.2  模板消息功能解析</h2>
			   </div>
			    <div class="helpMessage helpMessage17" id="item16" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.3 模板消息示例</h2>
			   </div>
			    <div class="helpMessage helpMessage18 list2" id="item17" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.1 消息快速群发</h2>
			      <p>1 登录多粉平台后，单图文、多图文的列表页有快速群发的图标按钮，点击后进入消息群发的页面。</p>
			      <img src="images/help/kf.jpg" alt="img" style="width:480px; display:block; margin:0 auto; padding:15px 0px;"/>  
			   </div>
			    <div class="helpMessage helpMessage19" id="item18" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.2 粉丝关键词查询</h2>
			      <p>1 登录多粉平台后，点击左侧菜单粉丝，进入粉丝管理页面，右上角个搜索框，可以进行粉丝查询。</p>
			       <img src="images/help/fs.jpg" alt="img" style="width:480px; display:block; margin:0 auto; padding:15px 0px;"/>  
			   </div>
			    <div class="helpMessage helpMessage20" id="item19" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.3 粉丝高级查询</h2>
			      <p>1 粉丝管理页面，有个高级筛选的按钮，点击后可进入高级筛选的页面进行筛选。</p>
			      <img src="images/help/gx.jpg" alt="img" style="width:480px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			   <div class="helpMessage helpMessage21" id="item20" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.4  粉丝批量分组</h2>
			      <p>1 粉丝管理页面，高级筛选按钮下有个批量分组的按钮，点击会弹出一个批量分组的弹出框，如下图所示。</p>
			      <img src="images/help/pf.jpg" alt="img" style="width:464px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			   <div class="helpMessage helpMessage22" id="item21" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.5  粉丝分组修改</h2>
			      <p>1 粉丝分组修改属于粉丝批量分组的一个特例，如想单个修改粉丝的分组，则只需要勾选单个粉丝的按钮即可。</p>
			   </div>
			    <div class="helpMessage helpMessage23" id="item22" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.6  分组快速群发</h2>
			      <p>1 登录多粉平台，点击左侧推广菜单进入群发消息页面，可看到群发消息的筛选项</p>
			      <p>2 "粉丝分组"筛选项中可以筛选分组，初次之外也可筛选其他信息，完成后，点击群发按钮即可。</p>
			   </div>
			   <div class="helpMessage helpMessage24" id="item23" style="display:none">
			      <h1>消息、粉丝、群发管理</h1>
			      <h2>3.7  高级群发</h2>
			      <p>1  登录多粉平台，点击左侧推广菜单进入群发消息页面，即为高级群发页面 。</p>
			      <p>2 群发对象中，可以筛选粉丝的分组、所在城市、关注日期和性别，方便商家对群发对象的管理。</p>
			      <p>3 图文消息中，用户可以从素材库中选择群发的图文消息，也可以新建图文消息，编辑后进行群发。</p>
			   </div>
			   <div class="helpMessage helpMessage25 list3" id="item24" style="display:none">
			      <h1>微官网</h1>
			      <h2>4.1  微官网设置</h2>
			      <p>1 进入微官网菜单后，首先点击新建模版按钮，进入选择列表页。</p>
			      <img src="images/help/wsite.jpg" alt="img" style="width:546px; display:block; margin:0 auto; padding:15px 0px;"/>
			      <p>2 选择模版后进行编辑</p>
			       <img src="images/help/wsite2.jpg" alt="img" style="width:546px; display:block; margin:0 auto; padding:15px 0px;"/>  
			   </div>
			   <div class="helpMessage helpMessage26" id="item25" style="display:none">
			      <h1>微官网</h1>
			      <h2>4.2  首页幻灯片设置</h2>
			      <p>1 进入微官网菜单后，首先点击新建模版按钮，进入选择列表页。</p>
			      <p>2 选择模版后进行编辑</p>
			         <img src="images/help/wsite3.jpg" alt="img" style="width:546px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			   <div class="helpMessage helpMessage27" id="item26" style="display:none">
			     <h1>微官网</h1>
			     <h2>4.3  类管理</h2>
			   </div>
			   <div class="helpMessage helpMessage28" id="item27" style="display:none">
			     <h1>微官网</h1>
			     <h2>4.4  文章添加</h2>
			   </div>
			   <div class="helpMessage helpMessage29" id="item28" style="display:none">
			     <h1>微官网</h1>
			     <h2>4.3  模版管理</h2>
			     <p>1 选取模版后，模板会出现在微官网的列表页，列表页的快捷图标可让用户对模板进行快速的管理和编辑。</p>
			     <img src="images/help/wsite4.jpg" alt="img" style="width:600px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			    <div class="helpMessage helpMessage30" id="item29" style="display:none">
			     <h1>微官网</h1>
			     <h2>4.6  快捷与版权</h2>
			   </div>
			   <div class="helpMessage helpMessage31 list4" id="item30" style="display:none">
			     <h1>微场景</h1>
			     <h2>5.1  微场景设置</h2>
			     <p>1 进入微官网菜单后，首先点击新建模版按钮，进入选择列表页。</p>
			     <img src="images/help/wsence.jpg" alt="img" style="width:600px; display:block; margin:0 auto; padding:15px 0px;"/>
			     <p>2 选择模版后进行编辑</p>
			      <img src="images/help/wsence2.jpg" alt="img" style="width:600px; display:block; margin:0 auto; padding:15px 0px;"/>  
			     <p>3 完成后点击保存即可</p>
			   </div>
			     <div class="helpMessage helpMessage32" id="item31" style="display:none">
			     <h1>微场景</h1>
			     <h2>5.2 背景幻灯片设置 </h2>
			     <p>1 进入微场景菜单后，首先点击新建模版按钮，进入选择列表页。</p>
			     <p>2 选择模版后进行编辑</p>
			         <img src="images/help/wsence3.jpg" alt="img" style="width:600px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			   <div class="helpMessage helpMessage33" id="item32" style="display:none">
			     <h1>微场景</h1>
			     <h2>5.3  分类管理</h2>
			   </div>
			   <div class="helpMessage helpMessage34" id="item33" style="display:none">
			     <h1>微场景</h1>
			     <h2>5.3  连接添加</h2>
			   </div>
			   <div class="helpMessage helpMessage35" id="item34" style="display:none">
			     <h1>微场景</h1>
			     <h2>5.3  模板管理</h2>
			     <p>1 选取模版后，模板会出现在微场景的列表页，列表页的快捷图标可让用户对模板进行快速的管理和编辑。</p>
			     <img src="images/help/wsence4.jpg" alt="img" style="width:462px; display:block; margin:0 auto; padding:15px 0px;"/>
			   </div>
			    <div class="helpMessage helpMessage36 list5" id="item35" style="display:none">
			      <h1>微推广</h1>
			      <p>精彩即将上线，敬请期待！！！<p><p>请您随时关注多粉平台，我们期待您的参与。</p>
			   </div>			   
		   </div>
		 </div>		 
<script>
var fade = $("#fade");
var helpWarp=$('#helpWarp');
var close=$('.helpClose');
var helpMessage = $(".helpMessage");
fade.on("click",function(){
	hideDetails();
});

close.on("click",function(){
	hideDetails();
});

function showDetails(obj){
	fade.show();
	$(obj).show();
	$('html').css('overflow','hidden');
}

function hideDetails(){
	fade.hide();
	helpMessage.hide();
	helpWarp.hide();
	$('html').css('overflow','auto');
}

function selectTag(showContent,selfObj){
	$(".menu-c li a").removeClass("helpfocus");
	$(selfObj).addClass("helpfocus");
	// 操作标签
	var tag = document.getElementById("helpWarp").getElementsByTagName("li");
	var taglength = tag.length;
	// 操作内容
	for(i=0; j=document.getElementById("item"+i); i++){ 
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";	
}

$(function(){	
	$(".helpMessage01").show();
    $('.menu-p').click(function(){
		if($(this).attr("class").indexOf("menufoucs")>1){
			$('.menu-p').removeClass("menufoucs");
			$('.menu-p').next().hide(200, function(){
				$(this).removeAttr('style').removeClass('menu-c-current');
			})
		   $(this).removeClass("menufoucs");
		}else{
			 $('.menu-p').removeClass("menufoucs");
		 	$('.menu-p').next().hide(200, function(){
				$(this).removeAttr('style').removeClass('menu-c-current');
			})
			$(this).next().show(200, function(){
				$(this).removeAttr('style').addClass('menu-c-current');
			});
		 	$(this).addClass("menufoucs");
		};
	});
    
    $(".conTwoWarp").on("click",".helpbox",function(){
    	var index=$(this).index(".helpbox");
    	var menuId="menu"+index;
    	var listId="list"+index;
    	$("#"+menuId).addClass('menufoucs').siblings().removeClass("menufoucs");
    	$('.menu-p').next().hide();
    	$("#"+menuId).next().show(200);
        $('.menu-p').next().find("li a").removeClass('helpfocus');
        $("#"+menuId).next().find("li:first-child a").addClass('helpfocus');
    	$('.'+listId).show().siblings().hide();
    	
    }) 
})
</script>
</body>
</html>