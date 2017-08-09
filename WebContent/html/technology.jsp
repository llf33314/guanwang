<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>技术服务商</title>

    <link rel="stylesheet" href="/html/css/style.css"/>
    <link rel="stylesheet" href="/html/css/basic.css"/>
    <link rel="stylesheet" href="/html/css/technology.css"/>
	
    <script type="text/javascript" src="./js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="./js/web_slide.js"></script>
    <script type="text/javascript" src="./js/webJS.js"></script>
    <script type="text/javascript" src="/html/js/baidu-bus.js"></script>
    <%@include file="/html/common/cmm_css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $("#banner").slideLx({"height": 434}); 
        })
    </script>
    <style type="text/css">
	.bottom-span{
	       vertical-align: super;
	    margin-right: 30px;
	}
	.bottom-img{
	  margin: 0 8px;
	}
	.bottom {
	    margin: 80px auto;
	    width: 390px;
	    border: 1px solid #97dbff;
	    border-radius: 25px;
	   padding: 5px;
	} 
	.bottom-span:nth-of-type(2) {
	    vertical-align: super;
	    margin-right: 0;
	}
	</style>
</head>

<body>
<div class="wrap index ">
    <%@include file="/html/common/clearfix.jsp" %>


    <img class="technoleage_banner" src="${imageUrl}/technology/technoleage_banner.png" alt="">
    <div class="containter">
        <!--中间内容-->
        <div class="what_technology">
            <div class="what_technology_title">
                <p>什么是多粉技术服务商？</p>
                <span>特指结合多粉开放平台接口，进行产品功能对接开发，或与多粉合作为客户提供产品功能服务的第三方。</span>
            </div>
            <div class="what_technology_wraplist">
                <ul class="clear">
                    <li class="fr technoleage_part_li">
                        <img src="${imageUrl}/technology/technoleage_part3.png" alt="">
                        <p>我们将提供丰富的API接口，涵盖多粉众多核心产品功能，为商家客户提供各类应用，解决供应链管理、店铺管理、营销推广等方面的问题。</p>
                    </li>

                    <li class="fr technoleage_part_li">
                        <img src="${imageUrl}/technology/technoleage_part2.png" alt="">
                        <p>多粉开放平台将以API的形式开放各类产品功能接口，与各类软件公司、技术开发公司、优秀个人开发者，共同打造一个优质的微信营销生态
                            圈。</p>
                    </li>

                    <li class="fr technoleage_part_li">
                        <img src="${imageUrl}/technology/technoleage_part1.png" alt="">
                        <p>
                            多粉是专业的微信第三方开发平台，现全面开展技术服务商合作计划，通过多粉开放平台，与优秀的第三方合作伙伴共享多粉的客户资源和代理商资源，为客户打造更加强大的微信营销产品功能及行业解决方案。</p>
                    </li>

                </ul> 
            </div>
               <div class="technoleage_container">
            <img class="technoleage_middle_poster" src="${imageUrl}/technology/technoleage_middle_poster.png" alt="">
              <div class="desccbtion-middle">如果您是富有企业信息系统开发经验的传统软件厂商，您可以基于多粉开放平台为商家提供ERP、CRM等方面的软件服务。</div></div>
            <div class="technoleage_icon clearfix">
                <div class="fl technoleage_icon_left">
                    <p>如果你的软件种类包括，但不限于如下：</p>
                    <ul class="clearfix">
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_1.png" alt="">
                            <p>汽车服务</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_2.png" alt="">
                            <p>财务管理</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_3.png" alt="">
                            <p>移动办公</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_4.png" alt="">
                            <p>电商ERP</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_5.png" alt="">
                            <p>物流信息</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_6.png" alt="">
                            <p>H5游戏开发</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_7.png" alt="">
                            <p>餐饮管理</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_8.png" alt="">
                            <p>酒店管理</p>
                        </li>
                        <li class="fl">
                            <img src="${imageUrl}/technology/technoleage_9.png" alt="">
                            <p>信息系统</p>
                        </li>
                    </ul>
                </div> 
                <div class="fr technoleage_icon_right">
                    <img src="${imageUrl}/technology/technoleage_right_poster.png" alt="">
                   
                </div>
            </div>
        </div>
          <div class="resource_technology">
             <p>我们的资源</p>
              <span>特指结合多粉开放平台接口，进行产品功能对接开发，或与多粉合作为客户提供产品功能服务的第三方。</span>
                 <div class="technolote_bottom">
              <img src="${imageUrl}/technology/technoleage_bottom_poster.png" alt="">
                    <div class='detail-bottom db1'>技术团队</div>
                    <div class='detail-bottom db2'>运营团队</div>
                    <div class='detail-bottom db3'>设计团队</div>
                    <div class='detail-bottom db4'>服务团队</div>
                    <div class='detail-bottom db5'>销售渠道</div>
                    <div class='detail-bottom db6'>优秀平台</div>
                   
                    <!-- 描述 --> 
                    <div class='detail-bottom-desc desc1'>在惠州和深圳均有多粉的产品研发中心、技术过硬</div>
                    <div class='detail-bottom-desc desc2'>具有多年移动营销经验的微信运营团队</div>
                    <div class='detail-bottom-desc desc3'>富有设计经验的团队、美工高手云集</div>
                    <div class='detail-bottom-desc desc4'>具有强烈责任感的服务中心和客服中心</div>
                    <div class='detail-bottom-desc desc5'>拥有23间分公司、销售渠道丰富、众多代理商</div>
                    <div class='detail-bottom-desc desc6'>系统稳定、速度一流、用户体验好</div>
                   
                 </div>
              <!-- <div class='rightNowJoin' onclick="showBaiduBus();"><a href="javascript:void(0);" style="color: white;">电话</a></div> -->
          </div>

        <!--中间内容-->
    </div>

<div class='bottom' onclick="showClick(2);">
<img class='bottom-img' src="${imageUrl}/hzzj/hezuo1.png"/>
<span class='bottom-span'>联系人：黄总监 </span>
<img class='bottom-img' src="${imageUrl}/hzzj/tianhua1.png"/>
<span class='bottom-span'>合作热线：18026496113</span>
</div> 

    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
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

