<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<style>
.passiveQQ {
  display: none !important;
}
</style>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?14a62041b4de52f2586d283b14d1175c";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<link rel="stylesheet" href="/html/css/basic.css"/>
<link rel="stylesheet" type="text/css" href="/css/fans.css" />
<%@ include file="/html/common/video.jsp"%>
<div class="footer">
         <div class="fnav clearfix">
             <dl>
                 <dt>关于我们</dt>
                 <dd onclick="footerLock('');"><a href="/html/aboutUs/html/index.jsp?type=1" >多粉介绍</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/aboutUs/html/index.jsp?type=2" >所获荣誉</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/aboutUs/html/index.jsp?type=3" >加入我们</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/aboutUs/html/index.jsp?type=4" >联系我们</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/product-trends/product-news.jsp" >多粉动态</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/paymethod/html/index.jsp" >付款方式</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/copyright.jsp" >知识产权</a></dd>
             </dl>
             <dl>
                 <dt>产品服务</dt>
                 <dd onclick="footerLock('产品中心');"><a href="/html/weixinapp.jsp" >微信小程序</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/weixinSell.jsp" >微信营销</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/BusinessAlliance/html/index.jsp" >商家联盟</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/coupon.jsp" >优惠券发放平台</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/fansNest.jsp" >粉巢系统</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/generation_operation.jsp" >代运营</a></dd>
                 <dd onclick="openVideo1();"><a href="javascript:void(0);" >概念视频</a></dd>
             </dl>
             <dl>
                 <dt>合作召集</dt>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency/html/index.jsp" >招商加盟</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency.jsp" >代理查询</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency/html/sign.jsp?v=1" >城市代理商</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency/html/sign.jsp?v=2" >县区级代理商</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency/html/sign.jsp?v=3" >城市合伙人</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency/html/sign.jsp?v=4" >城市服务商</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/technology.jsp">技术服务商</a></dd>
             </dl>
             <dl>
                 <dt>帮助中心</dt>
                 <dd onclick="footerLock('');"><a href="/html/staff/html/index.jsp" >员工查询</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/instructions.jsp" >使用手册</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/hardware/html/index.jsp" >硬件支持</a></dd>
                 <dd onclick="footerLock('解决方案');"><a href="/html/newCombo.jsp" >多粉套餐</a></dd>
             </dl>
             <dl class="ewm1">
                 <dt>关注多粉</dt>
                 <dd class="clearfix">
                    <div style="margin-right:15px;"><img src="${imageUrl}/ewm.jpg"/>关注微信公众号</div>
                    <div><img src="${imageUrl}/wb.png"/>关注微博</div>
                 </dd>
             </dl>
         </div>
         <div class="hotline tc">服务热线：400 889 4522</div>
         <div class="copyright tc">

              <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44130202000473" target="_blank" style="color: #6E6F6F;">粤公网安备 44130202000473号</a>&nbsp;&nbsp;&nbsp;<img src="/images/pafoot.png" style="width: 18px;">&nbsp;&nbsp;
             粤ICP备15016183号-3&nbsp;&nbsp;<span class="gt_tck" data-url="${imageUrl}/xkz1.jpg" data-zoom="400,568">经营许可证编号：全国B2-20160778</span>&nbsp;&nbsp;&nbsp;<span class="gt_tck" data-url="${imageUrl}/xkz2.jpg" data-zoom="400,577">粤B2-20150533</span><br/>
             Copyright © 2013-2017 duofriend. All Rights Reserved.  广东谷通科技有限公司<br/>
              <span class="gt_tck" data-url="${imageUrl}/xkz3.jpg" data-zoom="600,380">法律顾问</span>
         </div>

         <div class="rightIcon">
              <ul>
                 <li id="QQFrame" class="ri3" onclick="showClick(2);">  
                 	<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIwOTFfNDAwODg5NDUyMl8" ></script>
                 	<img src="/images/index/as-qq.png">
                 	<span class="lb">售前咨询</span>
                 </li>
                 <li id="QQFrame" class="ri3" onclick="showClick(3);">
                 	<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIwOTFfNDAwODg5NDUyMl8" ></script>
                 	<img src="/images/index/as-qq.png">
                 	<span class="lb">售后咨询</span>
                 </li>
                 <li class="ri4">
                     <img src="/images/index/as-zx.png">
                     <span class="lb">服务热线</span>                     
                     <div class="risub">
                         <p><em>400-889-4522</em></p>
                     </div>
                 </li>
                 <li class="ri2">
                     <img src="/images/index/as-gz.png">                   
                      <span class="lb">微信公众号</span>
                      <div class="a-ewm">
                          <p>扫一扫，全知道</p>
                          <img src="${imageUrl}/ewm.jpg" style="width: 86px;height:84px;margin-top: -4px;margin-right: 10px;">
                      </div>
                      
                 </li>
                 <li class="ri1" style="display: none">
                      <img src="/images/index/as-top.png">
                      <span class="lb">返回顶部</span>
                 </li>
              </ul>
         </div>
     </div>

     <%--<script type="text/javascript" charset="utf-8" src="http://lead.soperson.com/10040401/10072010.js"></script>--%>
    <script type="text/javascript" charset="utf-8" src="https://gate.soperson.com/10040401/10072010.js"></script>
    <!-- <script type="text/javascript" charset="utf-8" src="/html/js/talk99.js"></script> -->
     <script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIyODFfNDAwODg5NDUyMl8"></script>
     <script>
		var qqtype = -1;
		var qqNum = "2853873362";
       var QQFrameFlag = false;
	   var setTime = setInterval(function(){
		   	if($("#QQFrame iframe").length > 0){
		   		$("#QQFrame iframe").addClass('passiveQQ');
		   		$("#QQFrame iframe").attr("id","qqIframe");
		   		QQFrameFlag = true;
		   		clearInterval(setTime);
		   	}
		});
		function showClick(mei){
			$.ajax({
      			type: 'POST',
      			url: "/article/html/getExtendqq",
      			async : false, 
      			data: {mei:mei},
      			success: function(data){
      				var d = eval('('+data+')');
      				if(d.status == 0){
      					qqtype = -1;
      				}else{
      					qqNum = d.qqNum;
      					qqtype = 1;
      					if(d.qqType == -1){
      						qqtype = -1;
      					}
      				}
      				// 点击QQ判断
      				if(qqtype == -1){
      					if(QQFrameFlag){
      						document.getElementById('qqIframe').contentWindow.document.getElementById('launchBtn').click();	
      					}
      				}else{
      					window.open("http://wpa.qq.com/msgrd?v=3&uin=" + qqNum + "&site=qq&menu=yes");
      				}
      			},
      			error: function(){
      				qqtype = -1;
      				if(QQFrameFlag){
  						document.getElementById('qqIframe').contentWindow.document.getElementById('launchBtn').click();	
  					}
      			}
      		});
			
		};
		
		var footerLock = function(a){
			$.cookie('clearfix_selected', a, {path:'/'});
			$.cookie("clearfix_selected_child", a, {path:'/'});
		}
	</script>


    