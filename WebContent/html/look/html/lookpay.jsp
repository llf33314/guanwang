<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>购买</title>
    <link rel="stylesheet" href="../css/man.css" />
    <script src="../js/jquery-2.2.2.min.js"></script>
    <script src="../js/iconfont.js"></script>
    <script src="/js/webSite.js"></script>
    <script src="../js/_index.js"></script>
    <script type="text/javascript">
        var access_num = 4;
    </script>
</head>
<body>
<div class="pu-head">
    <div id="canvas" class="gradient"></div>
    <div class="car-top">
        <div class="car-top-box">
            <div class="car-top-title">样子<span class="car-top-txt">· 美容美发</span></div>
            <a href="/" class="car-top-station">返回主站</a>
            <div class="car-top-menu">
                <a href="/html/look/html/index.jsp" data-num="0">首页</a>
                <a href="/html/look/html/features.jsp" data-num="1">功能展示</a>
                <a href="/html/look/html/case.jsp" data-num="2">品牌案例</a>
                <a href="/html/co_convened.jsp" data-num="3">申请代理</a>
            </div>
            <div class="car-top-service">
                <a href="http://duofriend.com/user/toregister.do">免费体验</a>
                <a href="http://yangzi.duofriend.com/login/login.do" class="car-top-service-login" class="car-top-service-login">登录</a>
                <a href="/html/look/html/lookpay.jsp" data-num="4" class="sp">购买</a>
            </div>
        </div>
    </div>
    <h1 class="pu-top-h1" ><img src="../images/paytitle.png" /></h1>
    <p class="pu-top-p">聚焦行业解决方案 助力企业创新发展</p>
</div>
<div class="package-wrap">
    <div class="content-wrap clearfix" id="meal_set">
        <div class="item-wrap" id="item1" style=" border-right: 0;">
            <div class="item-main-wrap">
                <div class="top-wrap" style="background: #0DE9B3;">
                    <div class="desc">高级版</div>
                    <div class="price"><span>2580</span>元/年</div>
                </div>
                <div class="cont-wrap">
                    <ul class="clearfix">
                        <li><span><img src="../images/g1.png" /></span>样子ERP（2店版） </li>
                        <li><span><img src="../images/g1.png" /></span>店员端小程序</li>
                        <li><span><img src="../images/g1.png" /></span>老板端小程序</li>
                        <li><span><img src="../images/g1.png" /></span>免费派券渠道</li>
                        <li><span><img src="../images/g1.png" /></span>公众号管理</li>
                        <li><span><img src="../images/g1.png" /></span>行业版应用</li>
                        <li><span><img src="../images/g1.png" /></span>会员系统</li>
                        <li><span><img src="../images/g1.png" /></span>收银台</li>
                        <li><span><img src="../images/g1.png" /></span>优惠券</li>
                        <li><span><img src="../images/g1.png" /></span>微商城</li>
                        <li><span><img src="../images/g1.png" /></span>分销系统</li>
                        <li><span><img src="../images/g1.png" /></span>推广工具</li>
                        <li><span><img src="../images/g1.png" /></span>存销宝（2店多账号）</li>
                        <li><span><img src="../images/g1.png" /></span>免费的收银硬件支持</li>
                        <li><span><img src="../images/g1.png" /></span>H5互动游戏（10套）</li>
                        <li><span><img src="../images/g1.png" /></span>粉巢系统（1套模板）</li>

                    </ul>
                    <a href="javascript:;" class="base_abtn" id="cont-a" onclick="pay(3)">立刻购买</a>
                </div>
            </div>
        </div>
        <div class="item-wrap" id="item2" style=" border-right: 0;">
            <div class="item-main-wrap">
                <div class="top-wrap" style="background: #FFAF0F;">
                    <div class="desc">至尊版</div>
                    <div class="price"><span>4980</span>元/年</div>
                </div>
                <div class="cont-wrap">
                    <ul class="clearfix">
                        <li><span><img src="../images/g2.png" /></span>样子ERP（5店版）</li>
                        <li><span><img src="../images/g2.png" /></span>店员端小程序</li>
                        <li><span><img src="../images/g2.png" /></span>老板端小程序</li>
                        <li><span><img src="../images/g2.png" /></span>免费派券渠道</li>
                        <li><span><img src="../images/g2.png" /></span>公众号管理</li>
                        <li><span><img src="../images/g2.png" /></span>行业版应用</li>
                        <li><span><img src="../images/g2.png" /></span>会员系统</li>
                        <li><span><img src="../images/g2.png" /></span>收银台</li>
                        <li><span><img src="../images/g2.png" /></span>优惠券</li>
                        <li><span><img src="../images/g2.png" /></span>微商城</li>
                        <li><span><img src="../images/g2.png" /></span>分销系统</li>
                        <li><span><img src="../images/g2.png" /></span>推广工具</li>
                        <li><span><img src="../images/g2.png" /></span>存销宝（5店多账号）</li>
                        <li><span><img src="../images/g2.png" /></span>免费的收银硬件支持</li>
                        <li><span><img src="../images/g2.png" /></span>H5互动游戏（15套）</li>
                        <li><span><img src="../images/g2.png" /></span>粉巢系统（3套模板）</li>

                    </ul>
                    <a href="javascript:;" class="base_abtn" id="cont-b" onclick="pay(4)">立刻购买</a>
                </div>
            </div>
        </div>
        <div class="item-wrap" id="item3" style=" border-right: 0;display:none;">
            <div class="item-main-wrap">
                <div class="top-wrap" style="background: #8559E7;">
                    <div class="desc">白金版</div>
                    <div class="price"><span>7200</span>元/年</div>
                </div>
                <div class="cont-wrap">
                    <ul class="clearfix">
                        <li><span><img src="../images/g3.png" /></span>样子ERP（8店版）</li>
                        <li><span><img src="../images/g3.png" /></span>店员端小程序</li>
                        <li><span><img src="../images/g3.png" /></span>老板端小程序</li>
                        <li><span><img src="../images/g3.png" /></span>免费派券渠道</li>
                        <li><span><img src="../images/g3.png" /></span>公众号管理</li>
                        <li><span><img src="../images/g3.png" /></span>行业版应用</li>
                        <li><span><img src="../images/g3.png" /></span>会员系统</li>
                        <li><span><img src="../images/g3.png" /></span>收银台</li>
                        <li><span><img src="../images/g3.png" /></span>优惠券</li>
                        <li><span><img src="../images/g3.png" /></span>微商城</li>
                        <li><span><img src="../images/g3.png" /></span>分销系统</li>
                        <li><span><img src="../images/g3.png" /></span>推广工具 </li>
                        <li><span><img src="../images/g3.png" /></span>存销宝（8店多账号）</li>
                        <li><span><img src="../images/g3.png" /></span>免费的收银硬件支持</li>
                        <li><span><img src="../images/g3.png" /></span>H5互动游戏（20套）</li>
                        <li><span><img src="../images/g3.png" /></span>粉巢系统（5套模板）</li>

                    </ul>
                    <a href="javascript:;" class="base_abtn" id="cont-c" onclick="pay(13)">立刻购买</a>
                </div>
            </div>
        </div>
        <div class="item-wrap item3-1"style=" border-right: 0;">
            <div class="item-main-wrap">
                <div class="top-wrap" style="background: #8559E7;">
                    <div class="desc">白金版</div>
                    <div class="price"><span>7200</span>元/年</div>
                </div>
                <div class="cont-wrap">
                    <ul class="clearfix">
                        <li><span><img src="../images/g3.png" /></span>样子ERP（8店版）</li>
                        <li><span><img src="../images/g3.png" /></span>店员端小程序</li>
                        <li><span><img src="../images/g3.png" /></span>老板端小程序</li>
                        <li><span><img src="../images/g3.png" /></span>免费派券渠道</li>
                        <li><span><img src="../images/g3.png" /></span>公众号管理</li>
                        <li><span><img src="../images/g3.png" /></span>行业版应用</li>
                        <li><span><img src="../images/g3.png" /></span>会员系统</li>
                        <li><span><img src="../images/g3.png" /></span>收银台</li>
                        <li><span><img src="../images/g3.png" /></span>优惠券</li>
                        <li><span><img src="../images/g3.png" /></span>微商城</li>
                        <li><span><img src="../images/g3.png" /></span>分销系统</li>
                        <li><span><img src="../images/g3.png" /></span>推广工具 </li>
                        <li><span><img src="../images/g3.png" /></span>存销宝（8店多账号）</li>
                        <li><span><img src="../images/g3.png" /></span>免费的收银硬件支持</li>
                        <li><span><img src="../images/g3.png" /></span>H5互动游戏（20套）</li>
                        <li><span><img src="../images/g3.png" /></span>粉巢系统（5套模板）</li>

                    </ul>
                    <a href="javascript:;" class="base_abtn" id="cont-c" onclick="pay(13)">立刻购买</a>
                </div>
            </div>
        </div>
        <div class="item-wrap" id="item4">
            <div class="item-main-wrap">
                <div class="top-wrap" style="background: #239EFF;">
                    <div class="desc">钻石版</div>
                    <div class="price"><span>9600</span>元/年</div>
                </div>
                <div class="cont-wrap">
                    <ul class="clearfix">
                        <li><span><img src="../images/g4.png" /></span>样子ERP（12店版）</li>
                        <li><span><img src="../images/g4.png" /></span>店员端小程序</li>
                        <li><span><img src="../images/g4.png" /></span>老板端小程序</li>
                        <li><span><img src="../images/g4.png" /></span>免费派券渠道</li>
                        <li><span><img src="../images/g4.png" /></span>公众号管理</li>
                        <li><span><img src="../images/g4.png" /></span>行业版应用</li>
                        <li><span><img src="../images/g4.png" /></span>会员系统</li>
                        <li><span><img src="../images/g4.png" /></span>收银台</li>
                        <li><span><img src="../images/g4.png" /></span>优惠券</li>
                        <li><span><img src="../images/g4.png" /></span>微商城</li>
                        <li><span><img src="../images/g4.png" /></span>分销系统</li>
                        <li><span><img src="../images/g4.png" /></span>推广工具</li>
                        <li><span><img src="../images/g4.png" /></span>存销宝（12店多账号）</li>
                        <li><span><img src="../images/g4.png" /></span>免费的收银硬件支持</li>
                        <li><span><img src="../images/g4.png" /></span>H5互动游戏（20套）</li>
                        <li><span><img src="../images/g4.png" /></span>粉巢系统（定制模板）</li>

                    </ul>
                    <a href="javascript:;"  id="cont-d" class="base_abtn" onclick="pay(14)">立刻购买</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="gt-foot">
    <div class="gt-foot-box">
        <ul>
            <li><a href="/html/aboutUs.jsp">关于我们</a></li>
            <li><a href="/html/co_convened.jsp">申请代理</a></li>
            <li><a href="/html/instructions.jsp">使用指南</a></li>
            <li style="border:none;">
                <div id="wxImg" style="display:none;bottom:65px; left:100px;height:50px;back-ground:#f00;position:absolute;">
                    <img src="../images/code.png" width="118px" height="118px" alt="" />
                </div>
                <a href="javascript:void(0)"onMouseOut="hideImg()"  onmouseover="showImg()">关注多粉</a>
            </li>
        </ul>
    </div>
    <span class="gt-foot-body">
		       <h4>服务热线:400 889 4522</h4>
		       <p>Copyright © 2013-2016 duofriend. All Rights Reserved. 粤ICP备15016183号-3   经营许可证编号：全国B2-20160778   粤B2-20150533</p>
		       <p>广东谷通科技有限公司</p>
		       <p>法律顾问</p>
		   </span>
</div>

<script type="text/javascript">
    function  showImg(){
        document.getElementById("wxImg").style.display='block';
    }
    function hideImg(){
        document.getElementById("wxImg").style.display='none';
    }
</script>


<div style="display: none" class="popup_dialog_confirm" id="paybox">
    <div class="popup_mask"></div>
    <div class="popup_dialog">
        <svg class="icon fr iconRight closeimg" aria-hidden="true" style='margin: 10px;float:right;'>
            <use xlink:href="#icon-close"></use>
        </svg>
        <div class="popup_dialog_hd">
            <div class="popup_dialog_title">
                <span>购买套餐</span>

            </div>
        </div>
        <div class="popup_dialog_bd">
            <ul>
                <li>
                    <span class='label borernone'>购买套餐:</span>
                    <select id="paymeal">
                        <option>升级版套餐</option>
                        <option style='color:#0182de'>高级版套餐（推荐）</option>
                        <option>至尊版套餐</option>
                        <option>钻石版套餐</option>
                        <option>白金版套餐</option>
                    </select>
                </li>
                <h4>提交个人信息  （专属客服为您开通账号）</h4>
                <li>
                    <span class='label'>个人姓名:</span>
                    <input type="text"  placeholder="请输入个人姓名" id="payname" maxlength="12">
                </li>
                <li>
                    <span class='label'>手机号码:</span>
                    <input type="text" placeholder="请输入手机号码" id="payphone" maxlength="12">

                </li>
                <li>
                    <span class='label borernone' style='border:none'>支付方式: </span>
                    <div class="payWay">
                        <img class="wx checkedPay" data-value="wx" src="/html/images/fans/weixin.png" alt="" pay-data="0">
                        <img class="pay" data-value="pay" src="/html/images/fans/pay.png" alt="" pay-data="1">
                    </div>
                </li>
                <div class="showpay clear">
                    <div class="fr " style="text-align: right;margin: 15px 0 0 0;float: right;">
                        <span>实付金额：</span>
                        <span><label id="pay_box_price">510</label>元</span>
                    </div>
                </div>
            </ul>
        </div>
        <div class="popup_dialog_ft">
            <p class='remindbox' id="paytip"></p>
            <div class="sumlitBtn">提交订单</div>
        </div>
    </div>
</div>
<div style="display: none;" class="popup_dialog_confirm " id="qrcodeview">
    <div class="popup_mask"></div>
    <div class="popup_dialog">
        <svg class="icon fr iconRight closeimg" aria-hidden="true" style='margin: 10px;float:right;' onclick="clearIt();">
            <use xlink:href="#icon-close"></use>
        </svg>
        <div class="popup_dialog_hd">
            <div class="popup_dialog_title">扫码支付</div>
        </div>
        <div class="popup_dialog_bd" style="text-align: center;">

            <p class='p-detial'>
         <span>
         <label>实付金额：<span style='color: #F85555;' id="shipay">510</span></label>
                   元</span>
            </p>
            <img alt="" src="" style="" class='imgcode'>
            <p class='p-detial'>扫一扫支付</p>
        </div>
    </div>
</div>


<script type="text/javascript">
    function  showImg(){
        document.getElementById("wxImg").style.display='block';
    }
    function hideImg(){
        document.getElementById("wxImg").style.display='none';
    }
</script>
<script src="../js/jquery-2.2.2.min.js"></script>
<script>
    $('.package-wrap').on('mouseenter', function() {
        $(this).find('.item3-1').hide();
        $(this).find('#item3').show();
    }).on('mouseleave', function() {
        $(this).find('.item3-1').show();
        $(this).find('#item3').hide();
    })
</script>
<script src="../js/gm/min.js"></script>
<script src="../js/gm/three.min.js"></script>
<script src="../js/gm/projector.js"></script>
<script src="../js/gm/canvas-renderer.js"></script>
<script src="../js/gm/3d-lines-animation.js"></script>
</html>