<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>创业计划</title>
    <link rel="stylesheet" type="text/css" href="../css/plan.css" />
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
</head>
<body>
<%@include file="/html/common/clearfix.jsp" %>
<div class="a-plan">
    <div class="a-plan-banner"></div>
    <div class="a-plan-banner-box">
         <h1>创业计划</h1>
         <p>欢迎了解多粉的创业计划，多粉创业计划是为众多对移动互联网技术有追求有梦想的人提供一个<span style="color:#2D8DFD;">创业计划平台，</span>由多粉提供技术输出，为创业者提供经营帮助，最终实现利润回报！</p>
    </div>
</div>
<div class="a-plan-second">
    <div class="a-plan-introduction">
        <div class="a-plan-introduction-pix">
            <img src="../images/plan3.png">
        </div>
        <div>
            <h2 class="a-plan-h2">商家联盟卡创业经营</h2>
            <p>商家联盟是帮助商家之间组成消费联盟，实施各种联盟卡的售卖与优惠政策活动的策划，创业者通过收取商家联盟的运营费用、各个商家的技术使用费用，从而获取经营利润！</p>
            <p style="margin-top: 35px;">商家联盟卡的发行冠名可以是商家联盟盟主自命名，也可以由创业者自有名称命名从而形成自有“品牌”联盟卡！</p>
            <p style="margin-top: 35px;">在信息共享与移动互联的时代，商家之间只有资源共享携手合作才能共赢未来！</p>
            <div class="a-plan-cooperation">
                <h2 class="a-plan-h2">合作方式</h2>
                <p>1、创业者自营，可一次性向多粉买断技术或按年缴技术费用</p>
                <p>2、创业者代理多粉技术，技术费用双方分成，运营费用全归创业者</p>
            </div>
        </div>
    </div>
</div>
<div class="a-plan-region">
     <img src="../images/plan4.png" class="a-plan-region-pix">
     <h3>多粉创业计划，助力创业梦想者腾飞</h3>
</div>
<div class="a-plan-second" style="background: #f8f8f8;">
    <div class="a-plan-introduction">
        <div class="a-plan-introduction-pix">
            <img src="../images/plan3.png">
        </div>
        <div>
            <h2 class="a-plan-h2">智慧酒店创业经营</h2>
            <p>现有酒店系统的入住体验达不到年轻人以及这个信息时代的要求，智慧酒店1.0版本实现手机订房（与酒店PMS系统同步）、手机自助入住、手机开门、微信早餐券、月饼券等智慧功能，打造成为年轻人喜爱的酒店</p>
            <div class="a-plan-cooperation">
                <h2 class="a-plan-h2">合作方式</h2>
                <p>1、由创业者利用多粉提供的技术改造酒店系统、酒店门锁、制房卡系统，免费帮助酒店改造更换门锁设备，改造后创业者与酒店进行房              费分成的方式经营，同时收取酒店运营费用与其他增值服务费，实现经营利润</p>
                <p>2、创业者代理多粉技术，技术费用双方分成，运营费用全归创业者</p>
                <p>3、创业者买断多粉技术年限</p>
            </div>
        </div>
    </div>
</div>
<div class="a-plan-second">
    <div class="a-plan-introduction">
        <div class="a-plan-introduction-pix">
            <img src="../images/plan3.png">
        </div>
        <div>
            <h2 class="a-plan-h2">提交合作意愿</h2>
            <ul class="a-plan-desire">
                <li>
                    <img src="../images/plan5.png">
                    <p>刘总监</p>
                    <p>项目合作负责人</p>
                </li>
                <li>
                    <img src="../images/plan6.png">
                    <p>18026538466 </p>
                    <p>咨询电话</p>
                </li>
                <li>
                    <img src="../images/plan7.png">
                    <p>2881496574</p>
                    <p>QQ</p>
                </li>
                <li class="a-plan-li">
                    <div class="a-plan-show1">
                        <img src="../images/plan8.png">
                        <p>duofriend</p>
                        <p>微信</p>
                    </div>
                    <div class="a-plan-show2"  style="display: none;">
                        <img src="../images/plan9.png">
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<%@include file="/html/common/footer.jsp" %>

<script>
    $('.a-plan-li').on('mouseenter',function(){
        $(this).find('.a-plan-show1').hide();
        $(this).find('.a-plan-show2').show();
    }).on('mouseleave',function(){
        $(this).find('.a-plan-show1').show();
        $(this).find('.a-plan-show2').hide();
    })
</script>

</body>
</html>