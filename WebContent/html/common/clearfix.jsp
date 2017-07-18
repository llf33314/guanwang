<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#home_login:HOVER{
		background-color: #37a2f5;
		border-color: #37a2f5;
	}
	#home_reg:HOVER{
		background-color: #37a2f5;
		border-color: #37a2f5;
	}
	.normal-abtn:HOVER{
		color: #37a2f5 !important;
	}
	.fie6:HOVER{
		color: #37a2f5 !important;
	}
	.subbox a:HOVER {
		color: #37a2f5 !important;
	}
</style>
     <div class="clearfix header">
          <div class="bg"></div>
          <div class="wrap1200">
              <h1 class="fl logo" onclick="goHome();" style="cursor: pointer;"><div class="gt-a-top-box-logo"><a href="/html/index.jsp"><img src="/images/index/alogo.png"></a></div></h1>
              <div class="fr usercenter">
                   <a href="/html/instructions.jsp" class="normal-abtn">使用手册</a>
                   <a href="http://duofriend.com/user/toregister.do" class="normal-abtn">免费试用</a>
                   <a href="/html/product-trends/register-user.jsp" class="normal-abtn">代理登录</a>
                   <a href="http://duofriend.com/user/tologin.do" style="margin-left: 30px;" id="home_login" class="abtn login">登录</a>
                   <a href="http://duofriend.com/user/toregister.do" id="home_reg" class="abtn reg">注册</a>
              </div>
              <ul class="fl nav organbox" id="clearfix_header">
                  <li><a href="/html/index.jsp" class="fie6">首页</a></li>
                  <li class="firstli"><a href="javascript:void(0);" target="_blank" class="fie6">产品中心</a>
                     <ul class="subbox">
                         <li><a href="/html/fansNest.jsp" target="_blank">粉巢系统</a></li>
                         <li><a href="/html/weixinSell.jsp" target="_blank">微信营销</a></li>
                         <li><a href="/html/wcy.jsp" target="_blank">微信行业应用</a></li>
                         <li><a href="/html/weixinapp.jsp" target="_blank">微信小程序</a></li>
                         <li><a href="http://www.duofriend.com/html/BusinessAlliance/html/index.jsp" target="_blank">商家联盟</a></li>
                         <li><a href="/html/coupon.jsp" target="_blank">优惠券发放平台</a></li>
                         <li><a href="/html/hardware.jsp" target="_blank">多粉硬件</a></li>
                         <li><a href="/html/generation_operation.jsp" target="_blank">代运营</a></li>
                         <li style="border-right: 1px #fff solid;width: 1px;height: 128px;position: absolute;left: 45%;top: 12%;"></li>
                     </ul>
                  </li>
                  <li class="firstli"><a href="javascript:void(0);" target="_blank" class="fie6">解决方案</a>
                     <ul class="subbox">
                         <li><a href="/html/LittleGreedyCat/html/index.jsp" target="_blank">小馋猫（智慧餐饮）</a></li>
                         <li><a href="/html/CarCount/html/index.jsp" target="_blank">车小算（汽车美容）</a></li>
                         <li><a href="/html/look/html/index.jsp" target="_blank">样子（美容美发）</a></li>
                         <li><a href="/html/smarty_hotel.jsp" target="_blank">小驿（智慧酒店）</a></li>
                         <li><a href="/html/wuye.jsp" target="_blank">揽胜家园（物业管理） </a></li>
                         <li><a href="javascript:void(0);" target="_blank">来店（智慧商超）</a></li>
                         <li><a href="/html/BigWhite/html/index.jsp" target="_blank">大白（社区医疗）</a></li>
                         <li style="border-right: 1px #fff solid;width: 1px;height: 128px;position: absolute;left: 45%;top: 12%;"></li>
                     </ul>
                  </li>
                  <li><a href="/html/case_center.jsp" target="_blank" class="fie6">客户案例</a></li>
                  <li class="sigle"><a href="javascript:void(0);"  class="fie6">合作与加盟</a>
                     <ul class="subbox">
                         <li><a href="/html/co_convened.jsp" >申请代理</a></li>
                         <li><a href="/html/technology.jsp" >技术服务商</a></li>
                     </ul>
                  </li>
              </ul>
          </div>
     </div>
<script>
	var clearfix_selected = $.cookie("clearfix_selected"),
		clearfix_selected_child = $.cookie("clearfix_selected_child");
	if(clearfix_selected == null || clearfix_selected == "undefined"){
		/* $.cookie("clearfix_selected", '首页', {path:'/'});
		$.cookie("clearfix_selected_child", '首页', {path:'/'}); */
	}else{
		/* var lis = $("#clearfix_header").children();
		console.log($.cookie("clearfix_selected"));
		for(var i=0;i<lis.length;i++){
			var a = $(lis[i]).children().html();
			if($.cookie("clearfix_selected") == a){
				$(lis[i]).addClass("selected");
				break;
			}
		} */
		/* console.log(clearfix_selected);
		console.log(clearfix_selected_child); */
		/* if(clearfix_selected == '' && clearfix_selected_child == ''){
			$("#clearfix_header .subbox a").css('color', '#fff');
			$("#clearfix_header .fie6").css('color', '#fff');
		}else{
			$('a:contains('+clearfix_selected+')').css('color', '#37a2f5');
			$('a:contains('+clearfix_selected_child+')').css('color', '#37a2f5');
		} */
	}

	$(function(){

		$("#clearfix_header").children().click(function(){
			var v = $(this).children().html();
			if(v == '首页') v = '';
			$.cookie("clearfix_selected", v, {path:'/'});
		});

		/* /* $("#clearfix_header a").click(function(){
			$("#clearfix_header .subbox a").css('color', '#fff');
			$("#clearfix_header .fie6").css('color', '#fff');
			if($('a:contains('+$(this).html()+')').attr('class') != 'fie6'){
				$(this).parent().parent().parent().find('.fie6').css('color', '#37a2f5');
			}
			var vv = $(this).html();
			if(vv == '首页') vv = '';
			if(vv != ''){
				$('.subbox a:contains('+vv+')').css('color', '#37a2f5');
				$('.fie6:contains('+vv+')').css('color', '#37a2f5');
			}
			$.cookie("clearfix_selected_child", vv, {path:'/'});
			/* console.log($('a:contains('+$(this).html()+')')); */
		/* }); 

	}); */

	var goHome = function(){
		$.cookie("clearfix_selected", '', {path:'/'});
		$.cookie("clearfix_selected_child", '', {path:'/'});
		location.href='/html/index.jsp';
	}
</script>
