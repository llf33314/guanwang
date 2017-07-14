<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<style>
.passiveQQ {
  display: none !important;
}
</style> 

<div class="footer">
         <div class="fnav clearfix">
             <dl>
                 <dt>关于我们</dt>
                 <dd onclick="footerLock('');"><a href="/html/aboutUs.jsp" >多粉介绍</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/product-trends/product-news.jsp" >多粉动态</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/honor.jsp" >荣誉奖项</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/invide.jsp" >招贤纳士</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/copyright.jsp" >知识产权</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/contract.jsp" >联系我们</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/paymethod.jsp" >付款方式</a></dd>
             </dl>
             <dl>
                 <dt>产品服务</dt>
                 <dd onclick="footerLock('产品中心');"><a href="/html/product.jsp" >产品中心</a></dd>
                 <!-- <dd onclick="footerLock('运营推广');"><a href="/html/promotion.jsp" >运营推广</a></dd> -->
                 <dd onclick="footerLock('定制开发');"><a href="/html/customdevelopment.jsp" >定制开发</a></dd>
                 <!-- <dd onclick="footerLock('解决方案');"><a href="/html/smarty_hotel.jsp" >智慧酒店</a></dd>
                 <dd onclick="footerLock('解决方案');"><a href="/html/LittleGreedyCat/html/index.jsp" >智慧餐饮</a></dd> -->
                 <dd onclick="footerLock('解决方案');"><a href="/html/smarty_city.jsp" >智慧城市</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/generation_operation.jsp" >代运营</a></dd>
                 <dd onclick="footerLock('产品中心');"><a href="/html/setMeal.jsp" >代运营套餐</a></dd>
             </dl>
             <dl>
                 <dt>合作召集</dt>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/co_convened.jsp" >招商加盟</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/agency.jsp" >代理查询</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/co_convened.jsp?v=2108" >城市代理商</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/co_convened.jsp?v=3105" >县区级代理商</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/co_convened.jsp?v=3450" >城市合伙人</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/co_convened.jsp?v=4380" >城市服务商</a></dd>
                 <dd onclick="footerLock('合作与加盟');"><a href="/html/technology.jsp">技术服务商</a></dd>
             </dl>
             <dl>
                 <dt>帮助中心</dt>
                 <dd onclick="footerLock('');"><a href="/html/staff.jsp" >员工查询</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/instructions.jsp" >使用手册</a></dd>
                 <dd onclick="footerLock('');"><a href="/html/hardware.jsp" >多粉硬件</a></dd>
                 <dd onclick="footerLock('解决方案');"><a href="/html/newCombo.jsp" >多粉套餐</a></dd>
                 <dd onclick="footerLock('客户案例');"><a href="/html/case_center.jsp" >案例中心</a></dd>
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
              Copyright © 2013-2016 duofriend. All Rights Reserved. 
              <a href="http://www.miitbeian.gov.cn" target="_blank" style="color: #6E6F6F;">粤ICP备15016183号-3</a>&nbsp;&nbsp;
              经营许可证编号：<span class="gt_tck" data-url="${imageUrl}/xkz1.jpg" data-zoom="400,568">全国B2-20160778</span>&nbsp;&nbsp;&nbsp;<span class="gt_tck" data-url="${imageUrl}/xkz2.jpg" data-zoom="400,577">粤B2-20150533</span><br/>
              广东谷通科技有限公司<br/>
              <span class="gt_tck" data-url="${imageUrl}/xkz3.jpg" data-zoom="600,380">法律顾问</span>
         </div>

         <div class="rightIcon">
              <ul>
                 <li class="ri1"><span class="lb">返回顶部</span></li>
                 <li class="ri2">
                      <span class="lb">微信公众号</span>
                      <img src="${imageUrl}/ewm.jpg" style="width: 120px;height: 120px;">
                 </li>
                 <li id="QQFrame" class="ri3" onclick="showClick(2);">
                 	<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIwOTFfNDAwODg5NDUyMl8" ></script>
                 	<span class="lb">售前咨询</span>
                 </li>
                 <li id="QQFrame" class="ri3" onclick="showClick(3);">
                 	<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIwOTFfNDAwODg5NDUyMl8" ></script>
                 	<span class="lb">售后咨询</span>
                 </li>
                 <li class="ri4">
                     <span class="lb">服务热线</span>
                     <div class="risub">
                         <p>
                         服务热线
                         <em>400-889-4522</em>
                         </p>
                     </div>
                 </li>
              </ul>
         </div>
     </div>

     <script type="text/javascript" charset="utf-8" src="http://lead.soperson.com/10040401/10072010.js"></script>
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


    