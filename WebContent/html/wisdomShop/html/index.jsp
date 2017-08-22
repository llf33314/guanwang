<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>智慧店铺</title>
    <link rel="stylesheet" href="/html/common/publicResource/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../css/wisdom.css" />
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="../font-wis/iconfont.css">
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
</head>

<body>
<!-- top -->
<%@include file="/html/common/clearfix.jsp" %>

<div class="a-floor-1">
    <h1 class="a-title">只要你有线下销售，那就用智慧店铺武装起来</h1>
    <p class="a-dps">再小的个体也可以使用，不用公众号一样搞得掂</p>
    <div class="content">
        <div class="left circle">
            <svg width="132" height="132" xmlns="http://www.w3.org/2000/svg">
                <circle id="backdrop" r="64" cy="66" cx="66" stroke-width="3" stroke="#b5eed7" fill="none" style="position: absolute;left: 0;"/>
                <circle id="progress" class="circle_bar" r="64" cy="60" cx="-71" stroke-linecap="round" stroke-width="4" stroke="#09c87a" fill="none" />
            </svg>
        </div>
        <div class="center">
            <img src="../images/a-floor1-a.png">
            <p>会员、优惠券等帮你拉客户、促业绩，</p>
            <p>魔盒、收银台帮你快速收银</p>
        </div>
        <div class="right circle">
            <svg width="132" height="132" xmlns="http://www.w3.org/2000/svg">
                <circle id="backdrop" r="64" cy="66" cx="66" stroke-width="3" stroke="#b5eed7" fill="none" style="position: absolute;left: 0;"/>
                <circle id="progress" class="circle_bar" r="64" cy="60" cx="-71" stroke-linecap="round" stroke-width="4" stroke="#09c87a" fill="none" />
            </svg>
        </div>
    </div>
</div>
<div class="a-floor-2 animated">
    <div class="a-floor-2-box">
         <div class="a-floor-2-l">
             <h2 class="a-floor-h2">你有这样的智慧店铺吗</h2>
             <p>让你的店铺有海陆空立体化营销的智慧，店铺获客、</p>
             <p>转化就这么简单</p>
         </div>
        <div class="a-floor-2-r container animated">
            <img src="../images/b-floor2.png" id="a-floor-pix1">
            <img src="../images/b-floor3.png" id="a-floor-pix2" >
            <img src="../images/b-floor4.png" id="a-floor-pix3" class="animated" style="opacity: 0;">
            <div class="xa animated fadeIn" style="opacity: 0;">
                <div class="xab"></div>
            </div>
            <span class="a-floor-txt1 counter animated" style="opacity: 0;">27689</span>
        </div>
    </div>
</div>
<div class="a-floor-3">
    <div class="a-floor-3-l">
        <img src="../images/a-floor3-1.png">
   </div>
    <div class="a-floor-3-r">
        <h2 class="a-floor-h2">来电眼</h2>
        <p>散客还是会员来电，系统一眼便知，做即懂营销又能</p>
        <p>识别身份的店铺</p>
    </div>

</div>
<div class="a-floor-4">
    <div class="a-floor-4-box">
        <div class="a-floor-4-l">
            <h2 class="a-floor-h2">多粉收银台，没有电脑也能智慧收银</h2>
            <p>自动识别散客、会员或者联盟卡会员消费，多粉魔盒还可以办理会员、派</p>
            <p>发优惠券、核销优惠券，免去没有双屏显示器扫码收费的烦恼</p>
        </div>
        <div class="a-floor-4-r">
            <img src="../images/a-floor4-1.png" id="a-floor-pix5">
            <img src="../images/a-floor4-2.png" id="a-floor-pix6">
            <img src="../images/a-floor4-3.png" id="a-floor-pix7">
            <img src="../images/a-floor4-4.png" id="a-floor-pix8">
        </div>
    </div>
</div>
<div class="a-floor-5">
    <h2 class="a-floor-h2-two">强大的功能，尽在智慧店铺</h2>
    <ul class="a-floor-5-box">
        <li>
            <i class="iconfont floor1">&#xe78b;</i>
            <p>来店</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe72f;</i>
            <p>会员</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe712;</i>
            <p>存销宝</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe711;</i>
            <p>收银台</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe70e;</i>
            <p>来电眼</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe703;</i>
            <p>优惠券</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe70b;</i>
            <p>摇一摇</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe723;</i>
            <p>小程序</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe726;</i>
            <p>线上商城</p>
        </li>
        <li>
            <i class="iconfont floor1">&#xe705;</i>
            <p>多粉魔盒</p>
        </li>
    </ul>
    <a href="http://duofriend.com/user/toregister.do" id="a-floor-a">免费体验</a>
</div>
<div class="a-floor-6">
    <h2 class="a-floor-h2-two" style="color: #333">更多的硬件支持，让你开店更轻松</h2>
    <ul class="a-floor-6-box">
        <li class="a-floor-6-box-li">
            <div class="a-floor-6-show1">
                <img src="../images/a-floor6-1.png">
            </div>
            <div class="a-floor-6-show2" style="display: none;">
                <img src="../images/a-floor-ewm1.png">
            </div>
            <p>多粉魔盒</p>
        </li>
        <li class="a-floor-6-box-li">
            <div class="a-floor-6-show1">
                <img src="../images/a-floor6-2.png">
            </div>
            <div class="a-floor-6-show2" style="display: none;">
                <img src="../images/a-floor-ewm2.png">
            </div>
            <p>来电眼</p>
        </li>
        <li class="a-floor-6-box-li">
            <div class="a-floor-6-show1">
                <img src="../images/a-floor6-3.png">
            </div>
            <div class="a-floor-6-show2" style="display: none;">
                <img src="../images/a-floor-ewm3.png">
            </div>
            <p>摇一摇</p>
        </li>
        <li class="a-floor-6-box-li">
            <div class="a-floor-6-show1">
                <img src="../images/a-floor6-4.png">
            </div>
            <div class="a-floor-6-show2" style="display: none;">
                <img src="../images/a-floor-ewm4.png">
            </div>
            <p>POS机</p>
        </li>
    </ul>
</div>
<%@include file="/html/common/footer.jsp" %>

<script src="../js/wisdom.js"></script>
<script src="../js/jquery.countup.min.js"></script>
<script src="../js/jquery.waypoints.min.js"></script>
<script src="../js/jquery.countup.js"></script>
<script>
    $('.a-floor-6-box-li').on('mouseenter',function(){
        $(this).find('.a-floor-6-show1').hide();
        $(this).find('.a-floor-6-show2').show();
    }).on('mouseleave',function(){
        $(this).find('.a-floor-6-show1').show();
        $(this).find('.a-floor-6-show2').hide();
    })
</script>
<script>
    //数字变化
    $('.counter').countUp();
</script>
</body>
</html>