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
		background: #333;
		bottom: 0;
		display: block;
		position: relative;
		z-index: 1;
	}
	.gt-foot a{
		text-decoration: none;
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
		border-right: 1px solid #fff;
	}
	.gt-foot .gt-foot-box ul li a {
		color: #fff;
		font-size: 14px;
		text-decoration: none;
	}
	.gt-foot .gt-foot-box ul li a:hover {
		color: #fff;
	}
	.gt-foot h4 {
		font-size: 14px;
		line-height: 50px;
		color: #fff;
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
	.gt-foot .gt_tck{cursor: pointer;}

	.gt_window .gt_bg{position: fixed; top: 0;left: 0;width: 100%;height: 100%;background-color: #000;opacity: 0.5;filter:alpha(opactiy=50);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=50); z-index: 47483647}
	.gt_window .gt_cont{position: fixed;z-index: 47483648; top:50%;left: 50%;}
	.gt_window .gt_cont .gt_close{position: absolute; top: -30px;right: -30px}
</style>
<div class="gt-foot">
	<div class="gt-foot-box">
		<ul>
			<li><a href="/html/aboutUs/html/index.jsp?type=1" target="_blank">关于我们</a></li>
			<li><a href="/html/agency/html/index.jsp" target="_blank">申请代理</a></li>
			<li><a href="/html/instructions.jsp" target="_blank">使用指南</a></li>
			<li style="border: none;">
				<div id="wxImg" style="display: none; bottom: 65px; left: 100px; height: 50px; back-ground: #f00; position: absolute;">
					<img src="/html/images/common/code.png" width="118px" height="118px" alt="" />
				</div>
				<a href="javascript:void(0)" onMouseOut="hideImg()" onmouseover="showImg()">关注多粉</a>
			</li>
		</ul>
	</div>
	<span class="gt-foot-body">
		<h4>服务热线:&nbsp;&nbsp;400&nbsp; 889 &nbsp;4522</h4>
		<div class="copyright tc" style="font-size: 12px; color: #6E6F6F;">
              <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44130202000473" target="_blank" style="color: #6E6F6F;">粤公网安备 44130202000473号</a>&nbsp;&nbsp;&nbsp;<img src="/images/pafoot.png" style="width: 18px;">&nbsp;&nbsp;
             粤ICP备15016183号-3&nbsp;&nbsp;<span class="gt_tck" data-url="${imageUrl}/xkz1.jpg" data-zoom="400,568">经营许可证编号：全国B2-20160778</span>&nbsp;&nbsp;&nbsp;<span class="gt_tck" data-url="${imageUrl}/xkz2.jpg" data-zoom="400,577">粤B2-20150533</span><br/>
             Copyright © 2013-2017 duofriend. All Rights Reserved.  广东谷通科技有限公司<br/>
              <span class="gt_tck" data-url="${imageUrl}/xkz3.jpg" data-zoom="600,380">法律顾问</span>
         </div>
	</span>
</div>

<script type="text/javascript">
    function showImg() {
        document.getElementById("wxImg").style.display = 'block';
    }
    function hideImg() {
        document.getElementById("wxImg").style.display = 'none';
    }
    var webjs = null,
        screenW = $(window).width(),
        screenh = $(window).height(),
        userAgent = window.navigator.userAgent.toLowerCase(),
        footh = 373;
    $(".copyright").find(".gt_tck").click(function(){
        var _html = "",url = $(this).attr("data-url"),zoom = $(this).attr("data-zoom").split(",");
        var _t = (screenh - zoom[1])/2;
        var _l = (screenW - zoom[0])/2;
        _html = _html + '<div class="gt_window">';
        _html = _html + '<div class="gt_bg"></div>';
        _html = _html + '<div class="gt_cont" style="top:'+_t+'px;left:'+_l+'px;">';
        _html = _html + '<img src="'+url+'">';
        _html = _html + '<a href="javascript:;" class="gt_close"><img src="http://maint.duofriend.com/upload/image/websiteUpload/close.png"/></a>';
        _html = _html + '</div>';
        _html = _html + '</div>';
        $("body").append(_html);
    });
    $("body").on("click",".gt_close",function(){
        $(".gt_window").remove();
    })
</script>
