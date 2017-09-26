<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>购买</title>

    <link rel="stylesheet" href="../css/cat.css" />
    <script src="../js/jquery-2.2.2.min.js"></script>
    <script src="../js/iconfont.js"></script>
    <script src="/js/webSite.js"></script>
    <script src="../js/_index.js"></script>
    <script type="text/javascript">
		var access_num = 5; 
	</script>
</head>
<body>
	<div class="pu-head">
	    <div id="canvas" class="gradient"></div>
		<div class="pu-top">
			<div class="pu-top-title">
				<img src="../img/logo.png" />
			</div>
			<a href="/" class="pu-top-station">返回主站</a>
			<div class="pu-top-menu"> 
				<a href="index.jsp" data-num="1">首页</a> 
				<a href="productcore.jsp" data-num="2">产品核心</a>
				<a href="appcenter.jsp" data-num="3">应用中心</a> 
				<a href="/html/LittleGreedyCat/html/car.jsp" data-num="4">硬件</a> 
				<a href="http://www.duofriend.com/html/co_convened.jsp">申请代理</a>
			</div>
			<div class="pu-top-service">
				<a href="http://www.duofriend.com/html/instructions.jsp">使用手册</a>
				<a href="http://duofriend.com/user/toregister.do">免费体验</a> 
				<a href="http://canyin.duofriend.com" class="pu-top-service-login">登录</a> 
				<a href="/html/LittleGreedyCat/html/littlecatpay.jsp" class="pu-top-service-login" style="color:#FCFB8E;" data-num="4">购买</a>			
			</div>  
		</div>
		<h1 class="pu-top-h1" ><img src="../img/paytitle.png" /></h1>
		<p class="pu-top-p">聚焦行业解决方案 助力企业创新发展</p>
	</div> 
	<div class="package-wrap">               
                <div class="content-wrap clearfix" id="meal_set">
                   <div class="item-wrap" id="item1" style=" border-right: 0;">
                        <div class="item-main-wrap">                          
                           <div class="top-wrap" style="background: #0DE9B3;">
                               <div class="desc">高级版</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../img/g1.png" /></span>康小厨ERP（2店版）</li>
                                   <li><span><img src="../img/g1.png" /></span>店员端小程序</li>
                                   <li><span><img src="../img/g1.png" /></span>老板端小程序</li>
                                   <li><span><img src="../img/g1.png" /></span>免费派券渠道</li>
                                   <li><span><img src="../img/g1.png" /></span>公众号管理</li>
                                   <li><span><img src="../img/g1.png" /></span>行业版应用</li>
                                   <li><span><img src="../img/g1.png" /></span>会员系统</li>
                                   <li><span><img src="../img/g1.png" /></span>收银台</li>
                                   <li><span><img src="../img/g1.png" /></span>优惠券</li>
                                   <li><span><img src="../img/g1.png" /></span>微商城</li>
                                   <li><span><img src="../img/g1.png" /></span>分销系统</li>
                                   <li><span><img src="../img/g1.png" /></span>推广工具</li>
                                   <li><span><img src="../img/g1.png" /></span>存销宝（2店多账号）</li>
                                   <li><span><img src="../img/g1.png" /></span>免费的收银硬件支持</li>
                                   <li><span><img src="../img/g1.png" /></span>H5互动游戏（10套）</li>
                                   <li><span><img src="../img/g1.png" /></span>粉巢系统（1套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-a" onclick="showClick(2)">立即咨询</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap" id="item2" style=" border-right: 0;">
                       <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #FFAF0F;">
                               <div class="desc">至尊版</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../img/g2.png" /></span>康小厨ERP（5店版）</li>
                                   <li><span><img src="../img/g2.png" /></span>店员端小程序</li>
                                   <li><span><img src="../img/g2.png" /></span>老板端小程序</li>
                                   <li><span><img src="../img/g2.png" /></span>免费派券渠道</li>
                                   <li><span><img src="../img/g2.png" /></span>公众号管理</li>
                                   <li><span><img src="../img/g2.png" /></span>行业版应用</li>
                                   <li><span><img src="../img/g2.png" /></span>会员系统</li>
                                   <li><span><img src="../img/g2.png" /></span>收银台</li>
                                   <li><span><img src="../img/g2.png" /></span>优惠券</li>
                                   <li><span><img src="../img/g2.png" /></span>微商城</li>
                                   <li><span><img src="../img/g2.png" /></span>分销系统</li>
                                   <li><span><img src="../img/g2.png" /></span>推广工具</li>
                                   <li><span><img src="../img/g2.png" /></span>存销宝（5店多账号）</li>
                                   <li><span><img src="../img/g2.png" /></span>免费的收银硬件支持</li>
                                   <li><span><img src="../img/g2.png" /></span>H5互动游戏（15套）</li>
                                   <li><span><img src="../img/g2.png" /></span>粉巢系统（3套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-b" onclick="showClick(2)">立即咨询</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap" id="item3" style=" border-right: 0;display:none;">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #8559E7;">
                               <div class="desc">白金版</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                    <li><span><img src="../img/g3.png" /></span>康小厨ERP（8店版）</li>
                                    <li><span><img src="../img/g3.png" /></span>店员端小程序</li>
			                        <li><span><img src="../img/g3.png" /></span>老板端小程序</li>
			                        <li><span><img src="../img/g3.png" /></span>免费派券渠道</li>
			                        <li><span><img src="../img/g3.png" /></span>公众号管理</li>
			                        <li><span><img src="../img/g3.png" /></span>行业版应用</li>
			                        <li><span><img src="../img/g3.png" /></span>会员系统</li>
			                        <li><span><img src="../img/g3.png" /></span>收银台</li>
			                        <li><span><img src="../img/g3.png" /></span>优惠券</li>
			                        <li><span><img src="../img/g3.png" /></span>微商城</li>
			                        <li><span><img src="../img/g3.png" /></span>分销系统</li>
			                        <li><span><img src="../img/g3.png" /></span>推广工具 </li>
			                        <li><span><img src="../img/g3.png" /></span>存销宝（8店多账号）</li>
			                        <li><span><img src="../img/g3.png" /></span>免费的收银硬件支持</li>
			                        <li><span><img src="../img/g3.png" /></span>H5互动游戏（20套）</li>
			                        <li><span><img src="../img/g3.png" /></span>粉巢系统（5套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-c" onclick="showClick(2)">立即咨询</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap item3-1"style=" border-right: 0;">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #8559E7;">
                               <div class="desc">白金版</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../img/g3.png" /></span>康小厨ERP（8店版）</li>
                                    <li><span><img src="../img/g3.png" /></span>店员端小程序</li>
			                        <li><span><img src="../img/g3.png" /></span>老板端小程序</li>
			                        <li><span><img src="../img/g3.png" /></span>免费派券渠道</li>
			                        <li><span><img src="../img/g3.png" /></span>公众号管理</li>
			                        <li><span><img src="../img/g3.png" /></span>行业版应用</li>
			                        <li><span><img src="../img/g3.png" /></span>会员系统</li>
			                        <li><span><img src="../img/g3.png" /></span>收银台</li>
			                        <li><span><img src="../img/g3.png" /></span>优惠券</li>
			                        <li><span><img src="../img/g3.png" /></span>微商城</li>
			                        <li><span><img src="../img/g3.png" /></span>分销系统</li>
			                        <li><span><img src="../img/g3.png" /></span>推广工具 </li>
			                        <li><span><img src="../img/g3.png" /></span>存销宝（8店多账号）</li>
			                        <li><span><img src="../img/g3.png" /></span>免费的收银硬件支持</li>
			                        <li><span><img src="../img/g3.png" /></span>H5互动游戏（20套）</li>
			                        <li><span><img src="../img/g3.png" /></span>粉巢系统（5套模板）</li>
                                   
                               </ul>
                               <a href="javascript:;" class="base_abtn" id="cont-c" onclick="showClick(2)">立即咨询</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap" id="item4">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #239EFF;">
                               <div class="desc">钻石版</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                    <li><span><img src="../img/g4.png" /></span>康小厨ERP（12店版）</li>
                                    <li><span><img src="../img/g4.png" /></span>店员端小程序</li>
			                        <li><span><img src="../img/g4.png" /></span>老板端小程序</li>
			                        <li><span><img src="../img/g4.png" /></span>免费派券渠道</li>
			                        <li><span><img src="../img/g4.png" /></span>公众号管理</li>
			                        <li><span><img src="../img/g4.png" /></span>行业版应用</li>
			                        <li><span><img src="../img/g4.png" /></span>会员系统</li>
			                        <li><span><img src="../img/g4.png" /></span>收银台</li>
			                        <li><span><img src="../img/g4.png" /></span>优惠券</li>
			                        <li><span><img src="../img/g4.png" /></span>微商城</li>
			                        <li><span><img src="../img/g4.png" /></span>分销系统</li>
			                        <li><span><img src="../img/g4.png" /></span>推广工具</li>
			                        <li><span><img src="../img/g4.png" /></span>存销宝（12店多账号）</li>
			                        <li><span><img src="../img/g4.png" /></span>免费的收银硬件支持</li>
			                        <li><span><img src="../img/g4.png" /></span>H5互动游戏（20套+）</li>
			                        <li><span><img src="../img/g4.png" /></span>粉巢系统（定制模板）</li>
                                   
                               </ul>
                               <a href="javascript:;"  id="cont-d" class="base_abtn" onclick="showClick(2)">立即咨询</a>
                           </div>
                        </div>
                   </div> 
               </div>
          </div>
<%@include file="/html/common/footer-son.jsp" %>
    
<script>
    var qqNum = "2853873362";
    function showClick(mei){
        $.ajax({
            type: 'POST',
            url: "/article/html/getExtendqq",
            async : false,
            data: {mei:mei},
            success: function(data){
                var d = eval('('+data+')');
                /* console.log(d); */
                if(d.status != 0){
                    qqNum = d.qqNum;
                }
                window.open("http://wpa.qq.com/msgrd?v=3&uin=" + qqNum + "&site=qq&menu=yes");
            },
            error: function(){
                window.open("http://wpa.qq.com/msgrd?v=3&uin=" + qqNum + "&site=qq&menu=yes");
            }
        });

    };
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