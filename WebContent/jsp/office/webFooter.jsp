<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
		<!--底部开始-->
			<div class="footer">
				<div class="foot-con1">
			    	<a class="itemNav" href="jsp/office/index.jsp">首页</a>
			    	<span>|</span>
			    	<a class="itemNav" href="jsp/office/product.jsp">产品服务</a>
			    	<span>|</span>
				  	<a class="itemNav" href="jsp/office/cooperation.jsp">合作召集</a>
				  	<span>|</span>
				  	<a class="itemNav" href="jsp/office/example.jsp">案例中心</a>
				  	<span>|</span>
				  	<a class="itemNav" href="jsp/office/aboutCompany.jsp">关于我们</a>
				  	<span>|</span>
				  	<a class="itemNav" href="jsp/office/staff.jsp">员工查询</a>
				  	<span>|</span>
				  	<a class="itemNav" href="jsp/office/help.jsp">帮助中心</a>
			  </div>
			  <p class="footText">
			    <label>服务热线：</label>
			    <label>400</label>
			    <label>889</label>
			    <label>4522</label>
			    <label class="statistics">已有<span class="staSum">${busCount.total}</span>商家入驻，今日入驻<span class="staToday">${busCount.daysCount}</span>位</label>
			   </p>
			  <div class="foot-con2">
				  	<span>Copyright © 2015 duofriend. All Rights Reserved. </span>
				  	<a href="http://www.miitbeian.gov.cn">粤ICP备15016183号-3</a>
				    <a href="jsp/office/businessLicense.jsp" class="businessLicense">经营许可证编号：粤B2-20150533</a>
			  </div> 
			  <p class="foot-con3">广东谷通科技有限公司</p>
	    </div>
		<!--底部结束-->
		<!--右侧qq联系我们-->
			<div class="right-float clearfix ">
				 <ul>
				    <li class="item item1" id="gotop"><a href="javascript:void(0)"></a></li>
				    <li class="item item2" id="code"><a href="javascript:void(0)"></a></li>
				    <li class="item item3" onclick="showClick()">
				    	<!-- <a href="tencent://message/?Menu=yes&amp;uin=938188163&amp;Service=58&amp;SigT=A7F6FEA02730C988AB24C9B373ECFDE9808BDE18E20D0167786709D0686A131313786CFA1FA360B5F102DCD34D4633FAA26230E5A7C24377DB5F6107E48C4AA6A477E9A23EAB4CF5AAD2030E0A5E29F3329D2A6DED3A7542FFDD7CAB0812C975B9009504705C23DA820FD4F32F47A06719AF3E2ABB157942&amp;SigU=30E5D5233A443AB2371FC40AC1B78F909BEB7829C07470EE0E2DDD970A04A62D4E79D3FEAA1D637FA5319722DFA47393098C72280F532043E4DF8705DDFF84088D496514DFEC2F91" target="tencent"></a>  -->
						<!-- WPA Button Begin -->
					    <script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIwOTFfNDAwODg5NDUyMl8" ></script> 
						<!-- WPA Button End -->
				    	<!-- <iframe name="tencent" style="display:none"></iframe> -->
				    </li>
				    <li class="item item4" id="code2"><a href="javascript:void(0)"></a></li>
				    <li class="code"></li>
				    <li class="code2">
				       <p class="code2Text">服务热线</p>
	                   <p class="code2Text">400 889 4522</p>
				    </li>
				 </ul>
			</div>
        <!--右侧qq联系我们 End-->
        <script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODE4ODE2M18zODIyODFfNDAwODg5NDUyMl8"></script>
        <script>
			var setTime = setInterval(function(){
				if(window.frames[1]){
					window.frames[1].document.body.style.opacity="0";
					window.frames[1].document.body.style.display= "none";
					clearInterval(setTime);
					
				}
			});
			function  showClick(){
				window.frames[1].document.getElementById('launchBtn').click();
			}
			
			$(function(){
				window.frames[1]
			})
		</script>
</body>
</html>