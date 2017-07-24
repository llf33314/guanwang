
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉套餐</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
<%@include file="/html/common/css.jsp"%>
<%@include file="/html/common/js.jsp"%>
<script type="text/javascript">
	//
	$(function() {
		$(window).scroll(function(event) {

			if ($(window).scrollTop() > 600) {

				$('.combo-title').css('position', 'fixed');
				$('.combo-title').css('top', '500');
				$('.combo-title').css('z-index', '888');
				// 
			} else {
				$('.combo-title').css('position', 'absolute');
				$('.combo-title').css('top', '0px');
				$('.combo-title').css('z-index', '12')
			}

		});
	})
</script>
<link rel="stylesheet" href="/html/css/setMeal.css" />
</head>

<body>
	<div class="wrap index">
		<%@include file="/html/common/clearfix.jsp"%>


		<div id="banner" class="focusad">
			<ul>
				<li><a href="#"> <img src="/html/images/fans/setMeal.png">
				</a></li>
			</ul>
		</div>

		<div class="combo-container">
			<!--中间内容-->
			<div style='height: 62px; position: relative; margin-top: 100px;'>
				<table class="combo-title">

					<th>代运营套餐</th>
					<th>简易版</th>
					<th>基础版</th>
					<th>商务版</th>
					<th>旗舰版</th>
					<th>卓越版</th>
					<th>专享版</th>
					<th>尊享版</th>
					<th>运营托管战略合作</th>

				</table>
			</div>

			<table class="main-table" border="1">
				<tboby>
				<tr class="combo-item">
					<td style='color: #333'>版本价格</td>
					<td class="right-cancel">600元/年</td>
					<td class="right-cancel">3000元/年</td>
					<td class="right-cancel">6000元/年</td>
					<td class="right-cancel">1万元/年</td>
					<td class="right-cancel">3万元/年</td>
					<td class="right-cancel">10万元/年</td>
					<td class="right-cancel">20万元/年</td>
					<td class="right-cancel">30万元/年</td>
				</tr>
				<tr class="combo-item">
					<td>帐号认证加V</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>多地图标识</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>运营反馈活动</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">4次</td>
					<td class="right-cancel">4次</td>
					<td class="right-cancel">6次</td>
					<td class="right-cancel">6次</td>
					<td class="right-cancel">12次</td>
					<td class="right-cancel">12次</td>
					<td class="right-cancel">12次</td>
				</tr>
				<tr class="combo-item">
					<td>图文推送</td>
					<td class="right-cancel">24次</td>
					<td class="right-cancel">48次</td>
					<td class="right-cancel">48次</td>
					<td class="right-cancel">48次</td>
					<td class="right-cancel">48次</td>
					<td class="right-cancel">48次</td>
					<td class="right-cancel">48次</td>
					<td class="right-cancel">48次</td>
				</tr>
				<tr class="combo-item">
					<td>粉丝分类管理</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>线上活动策划</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">4次</td>
					<td class="right-cancel">5次</td>
					<td class="right-cancel">6次</td>
					<td class="right-cancel">7次</td>
				</tr>
				<tr class="combo-item">
					<td>图片优化处理</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">6次</td>
					<td class="right-cancel">8次</td>
					<td class="right-cancel">10次</td>
					<td class="right-cancel">12次</td>
					<td class="right-cancel">14次</td>
					<td class="right-cancel">16次</td>
					<td class="right-cancel">18次</td>
				</tr>
				<tr class="combo-item">
					<td>线上活动执行</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">4次</td>
				</tr>
				<tr class="combo-item">
					<td>推送风格更新</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>舆情分析</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>

				<tr class="combo-item">
					<td>专业培训课程</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">4次</td>
				</tr>
				<tr class="combo-item">
					<td>现场活动策划</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">4次</td>
				</tr>
				<tr class="combo-item">
					<td>
						<p>优惠券商城</p>
						<p>（免费发布）</p>
					</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
				</tr>

				<tr class="combo-item">
					<td>

						<p>商家联盟</p>
						<p>（推荐加入）</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>

						<p>行业ERP系统应用</p>
						<p>（培训）</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>

						<p>粉巢系统应用</p>
						<p>（专项培训）</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>

						<p>行业模块</p>
						<p>微信小程序（APP）</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>

						<p>官方（微博，</p>
						<p>自媒体推广同步）</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>功能优化</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item"> 
					<td>原创图文推送</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
						<p>新品发布（广告标</p>
						<p>语专项策划）</p>
					</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
				</tr>
				<tr class="combo-item">
					<td>
					<p>品牌活动场地提供</p>
					<p>（80人、惠州）</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
			     <tr class="combo-item">
					<td>
					广告位曝光
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				 <tr class="combo-item">
					<td>
				留言回复
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				 <tr class="combo-item">
					<td>
					原创功能开通
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
				       现场活动执行
					</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">1次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
				</tr>
				<tr class="combo-item">
					<td>
				       上门授课
					</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">一</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">2次</td>
					<td class="right-cancel">3次</td>
					<td class="right-cancel">3次</td>
				</tr>
				<tr class="combo-item">
					<td>
					<p>总经理（GM）</p>
					<p>接见</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
					<p>微视频营销</p>
					<p>策划推广</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
					合作分成
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
					驻点调研
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
					<p>总裁（CEO）</p>
					<p>接见</p>
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
				互联网营销协助
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<tr class="combo-item">
					<td>
					需求定制开发
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
						<tr class="combo-item">
					<td>
					团队承包
					</td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealclose.png" alt=""></td>
					<td class="right-cancel"><img
						src="/html/images/fans/setMealright.png" alt=""></td>
				</tr>
				<!--///////////////////////////////////////////////////--> </tboby>

			</table>
			<br>
			<div class="combo-user">

				<button>
					<a href="javascript:showClick(2);">立即咨询</a>
				</button>
			</div>

			<!--中间内容-->
		</div>


		<!--底部-->
		<%@include file="/html/common/footer.jsp"%>
		<!--底部-->
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

