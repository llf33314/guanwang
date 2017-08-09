<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉--连接粉丝、连接世界，提供微信营销的第三方开发平台！</title>

<meta name="keywords"
	content="微营销,微信营销,微信代运营,微信定制开发,微信营销软件,微信推广平台,微信营销平台,微信代运营套餐,智慧酒店" />
<meta name="description"
	content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微餐饮、微会员、微商城、微活动、微预约、微分销、微信开锁等微信功能开发及微信代运营服务，助力企业全面开启微营销！" />
<%@include file="/html/common/cmm_css.jsp"%>
<%@include file="/html/common/js.jsp"%>


<script type="text/javascript">
        var imgStaUrl = "${imageUrl}";
        var busCount = eval('(' + '${busCount}' + ')');
    </script>

<script type="text/javascript">
        $(function () {
            
        })
    </script>

<link rel="stylesheet" href="/html/css/fans.css">
<script src="/html/js/ifont.js"></script>

</head>

<body>
<%@include file="/html/common/clearfix.jsp" %>
	<div class="successBox">

		<div class="successBoxdiv">
			<svg class="icon successBox-icon" aria-hidden="true">
        <use xlink:href="#icon-103"></use>
    </svg>
			<h2 class="successBox-h1">您已经成功付款</h2>
		</div>

		<div class="successBox2">
			<div>

				<span>您购买的套餐为</span> <span style="color: #73acee">${info.typename }</span> <span
					style="margin-left: 35px;">实付金额为</span> <span
					style="color: #73acee">${info.price }元</span>
			</div>
			<div>
				<svg class="icon successBox-icon2 " aria-hidden="true">
                <use xlink:href="#icon-gantanhao11-copy"></use>
            </svg>
				<p>请您保持电话畅通，专属客服已收到您的资料，即将为您开通账号。</p>
				<p>客户服务热线：400 889 4522</p>
			</div>
		</div>


	</div>
	<%@include file="/html/common/footer.jsp" %>
</body>

</html>
