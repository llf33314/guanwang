<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en" ng-app="goodtomApp">
<head>
    <meta charset="UTF-8">
	<title>微信营销案例_公众号_企业微信案例_多粉</title>
	<meta name="description"
		  content="多粉微信第三方开发平台，提供微信营销、小程序、微商城、H5游戏等功能开发及公众号代运营服务。"/>
    <link rel="stylesheet" type="text/css" href="../css/customer.css" />
	<link rel="stylesheet" type="text/css" href="../font-case/iconfont.css">
	<script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
	<script src="/html/common/publicResource/js/angularjs/angular.js"></script>
	<script src="/html/common/publicResource/js/angularjs/directives.js"></script>
	<script src="/html/case/js/caseController.js"></script>
	<script src="/html/case/js/caseService.js"></script>
</head>
<body class="body_display" ng-controller="case1Controller">
<!-- top -->
<%@include file="/html/common/clearfix1.jsp" %>

  <div style="width: 100%;" class="second-js-top">
	<div class="a-case-customer">
	   <ul class="a-case-customer-txt">
	      <li  ng-repeat="buspro1 in busproList"><a href="javascript:;">{{buspro1.proname}}</a></li>
	   </ul>
	</div>
  </div>
<div class="a-case">
	  <div class="a-case-big">
		  <div class="a-case-navigation">
			  <ul id="accordion" class="accordion">
				  <li>
					  <div class="a-link">所有类型</div>
				  </li>
				  <li ng-repeat="case in caseList">
					  <div class="link">{{case.classname}}<i class="iconfont fa-chevron-down">&#xe733;</i></div>
					  <ul class="submenu">
						  <li ng-repeat="case1 in case.cases"><a href="#">{{case1.casedesc}}</a></li>
					  </ul>
				  </li>
			  </ul>
		  </div>
		  <div class="a-case-exhibition-box">
				  <div class="a-case-exhibition">
					  <div class="a-case-ex-first" >
						  <div >
							   <h2 class="a-case-ex-h2">客户案例介绍</h2>
							   <p class="a-case-ex-p">酸奶小栈是台湾智然堂特色食品有限公司的合作商，主要现制现售：休闲手工酸奶、炒酸奶、炒酸奶冰淇淋、酸奶冰淇淋、刨酸奶、冻酸奶、巴士鲜奶、姜撞奶、春夏冬季热奶饮、现榨酸奶饮料、烘焙类糕点及其他甜品等系列产品</p>
							   <img src="../images/ca-se2.png">
						  </div>
						  <div>
							  <h2 class="a-case-ex-h2">微信营销</h2>
							  <p class="a-case-ex-p">酸奶小栈是台湾智然堂特色食品有限公司的合作商，主要现制现售：休闲手工酸奶、炒酸奶、炒酸奶冰淇淋、酸奶冰淇淋、刨酸奶、冻酸奶、巴士鲜奶、姜撞奶、春夏冬季热奶饮、现榨酸奶饮料、烘焙类糕点及其他甜品等系列产品</p>
							  <ul class="a-case-ex-first-ul">
								  <li>
									  <img src="../images/ca-se4.png">
								  </li>
								  <li>
									  <img src="../images/ca-se5.png">
								  </li>
								  <li>
									  <img src="../images/ca-se6.png">
								  </li>
							  </ul>
						  </div>
					  </div>

					  <ul class="a-case-ex-ewm">
						  <li>
							  <img src="../images/ca-ewm.png">
							  <p>酸奶小栈</p>
						  </li>
						  <li style="vertical-align: 50px;">
							  <p class="a-case-ex-ewm-p">扫一扫，关注！</p>
						  </li>
					  </ul>
			  </div>
			  <div class="a-case-page a-case-f-cb">
				  <a href="" class="a-case-fl">
					  <span class="a-case-fl a-case-t-bg"></span>
					  <em class="a-case-t-c">九九前</em>
				  </a>
				  <a href="" class="a-case-fr">
					  <span class="a-case-fr a-case-t-bg"></span>
					  <em class="a-case-t-c">羽礼后花园</em>
				  </a>
			  </div>
		  </div>
      </div>
</div>
<%@include file="/html/common/footer.jsp" %>
<input  type="hidden" id="aaa" value="0">

<!-- 底部区域 -->
<script src="../js/case.js"></script>
<script src="../js/thead.js"></script>
</body>
</html>