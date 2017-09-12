<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>购买</title>
    <link rel="Shortcut Icon"
          href="/images/bitbug.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/big.css" />
    <script src="../js/jquery-2.2.2.min.js"></script>
    <script src="../js/iconfont.js"></script>
    <script src="/js/webSite.js"></script>
    <script src="../js/_index.js"></script>
    <script type="text/javascript">
		var access_num = 3; 
	</script>
</head>
<body>
	<div class="pu-head">
	    <div id="canvas" class="gradient"></div>
		 <%@include file="/html/BigWhite/html/common/banner.jsp" %>
		<h1 class="pu-top-h1" ><img src="../images/paytitle.png" /></h1>
		<p class="pu-top-p">聚焦行业解决方案 助力企业创新发展</p>
	</div> 
	<div class="package-wrap">               
                <div class="content-wrap clearfix" id="meal_set">
                   <div class="item-wrap" id="item1" style=" border-right: 0;">
                        <div class="item-main-wrap">                          
                           <div class="top-wrap" style="background: #0DE9B3;">
                               <div class="desc">高级版</div>
                               <%--<div class="price"><span>2580</span>元/年</div>--%>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../images/g1.png" /></span>大白ERP（2店版） </li>
                                   <li><span><img src="../images/g1.png" /></span>店员端小程序</li>
                                   <li><span><img src="../images/g1.png" /></span>老板端小程序</li>
                                   <li><span><img src="../images/g1.png" /></span>免费派券渠道</li>
                                   <li><span><img src="../images/g1.png" /></span>公众号管理</li>
                                   <li><span><img src="../images/g1.png" /></span>行业版应用</li>
                                   <li><span><img src="../images/g1.png" /></span>会员系统</li>
                                   <li><span><img src="../images/g1.png" /></span>收银台</li>
                                   <li><span><img src="../images/g1.png" /></span>优惠券</li>
                                   <li><span><img src="../images/g1.png" /></span>微商城</li>
                                   <li><span><img src="../images/g1.png" /></span>分销系统</li>
                                   <li><span><img src="../images/g1.png" /></span>推广工具</li>
                                   <li><span><img src="../images/g1.png" /></span>存销宝（2店多账号）</li>
                                   <li><span><img src="../images/g1.png" /></span>免费的收银硬件支持</li>
                                   <li><span><img src="../images/g1.png" /></span>H5互动游戏（10套）</li>
                                   <li><span><img src="../images/g1.png" /></span>粉巢系统（1套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-a" onclick="pay(3)">立即咨询</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap" id="item2" style=" border-right: 0;">
                       <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #FFAF0F;">
                               <div class="desc">至尊版</div>
                              <%-- <div class="price"><span>4980</span>元/年</div>--%>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../images/g2.png" /></span>大白ERP（5店版）</li>
                                   <li><span><img src="../images/g2.png" /></span>店员端小程序</li>
                                   <li><span><img src="../images/g2.png" /></span>老板端小程序</li>
                                   <li><span><img src="../images/g2.png" /></span>免费派券渠道</li>
                                   <li><span><img src="../images/g2.png" /></span>公众号管理</li>
                                   <li><span><img src="../images/g2.png" /></span>行业版应用</li>
                                   <li><span><img src="../images/g2.png" /></span>会员系统</li>
                                   <li><span><img src="../images/g2.png" /></span>收银台</li>
                                   <li><span><img src="../images/g2.png" /></span>优惠券</li>
                                   <li><span><img src="../images/g2.png" /></span>微商城</li>
                                   <li><span><img src="../images/g2.png" /></span>分销系统</li>
                                   <li><span><img src="../images/g2.png" /></span>推广工具</li>
                                   <li><span><img src="../images/g2.png" /></span>存销宝（5店多账号）</li>
                                   <li><span><img src="../images/g2.png" /></span>免费的收银硬件支持</li>
                                   <li><span><img src="../images/g2.png" /></span>H5互动游戏（15套）</li>
                                   <li><span><img src="../images/g2.png" /></span>粉巢系统（3套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-b" onclick="pay(4)">立即咨询</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap" id="item3" style=" border-right: 0;display:none;">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #8559E7;">
                               <div class="desc">白金版</div>
                               <%--<div class="price"><span>7200</span>元/年</div>--%>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                    <li><span><img src="../images/g3.png" /></span>大白ERP（8店版）</li>
                                    <li><span><img src="../images/g3.png" /></span>店员端小程序</li>
			                        <li><span><img src="../images/g3.png" /></span>老板端小程序</li>
			                        <li><span><img src="../images/g3.png" /></span>免费派券渠道</li>
			                        <li><span><img src="../images/g3.png" /></span>公众号管理</li>
			                        <li><span><img src="../images/g3.png" /></span>行业版应用</li>
			                        <li><span><img src="../images/g3.png" /></span>会员系统</li>
			                        <li><span><img src="../images/g3.png" /></span>收银台</li>
			                        <li><span><img src="../images/g3.png" /></span>优惠券</li>
			                        <li><span><img src="../images/g3.png" /></span>微商城</li>
			                        <li><span><img src="../images/g3.png" /></span>分销系统</li>
			                        <li><span><img src="../images/g3.png" /></span>推广工具 </li>
			                        <li><span><img src="../images/g3.png" /></span>存销宝（8店多账号）</li>
			                        <li><span><img src="../images/g3.png" /></span>免费的收银硬件支持</li>
			                        <li><span><img src="../images/g3.png" /></span>H5互动游戏（20套）</li>
			                        <li><span><img src="../images/g3.png" /></span>粉巢系统（5套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-c" onclick="pay(13)">立即咨询</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap item3-1"style=" border-right: 0;">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #8559E7;">
                               <div class="desc">白金版</div>
                               <%--<div class="price"><span>7200</span>元/年</div>--%>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../images/g3.png" /></span>大白ERP（8店版）</li>
                                    <li><span><img src="../images/g3.png" /></span>店员端小程序</li>
			                        <li><span><img src="../images/g3.png" /></span>老板端小程序</li>
			                        <li><span><img src="../images/g3.png" /></span>免费派券渠道</li>
			                        <li><span><img src="../images/g3.png" /></span>公众号管理</li>
			                        <li><span><img src="../images/g3.png" /></span>行业版应用</li>
			                        <li><span><img src="../images/g3.png" /></span>会员系统</li>
			                        <li><span><img src="../images/g3.png" /></span>收银台</li>
			                        <li><span><img src="../images/g3.png" /></span>优惠券</li>
			                        <li><span><img src="../images/g3.png" /></span>微商城</li>
			                        <li><span><img src="../images/g3.png" /></span>分销系统</li>
			                        <li><span><img src="../images/g3.png" /></span>推广工具 </li>
			                        <li><span><img src="../images/g3.png" /></span>存销宝（8店多账号）</li>
			                        <li><span><img src="../images/g3.png" /></span>免费的收银硬件支持</li>
			                        <li><span><img src="../images/g3.png" /></span>H5互动游戏（20套）</li>
			                        <li><span><img src="../images/g3.png" /></span>粉巢系统（5套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-c" onclick="pay(13)">立即咨询</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap" id="item4">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #239EFF;">
                               <div class="desc">钻石版</div>
                               <%--<div class="price"><span>9600</span>元/年</div>--%>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                    <li><span><img src="../images/g4.png" /></span>大白ERP（12店版）</li>
                                    <li><span><img src="../images/g4.png" /></span>店员端小程序</li>
			                        <li><span><img src="../images/g4.png" /></span>老板端小程序</li>
			                        <li><span><img src="../images/g4.png" /></span>免费派券渠道</li>
			                        <li><span><img src="../images/g4.png" /></span>公众号管理</li>
			                        <li><span><img src="../images/g4.png" /></span>行业版应用</li>
			                        <li><span><img src="../images/g4.png" /></span>会员系统</li>
			                        <li><span><img src="../images/g4.png" /></span>收银台</li>
			                        <li><span><img src="../images/g4.png" /></span>优惠券</li>
			                        <li><span><img src="../images/g4.png" /></span>微商城</li>
			                        <li><span><img src="../images/g4.png" /></span>分销系统</li>
			                        <li><span><img src="../images/g4.png" /></span>推广工具</li>
			                        <li><span><img src="../images/g4.png" /></span>存销宝（12店多账号）</li>
			                        <li><span><img src="../images/g4.png" /></span>免费的收银硬件支持</li>
			                        <li><span><img src="../images/g4.png" /></span>H5互动游戏（20套+）</li>
			                        <li><span><img src="../images/g4.png" /></span>粉巢系统（定制模板）</li>
			                                   
                               </ul>
                               <a href="javascript:;"  id="cont-d" class="base_abtn" onclick="pay(14)">立即咨询</a>
                           </div>
                        </div>
                   </div> 
               </div>
          </div>

    <%@include file="/html/common/footer-son.jsp" %>
</div>

<script>
 $('.package-wrap').on('mouseenter', function() {
	$(this).find('.item3-1').hide();
	$(this).find('#item3').show();
}).on('mouseleave', function() {
	$(this).find('.item3-1').show();
	$(this).find('#item3').hide();
})  
</script>	
<script src="../js/min.js"></script>	
<script src="../js/three.min.js"></script>
<script src="../js/projector.js"></script>
<script src="../js/canvas-renderer.js"></script>
<script src="../js/3d-lines-animation.js"></script>
</body>
</html>