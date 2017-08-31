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
	      <li  ng-repeat="(index1,buspro1) in busproList" ><a href="javascript:void(0);" ng-click="locationCase(index1)" ng-bind="buspro1.proname" class="caseId"></a></li>
	   </ul>
	</div>
  </div>
<div class="a-case" style="margin-top: 1400px" id="caseShow">
	  <div class="a-case-big">
		  <div class="a-case-navigation">
			  <ul id="accordion" class="accordion">
				  <li>
					  <div class="a-link"  ng-click="onAAA();">所有类型</div>
				  </li>
				  <li ng-repeat="case in caseList" ng-if="caseList.length > 0">
						  <div class="link">{{case.classname}}<i class="iconfont fa-chevron-down">&#xe733;</i></div>
					  <ul class="submenu">
						  <li ng-repeat="case1 in case.cases" ng-click="updateCase(case1);" class="liStyle" id="case1.casedesc"><a href="javascript:void(0);">{{case1.casedesc}}</a></li>
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
				  <a href="" class="a-case-fl" ng-click="lastPage(index-1);">
					  <span class="a-case-fl a-case-t-bg"></span>
					  <em class="a-case-t-c">{{case4.casedesc}}</em>
				  </a>
				  <a href="" class="a-case-fr" ng-click="nextPage(index+1);">
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
//        var findUr = $("#accordion > li");
//		var liTop = findUr[findUr.length-1];
//		console.log($(liTop).position().top);
        var findHs = $(".a-case-ex-h2");
        var findHa = $(".caseId");

        for(var i=1 ; i < findHs.length-1 ; i++){
            if (scrollTop > ($(findHs[i]).position().top-80) && scrollTop < ($(findHs[i+1]).position().top-80)) {
               		 for(var j=0 ; j < findHa.length ; j++){
                         $(findHa[j]).removeAttr("style");
                     }
                    $(findHa[i]).attr("style","padding: 5px 15px; border-radius: 18px;color: #fff;background: #11CF7B;");
					break;
             }
             if ( scrollTop >($(findHs[findHs.length-1]).position().top-80)){
                 for(var j=0 ; j < findHa.length ; j++){
                     $(findHa[j]).removeAttr("style");
                 }
                 $(findHa[findHs.length-1]).attr("style","padding: 5px 15px; border-radius: 18px;color: #fff;background: #11CF7B;");
                 break;
			 }
        }
        if ($(".second-js-top").position().top == 0){
            $("#accordion").attr("style","max-height: 750px;margin-top: -23px;");
        }

//        if ( scrollTop < ($(findHs[findHs.length-1]).position().top+80)){
//            $("#accordion").attr("style","max-height: 750px; margin-top: -23px;");
//        }
        if (scrollTop < ($(findHs[1]).position().top-120)){
            for(var h=0 ; h < findHa.length ; h++){
                $(findHa[h]).removeAttr("style");
            }
            $(findHa[0]).attr("style","padding: 5px 15px; border-radius: 18px;color: #fff;background: #11CF7B;");
        }

        if ($(".second-js-top").position().top != 0) {
            $("#accordion").attr("style","max-height: 750px;margin-top: 30px auto 20px;");
        }
        if ( scrollTop >($(".footer").position().top-845)){
            $("#accordion").attr("style","max-height: 750px; margin-top: "+($(".footer").position().top-845)+"px;position: relative;");
        }else {
            $("#accordion").attr("style","max-height: 750px;margin-top: -23px;");
        }
    });
</script>
<!-- 底部区域 -->
<script src="../js/case.js"></script>
<script src="../js/thead.js"></script>
</body>
</html>