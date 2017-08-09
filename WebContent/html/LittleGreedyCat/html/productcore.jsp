<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>产品核心</title>

    <%@include file="/html/LittleGreedyCat/html/common/resource.jsp" %>
    
    <script type="text/javascript">
    	var access_num = 2;
    </script>
</head>
<body>
	
	<%@include file="/html/LittleGreedyCat/html/common/banner.jsp" %>

<div id="myContainer" class="gt-mouse-scroll">
	<div class="section" id="section0">
		<div style="position: absolute;top:40%;left:0;width:100%;height:100%;">
			<div class="gt-width1200">
				<div class="gt-ps1-left">
					<h1 class="title">无下载 无安装</h1>
					<p class="ps">小馋猫智慧餐饮解决方案，采用的是最新的云ERP系统，
打破传统ERP的种种限制，无需下载、无需安装、自动升
级，商家只需硬件设备打开网页就可以轻松使用。</p>
					<ul class="img-list">
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<div class="gt-ps1-right">
					<img src="../img/p1.png">
				</div>
			</div>
		</div>
	</div>
	<div class="section" id="section1">
		<div style="position: absolute;top:30%;left:0;width:100%;height:100%;">
			<div class="gt-width1200">
				<div class="gt-ps2-left">
					<img src="../img/p2.png">
				</div>
				<div class="gt-ps2-right">
					<h1 class="title font24">餐饮系统</h1>
					<p class="ps font14">微信外卖、点餐、预定、排号、呼叫服务 打破位置的限制，餐厅动态一手掌控</p>
				</div>
			</div>
		</div>
	</div>
	<div class="section" id="section2">
		<div style="position: absolute;top:25%;left:0;width:100%;height:100%;">
			<div class="gt-width1200" style="text-align: center;">
				<div class="gt-ps3-text">
					<img alt="" src="../img/p3.png" style="padding-bottom:55px;">
					<h1 class="title font24">智能支付</h1>
					<p class="ps font14">微信支付、扫码支付、刷卡支付，轻松实现 买单一键支付</p>
				</div>
			</div>
		</div>
	</div>
	<div class="section" id="section3">
		<div style="position: absolute;top:30%;left:0;width:100%;height:100%;">
			<div class="gt-width1200">
				<div class="gt-ps1-left" style="width:429px;text-align: left;display: inline-block;padding-right: 10px;">
					<h1 class="title">免费POS机</h1>
					<p class="ps">对开通升级版及以上套餐的商家免费提供智能POS机一台。<br />集成多种收款方式、卡券核销、会员管理、票据打印的智能化终端<br />实现门店管理报表导出，数据无缝对接
					<br />实时尽览收银/会员/营销数据</p>
				</div>
				<div class="gt-ps1-right" style="width: 450px;margin-top: 10%;">
					<img src="../img/p4.png" style="width: 100%;">
				</div>
			</div>
		</div>
	</div>
	<div class="section" id="section4">
		<div style="position: absolute;top:30%;left:0;width:100%;height:100%;">
			<div class="gt-width1200">
				<div class="gt-ps2-left">
					<img src="../img/p5.png">
				</div>
				<div class="gt-ps2-right">
					<h1 class="title font24">会员CRM</h1>
					<p class="ps font14">实体/虚拟会员卡自由组合 <br/>分析消费习惯，提高会员粘度</p>
				</div>
			</div>
		</div>
	</div>
	<div class="section" id="section5">
		<div style="position: absolute;top:40%;left:0;width:100%;height:100%;">
			<div class="gt-width1200">
				<div class="gt-ps1-left gt-ps5-left">
					<h1 class="title">互动营销</h1>
					<p class="ps">支付有礼、摇一摇卡券、朋友圈营销，让消费者全程参与，传播口碑</p>
					<ul class="img-list">
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			<div class="gt-ps1-right" style="position: absolute; right: 0; bottom: 39%;">
				<img src="../img/p6.png">
			</div>
		</div>
	</div>
	<div class="section" id="section6">
		<div style="position: absolute;top:45%;left:0;width:100%;height:100%;">
			<div class="gt-width1200">
				<div class="gt-ps2-left">
					<img src="../img/p7.png">
				</div>
				<div class="gt-ps2-right" style="padding-top: 0;">
					<h1 class="title font24">智能报表 深入挖掘</h1>
					<p class="ps font14">多维度数据分析诠释 <br /> 为餐厅运营提供强大数据支持<br /> 让商家洞悉消费者的喜好 <br />深入挖掘客户的消费需求</p>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(function(){
	function initialization(){
		$('#myContainer').fullpage({
			sectionsColor: ['#681be7', '#518ee7', '#ef6966', '#c352f8', '#fea000','#25b659','#6766cc'],
			//anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
			resize: false,
			animateAnchor:false,
			scrollOverflow: true,
			autoScrolling:true,
			responsive: 900,
			fitSection: false,
			menu: '#menu',
			navigation:true,
			continuousVertical:true,
			//paddingTop: '20px',
			css3: true
		});
	}
	//fullPage.js initialization
	initialization();
})
</script>
</body>
</html></html>