<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>微信小程序</title>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="apple-mobile-web-app-capable" content="no" />
    <meta name="format-detection" content="telephone=no">
    <script src="../js/jquery-2.2.2.min.js"></script>
    <style>
        @font-face {
            font-family: 'iconfont';  /* project id 361172 */
            src: url('//at.alicdn.com/t/font_361172_d40k106rhvxcg14i.eot');
            src: url('//at.alicdn.com/t/font_361172_d40k106rhvxcg14i.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_361172_d40k106rhvxcg14i.woff') format('woff'),
            url('//at.alicdn.com/t/font_361172_d40k106rhvxcg14i.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_361172_d40k106rhvxcg14i.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="../css/style-index.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
</head>
<body>
<%@include file="/html/common/clearfix1.jsp" %>
  <div style="width: 100%;z-index: 4;" class="second-js-top">
	<div class="a-hw-hardware">
	   <ul class="a-hw-hardware-txt">
       <li><a href="/html/applet/html/index.jsp" class="a-hw-txt-a  a-hw-sp">首页</a></li>
       <li><a href="/html/applet/html/coreFunction.jsp" class="a-hw-txt-a ">核心功能</a></li>
       <li><a href="/html/applet/html/taste.jsp" class="a-hw-txt-a">体验中心</a></li>
	   </ul>
	</div>
  </div>
<div class="xcx-floor1">
    <div class="box">
        <h1>一场小程序颠覆APP的革命</h1>
        <a class="cxb-gobtn" href="http://duofriend.com/user/toregister.do">
            <span class="btnmask"></span>
            <i class="clearmid"></i>
            <div>更多</div>
            <img class="rower" src="../img/rower.png" />
        </a>
    </div>
</div>
<div class="xcx-floor2">
    <div class="w1200">
        <h1 class="title">小程序，不是一个独立个体</h1>
        <p class="dps" style="width: 609px;">外面市场上小程序动辄收取上万元开发费用贵且不说，仅仅是单个个体小程序！多粉提供的小程序是一个整体，包括粉丝端、店员端、BOSS端三个小程序，轻松满足不同角色的需求，与公众号H5､行业ERP数据打通形成整体协同，将小程序能力最大化</p>
        <div class="imgs">
            <img class="img1" src="../img/xcx-floor21.png" />
            <img class="img2" src="../img/xcx-floor22-1.png" id="wpox1" />
            <img class="img2" src="../img/xcx-floor22-2.png" id="wpox2" />
        </div>
    </div>
</div>
<div class="xcx-floor3">
    <div class="w1200">
        <h1 class="title">更大惊喜：小程序，我们还是免费的</h1>
        <p class="dps" style="width: 609px;">多粉升级版的商家（企业）均可以终身免费使用小程序</p>
        <img class="img" src="../img/xcx-floor31.png" />
    </div>
</div>
<div class="xcx-floor4">
    <div class="w1200">
        <h1 class="title">极易掌控 快速上手</h1>
        <p class="dps" style="width: 609px;">商家登录多粉帐号即可进行操作，一键绑定，设置更简单</p>
        <img class="img" src="../img/xcx-floor41.png" />
    </div>
</div>
<div class="xcx-floor5">
    <div class="w1200">
        <h1 class="title">风口上的小程序</h1>
        <p class="dps" style="width: 609px;">微信OS化，小程序让无数商家与初创企业轻易APP化，小程序正在爆发</p>
        <div class="imgs">
            <img class="img" src="../img/xcx-floor51.png" />
          <span>
             <div class="wx-s1" id="td1"></div>
            <img class="wx-img1" src="../img/xcx-floor53.png" />
          </span>
          <span>
             <div class="wx-s2" id="td2" style="display:none ;"></div>
            <img class="wx-img2"  src="../img/xcx-floor52.png" />
          </span>
          <span>
             <div class="wx-s3" id="td3" style="display:none ;"></div>
            <img class="wx-img3" src="../img/xcx-floor53.png" />
          </span>
        </div>
    </div>
</div>
<div class="xcx-floor6">
    <div class="w1200">
        <h1 class="title" style="color: #fff;padding-top: 50px;">多个引流入口</h1>
        <p class="dps" style="width: 609px;color: #fff">同步微信小程序开放能力</p>
        <ul class="list">
            <li>
                <p><i class="iconfont">&#xe650;</i></p>
                <p>附近的小程序</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe672;</i></p>
                <p>搜索小程序</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe69d;</i></p>
                <p>小程序二维码</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe6a0;</i></p>
                <p> 转发小程序</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe714;</i></p>
                <p>关联商家公众号</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe697;</i></p>
                <p>好友推荐</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe6b0;</i></p>
                <p>显示在聊天顶部</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe6b8;</i></p>
                <p>关联公众号自定义<br>菜单</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe6b0;</i></p>
                <p>消息模板打开<br>小程序</p>
            </li>
            <li>
                <p><i class="iconfont">&#xe693;</i></p>
                <p>添加到桌面<br>公众号推文转跳 </p>
            </li>
        </ul>
    </div>
</div>
<div class="xcx-floor7">
    <div class="w1200">
        <h1 class="title">小程序的未来</h1>
        <p class="dps" style="width: 609px;">新零售的落地需要小程序，未来无处不在，还等什么？</p>
        <div class="imgs animated">
            <img class="img3" src="../img/xcx-floor71.png" style="position: absolute;" />
            <p class="hw-txt1 animated" style="opacity: 0;">数据互通</p>
            <p class="hw-txt2 animated" style="opacity: 0;">多渠道引流</p>
            <p class="hw-txt3 animated" style="opacity: 0;">库存同步</p>
            <p class="hw-txt4 animated" style="opacity: 0;">新零售</p>
            <p class="hw-txt5 animated" style="opacity: 0;">增加会员粘性</p>
        </div>
    </div>
</div>
<%@include file="/html/common/footer.jsp" %>
<script src="../js/thead.js"></script>
<script src="../js/hweight.js"></script>

</body>
</html>
