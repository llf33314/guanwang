<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.gt.entity.user.BusUser"%>   --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<meta name="keywords" content="多粉、微营销、微信营销、微信推广、微信代运营、微信定制开发、微信营销软件、微信推广软件、微信推广平台" />
<meta name="description" content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微会员、微商城、微活动、微预约、微分销，助力企业全面开启微营销。" />
<title>多粉—连接粉丝，连接世界，广东谷通科技有限公司</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" type="text/css" href="css/common.css?<%= System.currentTimeMillis()%>"/>
<link rel="stylesheet" type="text/css" href="css/office/Operations.css?<%= System.currentTimeMillis()%>"/>
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
				  	<div class="headerCent fr clearfix">
				   		<ul class="clearfix">
				   			<li class="items"><a href="jsp/office/index.jsp" class="white">首页</a></li>
				   			<li class="items"><a href="jsp/office/product.jsp" class="white headerCurrent">产品服务</a></li>
				   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white">合作召集</a></li>
				   			<li class="items"><a href="jsp/office/example.jsp" class="white">案例中心</a></li>
				   			<li class="items"><a href="jsp/office/help.jsp" class="white">帮助中心</a></li>
					   		<li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   	    <li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
				   		</ul>
				 	</div>
			 	</div>
		   	</div>
		<!--头部结束-->
		<div id="operContent">
			<div class="operOne"></div>
			<div class="operTwo">
				<div class="container">
					<ul class="clearfix">
						<li class="twoItem fl"><a href="jsp/office/product.jsp?#common1">通用版</a></li>
						<li class="twoItem fl"><a href="jsp/office/product.jsp?#common2">行业版</a></li>
						<li class="twoItem fl"><a href="jsp/office/product.jsp?#common3">定制开发</a></li>
						<li class="twoItem fl current"><a href="jsp/office/Operations.jsp">代运营</a></li>
						<li class="twoItem fl"><a href="jsp/office/packages.jsp">多粉套餐</a></li>
					</ul>
				</div>
			</div>
			<div class="operTwo fixBar">
				<div class="container">
					<ul class="clearfix">
						<li class="twoItem fl"><a href="jsp/office/product.jsp?#common1">通用版</a></li>
						<li class="twoItem fl"><a href="jsp/office/product.jsp?#common2">行业版</a></li>
						<li class="twoItem fl"><a href="jsp/office/product.jsp?#common3">定制开发</a></li>
						<li class="twoItem fl current"><a href="jsp/office/Operations.jsp">代运营</a></li>
					    <li class="twoItem fl"><a href="jsp/office/packages.jsp">多粉套餐</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="operThr">
		    <div class="thrWarp">
		        <div class="thrBoxOne">
		           <div class="boxOne">
		             <p>为企业量身定制</p>
		             <p>微信公众号运营</p>
		           </div>
		           <div class="boxTwo">
		              <div class="enterprise">
		                 <div class="boxTitle">
		                    <div class="border1"></div>
			                 <img src="images/Operations/no.png" alt="img" />
			                 <p>企业独立运营</p>
			                 <div class="border2"></div>
		                 </div>
		                 <div class="boxCon">
		                    <h2 class="itemTitle">设计</h2>
		                    <p class="itemText">美工设计由企业文员代操作，缺乏专业技能，做出来的效果不佳。</p>
		                    <h2 class="itemTitle">技术</h2>
		                    <p class="itemText">需要外包研发功能应用，风险高、功能不完善、项目容易搁置.</p>
		                    <h2 class="itemTitle">经验</h2>
		                    <p class="itemText">运营思路不清晰，运营流程不熟练，抓不住运营重点 。</p>
		                    <h2 class="itemTitle">成本</h2>
		                    <p class="itemText">要把公众号的基础运营做好，企业至少要支付美工、研发、运营三个方面的人力资源费用。</p>
		                 </div>
		              </div>
		              <img src="images/Operations/pk.png" alt="img" style="padding: 170px 20px;" />
		              <div class="duofriend" >
		                  <div class="boxTitle">
		                    <div class="border1"></div>
			                 <p class="df">多粉代运营</p>
			                 <img src="images/Operations/yes.png" alt="img" />
			                 <div class="border2"></div>
		                 </div>
		                 <div class="boxCon">
		                    <h2 class="itemTitle">设计</h2>
		                    <p class="itemText">专业师设计团队负责高水平美工，UI优化。</p>
		                    <h2 class="itemTitle">技术</h2>
		                    <p class="itemText">研发团队负责开发、测试、完善和维护，把定制项目贯彻到底。</p>
		                    <h2 class="itemTitle">经验</h2>
		                    <p class="itemText">运营团队有三年的相关执行经验，服务案例达到上千例。</p>
		                    <h2 class="itemTitle">成本</h2>
		                    <p class="itemText">设计团队、研发团队、运营团队默契配合提供一站式服务，企业只需要用独立运营的1/3的开支就能实现。</p>
		                 </div>
		              </div>
		           </div>
		           <div class="boxThr">
		              <div class="warp">
		                 <h2>服务内容：</h2>
		                 <p>多维度提供客户更多的选择，提高客户品牌推广的效率，丰富客户品牌知名度提升的方法，通过各种代运营需求，贴合客户做到更有深度、更有层次、更好的微营销。</p>
		              </div>
		           </div>
		        </div>
		        <div class="thrBoxTwo">
		            <div class="operHead">
		               <img class="operTit" src="images/Operations/operTit.png" alt="img" />
		               <img class="line" src="images/Operations/line.png" alt="img" />
		               <img class="operTitEng" src="images/Operations/operTitEng.png" alt="img" />
		               <h2>让企业利润与知名度更强更大！</h2>
		            </div>
		            <div class="operCon">
		               <div class="listItem listItem1">
		                  <h2 class="listText headText">1</h2>
		                  <h2 class="listText">文案编辑</h2>
		                  <img class="listImg" src="images/Operations/edit.png" alt="img" />
		               </div>
		               <div class="listItem listItem2">
		                  <h2 class="listText headText">2</h2>
		                  <h2 class="listText">微场景<br />设计</h2>
		                  <img class="listImg" src="images/Operations/design.png" alt="img" />
		               </div>
		               <div class="listItem listItem3">
		                  <h2 class="listText headText">3</h2>
		                  <h2 class="listText">微官网<br />美工</h2>
		                  <img class="listImg" src="images/Operations/art.png" alt="img" />
		               </div>
		               <div class="listItem listItem4">
		                  <h2 class="listText headText">4</h2>
		                  <h2 class="listText">推广优化</h2>
		                  <img class="listImg" src="images/Operations/optimization.png" alt="img" />
		               </div>
		               <div class="listItem listItem5">
		                  <h2 class="listText headText">5</h2>
		                  <h2 class="listText">功能<br />定制开发</h2>
		                  <img class="listImg" src="images/Operations/develop.png" alt="img" />
		               </div>
		               <div class="listItem listItem6">
		                  <h2 class="listText headText">6</h2>
		                  <h2 class="listText">维护运营</h2>
		                  <img class="listImg" src="images/Operations/maintain.png" alt="img" />
		               </div>
		            </div>
		        </div>
		        <div class="thrBoxThr">
		             <div class="caseHead">
		                 <img class="caseTit" src="images/Operations/caseTit.png" alt="img" />
		                 <img class="caseEng" src="images/Operations/caseTitEng.png" alt="img" />
		             </div>
		             <div class="hotel">
		                <h2 class="hotelTit">酒店</h2>
		                <div class="hotelCon">
		                   <div class="hotelImg"><img src="images/Operations/hotel.jpg" alt="img" title="案例"/></div>
		                   <div class="hotelText"> 为酒店定期制定运营反馈报告，酒店通过汇报了解公众号的运营情况和粉丝数据分析，做出了更好的改善和开展针对性的活动，仅半个月粉丝量增长160%。</div>
		                </div>
		             </div>
		             <div class="wedding">
		                <h2 class="wedTit">婚纱店</h2>
		                <div class="wedCon">
		                   <div class="wedImg"><img src="images/Operations/wedding.jpg" alt="img" title="案例"/></div>
		                   <div class="wedText">为婚纱店打造微官网，包括图文的编辑、模板的美化、合理地排序案列照片，突出了婚纱店摄影技术好，服务质量高的特点，让粉丝对婚纱店有了更详细的了解，提高了粉丝的信任度，起到了很好的粉效果。</div>
		                </div>
		             </div>
		        </div>
		    </div>
		</div>
		<!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->

<script type="text/javascript">
  $(function(){
	  var height=410;
	    var TwoLi = $('.operTwo ul li');
		$(window).scroll(function(){
			//获取滚动条的滑动距离
			var scroH = $(this).scrollTop()-0;
			//滚动条的滑动距离大于等于77距离固定  反之不固定
			if(scroH > height){
				$(".fixBar").show();
				TwoLi.removeClass('twoItem').addClass('twoItemCur');	
			}else{
				$(".fixBar").hide();
				TwoLi.removeClass('twoItemCur').addClass('twoItem');
			}
		});
  })
  
</script>
</body>
</html>