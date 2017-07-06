<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sj-foot">
	<div class="sj-foot-box">
		<ul>
			<li><a href="/html/aboutUs.jsp">关于我们</a></li>
			<li><a href="/html/co_convened.jsp">申请代理</a></li>
			<li><a href="/html/instructions.jsp">使用指南</a></li>
			<li style="border: none;">
				<div id="wxImg"
					style="display: none; bottom: 65px; left: 100px; height: 50px; back-ground: #f00; position: absolute;">
					<img src="../img/code.png" width="118px" height="118px" alt="" />
				</div> <a href="javascript:void(0)" onMouseOut="hideImg()"
				onmouseover="showImg()">关注多粉</a>
			</li>
		</ul>
	</div>
	<span class="sj-foot-body">
		<h4>服务热线:400 889 4522</h4>
		<p>Copyright © 2013-2016 duofriend. All Rights Reserved.
			粤ICP备15016183号-3 经营许可证编号：全国B2-20160778 粤B2-20150533</p>
		<p>广东谷通科技有限公司</p>
	</span>
</div>

<script type="text/javascript">
	function showImg() {
		document.getElementById("wxImg").style.display = 'block';
	}
	function hideImg() {
		document.getElementById("wxImg").style.display = 'none';
	}
</script>
