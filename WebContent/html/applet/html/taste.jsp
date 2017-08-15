<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>微信小程序</title>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="apple-mobile-web-app-capable" content="no"/>
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

        .iconfont {
            font-family: "iconfont" !important;
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="../css/style-index.css"/>
</head>
<body>
<%@include file="/html/common/clearfix1.jsp" %>
  <div style="width: 100%;z-index: 4;" class="second-js-top">
  <div class="a-hw-hardware">
     <ul class="a-hw-hardware-txt">
       <li><a href="/html/applet/html/index.jsp" class="a-hw-txt-a ">首页</a></li>
       <li><a href="/html/applet/html/coreFunction.jsp" class="a-hw-txt-a ">核心功能</a></li>
       <li><a href="/html/applet/html/taste.jsp" class="a-hw-txt-a  a-hw-sp">体验中心</a></li>
     </ul>
  </div>
  </div>
<section class="taste-floor1">
    <div class="box">
        <h1 class="title">小程序体验</h1>
        <div class="list">
            <div class="icon_arrow left" id="arrowLeft"></div>
            <div class="icon_arrow right" id="arrowRight"></div>
            <div class="templates-cases">
                <ul class="cases" id="tasteCases">
                    <li class="case">
                        <div class="case-inner">
                            <div class="template-container">
                                <div class="content visible cover">
                                    <img src="../img/taste-floor1-11.png" class="cover">
                                </div>
                                <div class="content hidden hover">
                                    <div class="qr-code-container">
                                        <div class="qr-code">
                                            <img src="../img/taste-floor1-12.png">
                                            <div class="msg">
                                                <p style="text-align: center;text-indent: 0">扫码即体验</p>
                                            </div>
                                            <h2>多粉官方商城</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner">
                            <div class="template-container">
                                <div class="content visible cover">
                                    <img src="../img/taste-floor1-21.png" class="cover">
                                </div>
                                <div class="content hidden hover">
                                    <div class="qr-code-container">
                                        <div class="qr-code">
                                            <img src="../img/taste-floor1-22.png">
                                            <div class="msg">
                                                <p style="text-align: center;text-indent: 0">扫码即体验</p>
                                            </div>
                                            <h2>小馋猫智慧餐饮</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner">
                            <div class="template-container">
                                <div class="content visible cover">
                                    <img src="../img/taste-floor1-31.png" class="cover">
                                </div>
                                <div class="content hidden hover">
                                    <div class="qr-code-container">
                                        <div class="qr-code">
                                            <img src="../img/taste-floor1-32.png">
                                            <div class="msg">
                                                <p> 账号：tyxcm</p>
                                                <p>密码：123456</p>
                                            </div>
                                            <h2>小馋猫餐饮系统</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner">
                            <div class="template-container">
                                <div class="content visible cover">
                                    <img src="../img/taste-floor1-41.png" class="cover">
                                </div>
                                <div class="content hidden hover">
                                    <div class="qr-code-container">
                                        <div class="qr-code">
                                            <img src="../img/taste-floor1-42.png">
                                            <h2>多粉微食堂</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner">
                            <div class="template-container">
                                <div class="content visible cover">
                                    <img src="../img/taste-floor1-51.png" class="cover">
                                </div>
                                <div class="content hidden hover">
                                    <div class="qr-code-container">
                                        <div class="qr-code">
                                            <img src="../img/taste-floor1-52.png">
                                            <div class="msg">
                                                <p> 账号：tycxs</p>
                                                <p>密码：123456</p>
                                            </div>
                                            <h2>车小算店员端</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <p class="dps">(鼠标移过去，扫一扫体验码)</p>
    </div>
</section>
<section class="taste-floor2">
    <div class="box">
        <h1 class="title">客户案例</h1>
        <ul class="list">
            <li>
                <img src="../img/taste-floor22.png"/>
                <h2>车小算</h2>
                <p>
                    吉诺车屋使用“车小算”小程序后，员工直接用手机登录小程序店员端，扫描车主二维码进行核销，轻松完成洗车卡扣次，数据实时同步，商家通过老板端即可随时查看。快捷的核销方式加速了消费额的增长，短短三个月内，营收增比高达3/8</p>
            </li>
            <li>
                <img src="../img/taste-floor21.png"/>
                <h2>微商城</h2>
                <p>天荣超市借助“微商城”小程序实现了O2O转型升级，线上线下无缝对接，商品可以直接放到线上商城售卖，同时，线上商城也引导了大量客流到店消费，刺激消费增长，迅速提升超市的营业额</p>
            </li>
            <li>
                <img src="../img/taste-floor23.png"/>
                <h2>小馋猫</h2>
                <p>
                    九九前连锁餐饮通过“小馋猫”小程序，实现顾客“粉丝端”一键开台的极速体验，通过“店员端”直接下单、划菜、结账，一键搞定，迅速提高顾客就餐效率，半年时间内客流量增加约40%，成功带动店铺业绩，突破营业瓶颈</p>
            </li>
        </ul>
    </div>
</section>
<%@include file="/html/common/footer.jsp" %>
<script src="../js/thead.js"></script>
<script>
    var xcxTaset = {
      number:$('#tasteCases').find('.case').length,
      cur:0,
      move:0,
      moveLeftOrRight:function(type){
        var self = this;
        // 左移动
        if(type == 1){
          if(self.cur >= self.number-5) return
          self.cur++;
          self.move = self.cur*230*-1
        }else{
          self.cur--;
          self.move = self.cur*230+self.move
          if(self.cur <=  0){
            self.move = 0
            self.cur = 0
          }
        }
        for(var i=0;i<self.number;i++){
          $('#tasteCases').find('.case').eq(i).css({
            'transform': 'translate3d('+self.move+'px, 0px, 0px)'
          })
        }
      },
    }
  $(function () {
    $('.taste-floor1 .list').on('mouseover',function(){
      console.log($(this).find('.case').length)
      if($(this).find('.case').length > 5 && $(this).find('.case').length < 8){
        $(this).find('.icon_arrow').show()
      }
    }).on('mouseout',function(){
      $(this).find('.icon_arrow').hide()
    })
    $('#arrowLeft').on('click',function(){
      xcxTaset.moveLeftOrRight(2)
    })
    $('#arrowRight').on('click',function(){
      xcxTaset.moveLeftOrRight(1)
    })
  })
</script>

</body>
</html>
