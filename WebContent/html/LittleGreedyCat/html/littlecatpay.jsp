<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>购买</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
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
                               <div class="price"><span>2580</span>元/年</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../img/g1.png" /></span>小馋猫ERP（2店版）</li>
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
                               <a href="javascript:;" class="base_abtn" id="cont-a" onclick="pay(3)">立刻购买</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap" id="item2" style=" border-right: 0;">
                       <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #FFAF0F;">
                               <div class="desc">至尊版</div>
                               <div class="price"><span>4980</span>元/年</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../img/g2.png" /></span>小馋猫ERP（5店版）</li>
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
                               <a href="javascript:;" class="base_abtn" id="cont-b" onclick="pay(4)">立刻购买</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap" id="item3" style=" border-right: 0;display:none;">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #8559E7;">
                               <div class="desc">白金版</div>
                               <div class="price"><span>7200</span>元/年</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                    <li><span><img src="../img/g3.png" /></span>小馋猫ERP（8店版）</li>
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
                               <a href="javascript:;" class="base_abtn" id="cont-c" onclick="pay(13)">立刻购买</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap item3-1"style=" border-right: 0;">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #8559E7;">
                               <div class="desc">白金版</div>
                               <div class="price"><span>7200</span>元/年</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span><img src="../img/g3.png" /></span>小馋猫ERP（8店版）</li>
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
                               <a href="javascript:;" class="base_abtn" id="cont-c" onclick="pay(13)">立刻购买</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap" id="item4">
                        <div class="item-main-wrap">
                           <div class="top-wrap" style="background: #239EFF;">
                               <div class="desc">钻石版</div>
                               <div class="price"><span>9600</span>元/年</div>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                    <li><span><img src="../img/g4.png" /></span>小馋猫ERP（12店版）</li>
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
                               <a href="javascript:;"  id="cont-d" class="base_abtn" onclick="pay(14)">立刻购买</a>
                           </div>
                        </div>
                   </div> 
               </div>
          </div>
<%@include file="/html/LittleGreedyCat/html/common/footer.jsp" %>		
		
		
 <div style="display: none" class="popup_dialog_confirm" id="paybox">
    <div class="popup_mask"></div>
    <div class="popup_dialog">
        <svg class="icon fr iconRight closeimg" aria-hidden="true" style='margin: 10px;float:right;'>
            <use xlink:href="#icon-close"></use>
        </svg>
        <div class="popup_dialog_hd">
            <div class="popup_dialog_title">
            <span>购买套餐</span>
            
            </div>
        </div>
        <div class="popup_dialog_bd">
            <ul>
                <li>              
                    <span class='label borernone'>购买套餐:</span>
	                <select id="paymeal">
	                    <option>升级版套餐</option>
	                    <option style='color:#0182de'>高级版套餐（推荐）</option>
	                    <option>至尊版套餐</option>
	                    <option>钻石版套餐</option>
	                    <option>白金版套餐</option>
	                </select>
                </li>
                <h4>提交个人信息  （专属客服为您开通账号）</h4>
                <li>                
                     <span class='label'>个人姓名:</span>
                    <input type="text"  placeholder="请输入个人姓名" id="payname" maxlength="12">
                </li>
                <li>               
                    <span class='label'>手机号码:</span>
                    <input type="text" placeholder="请输入手机号码" id="payphone" maxlength="12">

                </li>
                <li>                   
                      <span class='label borernone' style='border:none'>支付方式: </span>
                    <div class="payWay">
                        <img class="wx checkedPay" data-value="wx" src="../img/weixin.png" alt="" pay-data="0">
                        <img class="pay" data-value="pay" src="../img/pay.png" alt="" pay-data="1">
                    </div>
                </li>
                <div class="showpay clear">
                    <div class="fr " style="text-align: right;margin: 15px 0 0 0;float: right;">
                        <span>实付金额：</span>
                        <span><label id="pay_box_price">510</label>元</span>
                    </div>
                </div>
            </ul>
        </div>
        <div class="popup_dialog_ft">
              <p class='remindbox' id="paytip"></p>
            <div class="sumlitBtn">提交订单</div>
        </div>
    </div>
</div> 
<div style="display: none;" class="popup_dialog_confirm " id="qrcodeview">
    <div class="popup_mask"></div>
    <div class="popup_dialog">
        <svg class="icon fr iconRight closeimg" aria-hidden="true" style='margin: 10px;float:right;' onclick="clearIt();">
            <use xlink:href="#icon-close"></use>
        </svg>
        <div class="popup_dialog_hd">
            <div class="popup_dialog_title">扫码支付</div>
        </div>
        <div class="popup_dialog_bd" style="text-align: center;">
        
  <p class='p-detial'>
         <span>
         <label>实付金额：<span style='color: #F85555;' id="shipay">510</span></label>
                   元</span>
         </p>
            <img alt="" src="" style="" class='imgcode'>
           <p class='p-detial'>扫一扫支付</p> 
        </div>
    </div>
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