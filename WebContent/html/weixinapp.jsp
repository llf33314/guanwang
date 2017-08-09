<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微信小程序定制开发_小程序第三方开发商_多粉平台</title>

<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height": 410});
})
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>
     
     <div id="banner" class="focusad">
         <ul>
             <li><a href="javascript:;"><img src="${imageUrl}/weixin/sjl2.jpg"></a></li>
         </ul>
     </div>

     <div class="wrap1004 weixin_xcx">
          <p class="xcx"><span>小程序</span>是一种不需要下载安装即可使用的应用，它实现了应用「触手可及」的梦想，用户扫一扫或搜一下即可打开应用。也体现了「用完即走」的理念，用户不用关心是否安装太多应用的问题。应用将无处不在，随时可用，但又无需安装卸载。</p>

          <ul class="clearfix xcx_xj">
               <li>
                  <img src="${imageUrl}/weixin/sjl (3).jpg">
                  <strong>研发团队</strong>
                  <p>多粉的研发工程师均有多年微信开发经验，参与过众多一流的移动互联网项目开发。有足够的信心保证高效、稳定、准时地完成微信小程序的开发。</p>
               </li>
               <li>
                  <img src="${imageUrl}/weixin/sjl (4).jpg">
                  <strong>量身定制</strong>
                  <p>我们的团队可根据企业商家的实际需求和行业特点，量身定制出最佳的微信小程序解决方案，助力企业商家移动创意营销新体验。</p>
               </li>
               <li>
                  <img src="${imageUrl}/weixin/sjl (5).jpg">
                  <strong>快速响应</strong>
                  <p>多粉第一时间参与了微信小程序的内测，并已经开始着手构建多粉微信小程序源码库。对于企业商家的定制需求，我们能做到最快的响应速度。</p>
               </li>
          </ul>

          <div class="sjl">
               <img src="${imageUrl}/weixin/sjl-(6).jpg" class="block" />
               <div class="d1">无需安装，省流量，省时间，不占用手机桌面。</div>
               <div class="d2">无需兼顾Android和iOS的开发，只需开发一个小程序。</div>
               <div class="d3">开发成本更低，企业商家可以把更多精力放在运营中。</div>
               <div class="d4">相较于原生APP，推广更容易更简单，更省成本。</div>
               <div class="d5">媲美原生APP，综合各项使用体验比原生APP更优。</div>
          </div>

          <a href="#" class="base_abtn imMakeAd" onclick="showClick(2)">立即咨询</a>
     </div>

     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
<script type="text/javascript">
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
</script>
</html>



