<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>微信小程序</title>
    <link rel="stylesheet" type="text/css" href="../css/style-index.css" />
  <link rel = "stylesheet" type="text/css" href = "../css/index.css"/>
  <script src="../js/jquery-2.2.2.min.js"></script>

</head>
<body>
<%@include file="/html/common/clearfix1.jsp" %>
  <div style="width: 100%;z-index: 4;" class="second-js-top">
  <div class="a-hw-hardware">
     <ul class="a-hw-hardware-txt">
        <li><a href="/html/applet/html/index.jsp" class="a-hw-txt-a">首页</a></li>
        <li><a href="/html/applet/html/coreFunction.jsp" class="a-hw-txt-a  a-hw-sp">核心功能</a></li>
        <li><a href="/html/applet/html/taste.jsp" class="a-hw-txt-a">体验中心</a></li>
     </ul>
  </div>
  </div>
  <div class="xcx-floor1" style="background-image: url(../imgs/main-img.jpg);">
      <div class="box">
          <h1>让小程序的能力更加强大</h1>
          <h3 style="font-size: 24px;margin-top: 20px;font-weight: 500;color:#fff">通过多粉的开发能力赋予小程序更加强大的功能</h3>
          <a class="cxb-gobtn" href="http://duofriend.com/user/toregister.do">
              <span class="btnmask"></span>
              <i class="clearmid"></i>
              <div>更多</div>
              <img class="rower" style="top: 0px;" src="../img/rower.png" />
          </a>
      </div>
  </div>
  <!--主体大图-->
  <!--图标导航-->
  <div class="iconNav">
    <div class="iconNavContent banxin">
      <h3>多粉为商家精心准备系列小程序</h3>
      <ul>
        <li>
          <a href="javascript:void(0)">
            <img src="../imgs/iconNav-1.png">
            <span>员工食堂</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <img src="../imgs/iconNav-2.png" alt="">
            <span>微商城</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <img src="../imgs/iconNav-3.png" alt="">
            <span>智慧餐饮</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <img src="../imgs/iconNav-4.png" alt="">
            <span>汽车美容</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <img src="../imgs/iconNav-5.png" alt="">
            <span>智慧教育</span>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <div class="iconMore">
              <i></i>
              <i></i>
              <i></i>
            </div>
            <span>更多</span>
          </a>
        </li>
      </ul>
      <span>更多小程序，请拭目以待</span>
    </div>

  </div>
  <!--微信扫码部分-->
  <div class="saoma">
    <div class="saomaContent banxin clearfix">
      <article class="fl">
        <h3>你试过用小程序来核销么</h3>
        <span>多粉的小程序支持直接扫码核销或者手动输入核销券号进行核销，自动整合核销记录</span>
      </article>
      <div class="fr">
        <div></div>
        <div></div>
        <span>注：此页面为多粉车小算小程序</span>
      </div>
    </div>
  </div>
  <!--优惠券推广-->
  <div class="tuiguang">
    <div class="tuiguangContent banxin clearfix">
      <div class="fl">
        <span>优惠券推广</span>
        <div></div>
        <div></div>
      </div>
      <article class="fr">
        <h3>让小程序帮你沉淀会员</h3>
        <span>通过小程序派发优惠卡券，帮助商家提高会员沉淀率，增加用户粘性</span>
      </article>
    </div>
  </div>
  <!--老板端小程序-->
  <div class="boss">
    <div class="bossContent banxin clearfix">
      <article class="fl">
        <h3>老板（BOSS）端小程序</h3>
        <span>当天营收、订单、大数据分析，老板打开小程序一目了然</span>
      </article>
      <div class="fr">
        <div></div>
        <div></div>
      </div>
    </div>

  </div>
  <!-- 销售端小程序 -->
  <div class="sale">
    <div class="saleContent banxin clearfix;">
      <div class="fl"></div>
      <article class="fr">
        <h3>店员端小程序</h3>
        <span>手机下单、用手机当作扫码枪扫码核销、手机代客买单、收银</span>
      </article>
    </div>
  </div>
  <!-- 粉丝端小程序 -->
  <div class="fans">
    <div class="fansContent banxin clearfix">
      <article class="fl">
        <h3>粉丝端小程序</h3>
        <span>同步公众号H5,不论粉丝从公众号或小程序进店一样ok</span>
      </article>
      <div class="fr"></div>
    </div>
  </div>
<%@include file="/html/common/footer.jsp" %>
  <script src="../js/thead.js"></script>
<script>

</script>
</body>
</html>
