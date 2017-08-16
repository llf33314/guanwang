<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?14a62041b4de52f2586d283b14d1175c";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<style>
	/* 底部*/
	.gt-foot {
		height: 212px;
		width: 100%;
		margin: 0 auto;
		background: #f8f8f8;
		bottom: 0;
		display: block;
		position: relative;
		z-index: 1;
	}
	.gt-foot .gt-foot-box ul {
		width: 700px;
		margin: 0 auto;
		display: block;
		padding-top: 30px;
		text-align: center;
	}
	.gt-foot .gt-foot-box ul li {
		position: relative;
		display: inline-block;
		width: 100px;
		height: 12px;
		line-height: 10px;
		padding-left: 34px;
		text-align: left;
		margin-bottom: 25px;
		list-style-type: none;
		border-right: 1px solid #393939;
	}
	.gt-foot .gt-foot-box ul li a {
		color: #393939;
		font-size: 14px;
		text-decoration: none;
	}
	.gt-foot .gt-foot-box ul li a:hover {
		color: #000;
	}
	.gt-foot h4 {
		font-size: 14px;
		line-height: 50px;
		color: #393939;
		font-weight: normal;
	}
	.gt-foot .gt-foot-body {
		text-align: center;
		line-height: 22px;
		font-size: 14px;
		color: #b5b5b5;
	}
	#ban {
		cursor: pointer;
		transition: all 1.6s;
	}
	#ban:hover {
		transform: scale(1.1);
	}
</style>
<div class="gt-foot">
	<div class="gt-foot-box">
		<ul>
			<li><a href="/html/aboutUs.jsp">关于我们</a></li>
			<li><a href="/html/co_convened.jsp">申请代理</a></li>
			<li><a href="/html/instructions.jsp">使用指南</a></li>
			<li style="border: none;">
				<div id="wxImg"
					style="display: none; bottom: 65px; left: 100px; height: 50px; back-ground: #f00; position: absolute;">
					<img src="/html/images/common/code.png" width="118px" height="118px" alt="" />
				</div> <a href="javascript:void(0)" onMouseOut="hideImg()"
				onmouseover="showImg()">关注多粉</a>
			</li>
		</ul>
	</div>
	<span class="gt-foot-body">
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
