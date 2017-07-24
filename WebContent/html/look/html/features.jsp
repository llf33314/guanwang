<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>功能展示</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../css/manner.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
    <script type="text/javascript">
        var access_num = 1;
    </script>
</head>
<body>
<%@include file="/html/look/html/common/banner.jsp" %>
<div id="myContainer" class="gt-mouse-scroll">
    <div class="section" id="section0" style="background: -webkit-gradient(linear, 0% 25%, 75% 100%, from(#cd5676), to(#938fcb));">
        <div class="m-fun-banner">
            <h1 class="m-fun-banner-h1 mated1 infinite fadeInUp">美容美发-样子</h1>
            <p class="mated2 infinite fadeInUp">营销、服务、管理三大功能合而为一，网罗更多生意，迅速提升营业额 </p>
            <div class="xt"></div>
        </div>
    </div>
    <div class="section" id="section1" style="background: -webkit-gradient(linear, 0% 25%, 75% 100%, from(#cd5676), to(#938fcb));">
        <div class="m-fun-erp">
            <h2 class="m-fun-erp-h2 animated" style="opacity: 0;" id="e1">极具智慧的SaaS ERP系统，数据自动整合</h2>
            <p id="e2" class="animated" style="opacity: 0;">营业额统计，会员卡统计，商品销售统计等各种金额统计及数据报表一应俱全</p>
            <div class="m-fun-erp-box animated" style="opacity: 0;">
                <img src="../images/fun2.png" id="fun2" class="animated" style="opacity: 0;">
                <div class="xa">
                    <div class="xab"></div>
                </div>
                <img src="../images/fun5.png" id="fun5" class="animated" style="opacity: 0;">
                <img src="../images/fun6.png" id="fun6" class="animated" style="opacity: 0;">
                <img src="../images/fun7.png" id="fun7" class="animated" style="opacity: 0;">
            </div>
        </div>
    </div>
    <div class="section" id="section2">
        <div class="m-servic">
            <div class="m-servic-l animated" style="opacity: 0;">
                <div class="m-servic-l-box">
                    <ul class="servic-box-title">
                        <li class="clicked" onclick="gtXcmHy(1,this)" style="margin-top:150px;">服务开单</li>
                        <li onclick="gtXcmHy(2,this)">员工管理</li>
                    </ul>
                    <img src="../images/fun8.png" id="gtXcmHy1">
                    <img src="../images/fun9.png" id="gtXcmHy2" style="display:none">
                </div>
            </div>
            <div class="m-servic-r animated" style="opacity: 0;">
                <h3 class="m-s-r-h3">降低成本，提高效率</h3>
                <span class="ser-bom"></span>
                <p>服务开单、预约管理、会员管理、员工管理、线上线下库存统一管理，一套样子SaaS ERP系统全部帮你实现</p>
                <div class="ser-box">
                      <span>
                          <div class="m-s1" id="td1"></div>
                          <img src="../images/fun10.png">
                      </span>
                    <span>
                          <div class="m-s2" id="td2" style="display:none ;"></div>
                          <img src="../images/fun11.png">
                      </span>
                    <span>
                          <div class="m-s3" id="td3" style="display:none ;"></div>
                          <img src="../images/fun12.png">
                      </span>
                    <span>
                          <div class="m-s4" id="td4" style="display:none ;"></div>
                          <img src="../images/fun13.png">
                      </span>
                    <span>
                          <div class="m-s5" id="td5" style="display:none ;"></div>
                          <img src="../images/fun14.png">
                      </span>
                    <span>
                          <div class="m-s6" id="td6" style="display:none ;"></div>
                          <img src="../images/fun15.png">
                      </span>
                </div>
            </div>
        </div>
    </div>
    <div class="section" id="section3">
        <div class="m-setting">
            <div class="m-setting-l animated" style="opacity: 0;">
                <h3 class="m-s-r-h3">多角色账号权限设置，权责更清晰</h3>
                <span class="ser-bom"></span>
                <p>由商家定义角色，给每个角色赋予相应权限，系统自动记录该账号下的钱箱记录、提现操作记录等，权责更加清晰明了，方便门店的管理 </p>
            </div>
            <div class="m-setting-r animated" style="opacity: 0;">
                <img src="../images/fun16.png" style="width: 100%;">
            </div>
        </div>
    </div>
    <div class="section" id="section4">
        <div class="m-invoicing">
            <div class="m-invoicing-l animated" style="opacity: 0;">
                  <span>
	                  <img src="../images/fun17.png" id="in1">
	                  <img src="../images/fun18.png" id="in2" class="animated" style="opacity: 0;">
	                  <img src="../images/fun19.png" id="in3" class="animated" style="opacity: 0;">
	                  <img src="../images/fun20.png" id="in4" class="animated" style="opacity: 0;">
                  </span>
            </div>
            <div class="m-invoicing-r animated" style="opacity: 0;">
                <h3 class="m-s-r-h3">关联进销存系统，精准掌控商品库存</h3>
                <span class="ser-bom"></span>
                <p>可自由关联存销宝进销存系统，扫描条形码入库、出货。整合连锁门店的信息，库存数据互通互联，库存统一管理，精准掌控 </p>
            </div>
        </div>
    </div>
    <div class="section" id="section5">
        <div class="m-app">
            <div class="m-app-l animated" style="opacity: 0;">
                <h3 class="m-s-r-h3">样子小程序（APP）</h3>
                <span class="ser-bom"></span>
                <p>线上自助预约、专属商城、便捷支付、账户查询、拓展新客、会员营销门店展示、案例作品等，以顾客习惯的方式、开展美容美发行业的创意营销之路</p>
                <span>
                     <h4 class="app-h4">专属的线上门店，开启O2O模式</h4>
                     <p>打造专属美业店面自己的商城，通过实体店面+互联网的结合，帮助美容美发门店向O2O转型升级</p>
                 </span>
                <span>
                     <h4 class="app-h4">营销拓客，倍增利润</h4>
                     <p>样子小程序+微信+移动营销工具拓客营销、帮助美业店面进行会员营销、新客拓展等，真正实现利润倍增</p>
                 </span>
            </div>
            <div class="m-app-r animated" style="opacity: 0;">
                <img src="../images/fun21.png" id="app1">
                <img src="../images/fun22.png" id="app2">
                <img src="../images/fun23.png" id="app3">
            </div>
        </div>
    </div>
</div>

<script src="../js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.fullPage.min.js"></script>
<script src="../js/case.js"></script>
<script type="text/javascript">
    function gtXcmHy(id, t) {
        $(t).addClass('clicked').siblings('li').removeClass('clicked');
        $(t).parent('.servic-box-title').siblings('#gtXcmHy' + id).show().siblings(
            'img').hide();
    }
</script>
</body>
</html>