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
	      <li  ng-repeat="(index1,buspro1) in busproList" ><a href="javascript:;" ng-click="locationCase(index1)">{{buspro1.proname}}</a></li>
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
						  <li ng-repeat="case1 in case.cases" ng-click="updateCase(case1);"><a href="#">{{case1.casedesc}}</a></li>
					  </ul>
				  </li>
			  </ul>
		  </div>
		  <div class="a-case-exhibition-box">
				  <div class="a-case-exhibition">
					  <div class="a-case-ex-first" ng-repeat="buspro2 in busproList">
						  <div ng-if="buspro2.pics.length < 150" class="a-case-ex-first">
							   <h2 class="a-case-ex-h2">{{buspro2.proname}}</h2>
							   <p class="a-case-ex-p">{{buspro2.description}}</p>
							   <img src="{{buspro2.pics}}" class="a-case-ex-first-img1">
						  </div>
						  <div ng-if="buspro2.pics.length > 150" class="a-case-ex-first" >
							  <h2 class="a-case-ex-h2">{{buspro2.proname}}</h2>
							  <p class="a-case-ex-p">{{buspro2.description}}</p>
							  <ul class="a-case-ex-first-ul">
								  <li ng-repeat="buspro3 in chuliImg(buspro2.pics)" class="a-case-ex-first-ul-smallbox">
									  <img src="{{buspro3}}" class="a-case-ex-first-img2">
								  </li>
								  <%--<li>--%>
									  <%--<img src="../images/ca-se5.png">--%>
								  <%--</li>--%>
								  <%--<li>--%>
									  <%--<img src="../images/ca-se6.png">--%>
								  <%--</li>--%>
							  </ul>
						  </div>
					  </div>

					  <ul class="a-case-ex-ewm">
						  <li>
							  <img src="{{case3.qrcode}}">
							  <p>{{case3.casedesc}}</p>
						  </li>
						  <li style="vertical-align: 50px;">
							  <p class="a-case-ex-ewm-p">扫一扫，关注！</p>
						  </li>
					  </ul>
			  </div>
			  <div class="a-case-page a-case-f-cb">
				  <a href="" class="a-case-fl" ng-click="lastPage();">
					  <span class="a-case-fl a-case-t-bg"></span>
					  <em class="a-case-t-c">{{case4.casedesc}}</em>
				  </a>
				  <a href="" class="a-case-fr">
					  <span class="a-case-fr a-case-t-bg"></span>
					  <em class="a-case-t-c">{{case5.casedesc}}</em>
				  </a>
			  </div>
		  </div>
      </div>
</div>
<%@include file="/html/common/footer.jsp" %>
<input  type="hidden" id="aaa" value="0">
<script>
    $(".rightIcon").on("click",".ri1",function(){
        $("html,body").animate({"scrollTop":0},500);
    })

	/*页面右侧信息*/
    //超过一定高度时， 显示返回顶部按钮
    $(window).scroll(function() {
        var scrollTop =  document.body.scrollTop || document.documentElement.scrollTop;
        if (scrollTop > 200) {
            $('.ri1').show();
        }
        else {
            $('.ri1').hide();
        }
    });
</script>
<!-- 底部区域 -->
<script src="../js/case.js"></script>
<script src="../js/thead.js"></script>
</body>
</html>