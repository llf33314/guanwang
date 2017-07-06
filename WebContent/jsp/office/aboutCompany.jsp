<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.gt.entity.user.BusUser"%>   --%>
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
<link rel="stylesheet" type="text/css" href="css/office/aboutCompany.css?<%= System.currentTimeMillis()%>"/>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
<title>多粉—连接粉丝，连接世界</title>
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
		   	<div class="positon" style="height: 77px;width: 100%;"></div>
		<!--头部结束-->
		<div id="abBox">
			<div class="boxOne"></div>
			<div class="boxTwo">
				<div class="conMenu"  style="width: 140px;">
					<ul class="listBar" id="listBar">
					  <li class="baritem active" id="bar1">关于我们</li>
					  <li class="baritem" id="bar2">公司团队</li>
					  <li class="baritem" id="bar3">加入我们</li>
					  <li class="baritem" id="bar4">发展历程</li>
					  <li class="baritem" id="bar5">媒体报道</li>
					   <li class="baritem" id="bar6">版本更新</li>
					  <li class="baritem lastitem" id="bar7">联系我们</li>
					</ul>
				</div>
				<div class="conText">
					<div class="aboutUs textCon" id="bar1Con">
					    <div class="boxTitle">
					     <h1>广东谷通科技有限公司</h1>
					     <hr />
					    </div>
					    <div class="boxDetails">
					      <h2 class="detTitle">公司简介</h2>
					      <p class="detail">
					                        广东谷通科技有限公司是一家集软件研发、销售于一体的公司，注册资金1000万元，总部位于全国文明城市广东惠州，下属3家全资子公司和23家分公司，公司总人数达1108人。其中技术研发人员56人、销售人员912人，分布全国各地，在广东各地市设有21个市级分公司。自2010年成立以来，谷通一直致力于通信增值业务的开发与运营，是大型O2O营销与科技技术开发公司。公司依托庞大的客户资源数据库与渠道先发优势，在深圳成立研发中心，并将迅速占领全国市场作为目标，争取在行业内达到领先地位，力争5年时间内成为上市公司，为我们的员工、合作伙伴、代理商提供更高的发展平台。
						</p>
						<h2 class="detTitle">关于多粉</h2>
						<p class="detail">
						          智能手机与移动互联网的普及在颠覆传统商业模式，挑战与机遇共存，千古商业循环都是追求变化。所谓适者生存就是证明能改变的企业才能更好地生存发展起来，不论你现在的模式如何繁荣昌盛，如果不改变必将被新规则所淘汰，我们所知道的诺基亚、雅虎、htc、moto等国际大公司均无一幸免。在这商海领域承载着许许多多的商业企业，但凡能生存的无不始终坚持改变。这次的变化不亚于工业革命、不亚于电灯改变人类，在这次智能科技大跃进的浪潮中许多人会粉身碎骨，也有很多人会笑傲江湖，谁是赢家？从这一刻起还不晚，机会等着我们！微信从2012年诞生的时刻起就在创造奇迹并且改变着我们，到2015年已经手握6.5亿微信用户。在这个时代背景下，“多粉”应运而生，从一开始就使命不凡，我们将坚持做一个新时期移动互联网运营企业作为发展目标，让更多的商家受益移动互联、让更多的粉丝一起分享这个时代的盛宴。多粉平台集管理、互动、服务为一体，为商家提供更好的微信体验模式！主要为企业提供微信营销、数据分析、社会化营销和移动客户端客户管理系统。它功能强大，只有你想不到的功能，没有它做不到的功能！贴心的服务——自成立以来，公司就以客户的需求为出发点，为企业提供微信平台的建设、系统的维护和运营等服务，为品牌客户提供一站式的移动营销及行业应用的解决方案。
						</p>
						<img src="images/aboutCompany/comOne.png" alt="logo" title="多粉logo" class="comLogo" style="width: 230px"/>
						<p class="detail">
						       多粉的logo是一只抽象的可爱的宠物猫，人见人爱，比喻多粉平台系统受到广大商家的喜爱！小粉团形状象征移动互联网时代以小博大的气魄与决心；即将绽放的花蕾意为:微商营销我们即将出发，我们即将绽放整个行业，影响世界。
						</p>
						<h2 class="detTitle">我们的展望</h2>
						<p>做新时期的移动互联网运营企业。</p>
						<h2 class="detTitle">我们的理念</h2>
						<p>完美、创新、极致</p>
						<h2 class="detTitle">我们的使命</h2>
						<p>连接粉丝  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;连接世界</p>
						<p>Connect friends &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    Connect the world</p>
						<h2 class="detTitle">企业文化</h2>
						<p>分享发展，让一切成果与我们的员工、用户、商业伙伴、投资者分享。</p>
						<p class="detail">
						         多粉不仅是商家的聚粉平台也是粉丝的分享平台、更是员工的事业平台。现有创始人及股东承诺为吸引更多优秀的人才、商业伙伴、机构投资者将根据公司的发展不断稀释现有股权来回报员工、用户、商业伙伴与投资者，一起参与这场移动互联网的分享盛宴。
						</p>
						<h2 class="detTitle">价值观</h2>
						<p>世界其实很小，以进取博奕的行动感动自己，改变世界。</p>
						<p class="detail">这个“世界”是我们心中的那个世界，改变一切要先改变自己开始，从心出发，积极进取博奕的精神创造一个又一个的奇迹。</p>
					    </div>
					</div>
					<div class="team textCon" id="bar2Con" style="display: none;">
					    <div class="boxTitle">
						     <h1>团队成员</h1>
						     <hr />
					    </div>
					    <div class="boxDetails">
					    <p>&nbsp;</p>
					      <p class="detail">
							          谷通科技团队主要分技术团队、线下推广团队和设计编辑团队。其中，技术团队负责产品的研发；线下销售和推广团队负责公司产品的线下推广和销售，人数达一千多人，分布全国各地，在广东各地市设有21个市级分公司；设计编辑团队负责公司产品的设计和编辑。
					      </p>
					      <ul class="teamImg">
					        <li class="teamItem">
					           <img src="images/aboutCompany/team1.jpg" alt="img" title="多粉团队" class="leftImg"/>
					           <img src="images/aboutCompany/team2.jpg" alt="img" title="多粉团队" class="rigImg"/>
					        </li>
					        <li class="teamItem">
					           <img src="images/aboutCompany/team3.jpg" alt="img" title="多粉团队" class="leftImg"/>
					           <img src="images/aboutCompany/team4.jpg" alt="img" title="多粉团队" class="rigImg"/>
					        </li>
					        <li class="teamItem">
					           <img src="images/aboutCompany/team5.jpg" alt="img" title="多粉团队" class="leftImg"/>
					           <img src="images/aboutCompany/team6.jpg" alt="img" title="多粉团队" class="rigImg"/>
					        </li>
					      </ul>
					    </div>
					</div>
					<div class="join textCon" id="bar3Con" style="display: none;">
					    <div class="boxTitle">
						     <h1>加入我们</h1>
						     <hr />
					    </div>
					    <div class="boxDetails">
						      <h2 class="detTitle">惠州总部</h2>
						      <p class="detail">
								    <label>在线推广维护员</label>
									<label>1. 通过百度推广平台以及其他线上沟通工具接收客户咨询，销售公司的软件产品及服务；</label>
									<label>2. 协助客户解决使用公司产品过程中遇到的问题；</label>
									<label>3. 负责实施公司产品的网络营销和推广；</label>
									<label>4. 公司安排的其他工作任务。</label>
									<label>任职要求</label>
									<label>1. 认真负责、耐心细致、吃苦耐劳，有较强的学习和领会能力；</label>
									<label>2. 诚实守信以及良好的团队合作精神；</label>
									<label>3. 能够适应公司发展的工作节奏和压力；</label>
									<label>4. 熟练掌握计算机及基础应用软件；</label>
									<label>5. 有百度推广或网络推广经验，有长期和我司一起发展者优先考虑。</label>
									<label>文案编辑</label>
									<label>1. 公司网站内容更新；</label>
									<label>2. 微信公众号内容编写；</label>
									<label>3. 公司其他各类宣传品文案编辑。</label>
									<label>任职要求</label>
									<label>1. 有编辑能力和较强的文化敏感性，能独自完成文字策划方面的工作；</label>
									<label>2. 服务意识强，具备出众的沟通能力、团队建设和部门协调能力；</label>
									<label>3. 具有较强的责任心和执行力，富有工作热情和团队意识；</label>
									<label>4. 对于文案编辑有一定的工作经验，熟悉应用网络新潮用语。</label>
						      </p>
						      <h2 class="detTitle">深圳区域</h2>
						      <p class="detail">
						            <label> Web前端开发工程师</label>
									<label>1. 根据产品策划和设计图完成前端页面制作；</label>
									<label>2. 与后台工程师协作实现产品功能，定制服务接口等；</label>
									<label>3. 维护及优化产品前端性能，优化前端开发模式和规范；</label>
									<label>4. 重构网站前端css、js等。</label>
									<label>任职要求</label>
									<label>1. 大专以上学历，一年以上js前端开发经验，有互联网公司工作经历者优先；</label>
									<label>2. 精通JavaScript/XML/JSON/ajax，能熟练使用JQuery插件，有独立开发插件（组件）能力；</label>
									<label>3. 深刻理解各主流浏览器之间的兼容性，熟悉页面性能的优化；</label>
									<label>4. 工作踏实、责任心强，具备良好的学习能力、自我管理能力；</label>
									<label>5. 有以用户为核心的设计理念，能对页面有自己的看法，进而进行优化，让操作人性化。</label>
						      </p>
					     </div>
					</div>
					<div class="develop textCon" id="bar4Con" style="display: none;">
					    <div class="boxTitle">
						     <h1>发展历程</h1>
						     <hr />
					    </div>
					    <div class="boxDetails">
					          <p>&nbsp;</p>
						      <p class="detail">
						         <label>2010年  谷通科技有限公司在惠州成立；致力于做新时期的移动互联网运营企业</label>
						         <label>2013年  公司在深圳组建研发中心，技术部人员全面负责技术上的开发与研究</label>
						         <label>2013年  公司组建了一支富有才华和激情的运营团队，负责对产品的运营和推广</label>
						         <label>2013年  公司开通微信公众号，全面启动移动社交营销战略 </label>
						         <label>2014年   公司开始运营多粉平台，为客户提供一个操作更简单便捷的微信第三方操作推广平台</label>
						         <label>2014年  公司与中国电信合作，为中国电信多个分部代运营公众号，获得了很好的成果</label>
						         <label>2015年 公司与百度合作，启动移动互联网营销策略</label>
						      </p>
						</div>
				   </div>
				   <div class="media textCon" id="bar5Con" style="display: none;">
					    <div class="boxTitle">
						     <h1>媒体报道</h1>
						     <hr />
					    </div>
					    <div class="boxDetails">
					          <h2 class="detTitle">o2o经营模式前景广阔</h2>
						      <p class="detail">
						        O2O即Online To Offline，即线上和线下，指将线下的销售机会与互联网结合，让互联网成为线下交易的平台。2013年O2O进入高速发展阶段，O2O商业模式横空出世。传统的商业销售模式已经不能满足不断变化的市场需求，传统经营危机四伏。但是有危机就有商机，变革势在必行。不容置疑，O2O具有广阔的发展前景，企业如能成功地将传统模式转变为移动互联网业务模式，那么在这个不断变化的社会中成为持续的赢家便不再是幻想。
						      </p>
						      <h2 class="detTitle">《2015上门O2O移动应用行业报告》发布 上门O2O仍处发展期</h2>
						      <p class="detail">
						         11月26、27日，以“互联网＋时代线上线下新玩法”为主题的2015年上门o2o创业者峰会在北京国家会议中心举行。作为一个新的服务模式，上门O2O通过线上运营、线下体验的运作模式，方便用户体验，降低企业与用户间的沟通成本，实现对传统服务业供应链的改造和升级。此次报告显示，O2O自2003年起经历了混沌期、萌芽期和逐步发展期，目前正处于第四阶段——高速发展期。主要分布在衣食住行、居家理财、教育和健康美业四个领域，餐饮和出行仍是企业数量和融资金额均领先的两个领域。
						      </p>
						</div>
				   </div>
				   <div class="version textCon" id="bar6Con" style="display: none;">
				       <div class="boxTitle">
						     <h1>版本更新</h1>
						     <hr />
					    </div>
					    <div class="boxDetails">
					        <h2 class="detTitle">2015/11/30 星期一 21:21:47</h2>
					        <h2>更新的内容:</h2>
						    <p>1.微官网及微场景增加了二维码扫一扫，手机预览</p>
						    <p>2.针对微官网4模板增加了截图功能，其它模板进一步更新中。。。</p>
						    <h2 class="detTitle">2015/12/1 星期二 21:53:00</h2>
					        <h2>更新内容：</h2>
					        <p>1.微官网所有模板截图功能的完善</p>
					        <p>2.统一规范了所有微官网模板背景图、轮播图的尺寸</p>
					    </div>
				   </div>
				    <div class="contact textCon" id="bar7Con" style="display: none;">
					    <div class="boxTitle">
						     <h1>联系我们</h1>
						     <hr />
					    </div>
					    <div class="boxDetails">
					        <ul>
					           <li class="conItem">
					              <h2 class="detTitle">产品咨询</h2>
					              <p>咨询热线：400-889-4522</p>
					              <p>Tell: 18026538466</p>
					              <p>QQ咨询：2853771222</p>
					              <p>建议反馈电话：0752-2329043</p>
					              <p>投诉反馈邮箱：hzgt@goodtom.net</p>
					           </li>
					           <li class="conItem">
					              <h2 class="detTitle">合作伙伴召集</h2>
					              <p>电话：0755-26609632</p>
					              <p>Tell : 18138281223贺先生</p>
					              <p>QQ: 285321197</p>
					              <p>邮箱：szgt@goodtom.net</p>
					           </li>
					           <li class="conItem">
					              <h2 class="detTitle">招聘联系</h2>
					              <p>电话：0752-2329043</p>
					              <p>Tell :18026538466刘小姐</p>
					              <p>E-mail:hr@goodtom.net</p>
					           </li>
					           <li class="conItem">
					              <h2 class="detTitle">社交</h2>
					              <p>微博：多粉_duofriend </p>
					              <p>微信: 多粉（lfx20150727)</p>
					              <p>QQ：2853873362</p>
					           </li>
					           <li class="conItem" style="width: 800px">
					              <h2 class="detTitle">公司地址</h2>
					              <p>总部地址：广东省惠州市惠城区东平大道东晖城建大厦9楼</p>
					              <p>研发中心地址：广东省深圳市南山区科技园北区新西路7号兰光科技园C513</p>
					           </li>
					        </ul>
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
			 $(window).scroll(function() {
				 scrollTop();
			    });
			 
			 function scrollTop(){
				var s = parseInt($(window).scrollTop());
		        $('#listBar').removeClass('.baritem');
		        300 > s && $("#listBar").removeClass("navtop"),
		        s > 300 && $("#listBar").addClass("navtop")
			 }
			 
			//左侧菜单切换
	         $('#listBar').find('.baritem').click(function(){
					var bar=$(this).attr('id');
					var text=bar+"Con";
					$(this).addClass('active').siblings().removeClass('active');
					$('.textCon').hide();
					$("#"+text).show(); 
					scrollTop();
					$(window).scrollTop(350);
				}); 
		});
        </script>
</body>
</html>