<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>     
     <div class="clearfix sitenav">
          <div class="wrap1200">
              <!-- <div class="fl account">
                   <span class="welcome">欢迎登录多粉</span>
                   <a href="#" class="login">登录</a>
                   <a href="#" class="reg">注册</a>
              </div> -->
              <div class="fr snav">
                   <a href="/html/instructions.jsp">帮助中心</a>
                   <a href="javascript:;" id="focus_df">关注多粉</a>
                   <a href="/html/technical_support.jsp">技术支持</a>
                   <a href="/html/product-trends/register-user.jsp" class="proxylogin">代理登录</a>
                   <a href="http://duofriend.com/user/toregister.do" class="felltry">免费试用</a>
                   <img src="${imageUrl}/ewm.jpg" class="ewm">
              </div>
          </div>
     </div>
     <div class="clearfix header">
          <div class="wrap1200">
              <h1 class="fl logo"><img src="${imageUrl}/logo.png"/>多粉</h1>
              <div class="fr usercenter">
                   <a href="http://duofriend.com/user/tologin.do" class="abtn login">登录</a>
                   <a href="http://duofriend.com/user/toregister.do" class="abtn reg">注册</a>
              </div>
              <ul class="fr nav organbox" id="clearfix_header">
                  <li><a href="/html/index.jsp" class="fie6">首页</a></li>
                  <li><a href="/html/product.jsp" target="_blank" class="fie6">产品中心</a>
                     <ul class="subbox">
                         <li><a href="/html/fansNest.jsp" target="_blank">粉巢系统</a></li>
                         <li><a href="/html/weixinSell/html/index.jsp" target="_blank">微信营销</a></li>
                         <li><a href="/html/wcy.jsp" target="_blank">微信行业应用</a></li>
                         <li><a href="/html/weixinapp.jsp" target="_blank">微信小程序</a></li>
                     </ul>
                  </li>
                  <li><a href="/html/erp.jsp" target="_blank" class="fie6">解决方案</a>
                     <ul class="subbox">
                         <!-- <li><a href="/html/wcy.jsp" target="_blank">行业解决方案</a></li>
                         <li><a href="/html/weshop.jsp" target="_blank">微电商解决方案</a></li>
                         <li><a href="/html/generation_operation.jsp" target="_blank">代运营解决方案</a></li>
                         <li><a href="/html/mobile_ad.jsp" target="_blank">移动广告解决方案</a></li>
                         <li><a href="/html/missions.jsp" target="_blank">移动办公解决方案</a></li>
                         <li><a href="/html/java.jsp" target="_blank">技术平台解决方案</a></li> -->
                         <li><a href="/html/smarty_cy.jsp" target="_blank">康小厨（智慧餐饮）</a></li>
                         <li><a href="/html/carxs.jsp" target="_blank">车小算（汽车美容）</a></li>
                         <li><a href="/html/demo.jsp" target="_blank">样子（美容美发）</a></li>
                         <li><a href="/html/smarty_hotel.jsp" target="_blank">客来驿（智慧酒店）</a></li>
                         <li><a href="/html/wuye.jsp" target="_blank">小狮（物业管理） </a></li>
                         <li><a href="javascript:void(0);" target="_blank">来店（智慧商超）</a></li>
                         <li><a href="javascript:void(0);" target="_blank">小务（社区医疗）</a></li>
                     </ul>
                  </li>
                  <li><a href="/html/case_center.jsp"  class="fie6">客户案例</a></li>
                  <li class="zxli sigle"><a href="/html/agency/html/index.jsp"  class="fie6">合作与加盟</a>
                     <ul class="subbox">
                         <!-- <li><a href="/html/agency/html/index.jsp" >合作加盟</a></li> -->
                         <li><a href="/html/technology.jsp" >技术服务商</a></li>
                     </ul>
                  </li>
                  <!-- <li class="last firstli">
                      <a href="/html/aboutUs.jsp"  class="fie6">关于多粉</a>
                      <ul class="subbox">
                         <li><a href="/html/aboutUs.jsp" >关于我们</a></li>
                         <li><a href="/html/product-trends/product-news.jsp" >多粉动态</a></li>
                     </ul>
                  </li> -->
              </ul>
          </div>
     </div>
<script>
	if($.cookie("clearfix_selected") == null || $.cookie("clearfix_selected") == "undefined"){
		var v = $($("#clearfix_header").children()[0]).children().html();
		$.cookie("clearfix_selected", v, {path:'/'});
	}else{
		var lis = $("#clearfix_header").children();
		console.log($.cookie("clearfix_selected"));
		for(var i=0;i<lis.length;i++){
			var a = $(lis[i]).children().html();
			if($.cookie("clearfix_selected") == a){
				$(lis[i]).addClass("selected");
				break;
			}
		}
	}
	$(function(){
		
		$("#clearfix_header").children().click(function(){
			var v = $(this).children().html();
			$.cookie("clearfix_selected", v, {path:'/'});
		});
		
	});
</script>

