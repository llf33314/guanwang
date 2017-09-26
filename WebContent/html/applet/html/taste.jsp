<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>微信小程序定制开发_小程序第三方开发商_多粉平台</title>
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta name="keywords" content=""/>
        <meta name="description" content=""/>
        <meta name="apple-mobile-web-app-capable" content="no"/>
        <meta name="format-detection" content="telephone=no">
        <script src="../js/jquery-2.2.2.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/html/common/font-one/iconfont.css" />
        <link rel="stylesheet" type="text/css" href="/html/common/font-second/iconfont.css" />
        <link rel="stylesheet" type="text/css" href="../css/style-index.css"/>
        <script src="../js/index/jquery-2.2.2.min.js"></script>
        </head>
<body>
<%@include file="/html/common/clearfix1.jsp" %>
<div style="width: 100%;z-index: 4;" class="second-js-top">
    <div class="a-hw-hardware">
        <ul class="a-hw-hardware-txt">
            <li><a href="/html/weixinapp.jsp" class="a-hw-txt-a ">首页</a></li>
            <li><a href="/html/applet/html/coreFunction.jsp" class="a-hw-txt-a ">核心功能</a></li>
            <li><a href="/html/applet/html/taste.jsp" class="a-hw-txt-a  a-hw-sp">体验中心</a></li>
            <div class="a-hw-green">
                <i class="iconfont a-hw-har-img">&#xe73f;</i><p>NEW</p>
            </div>
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
                        <div class="case-inner"  onclick="showOrCloseApp('open')">
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
                                            <span>功能详情</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner" onclick="showOrCloseBpp('open')">
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
                                            <h2>康小厨粉丝端</h2>
                                            <span>功能详情</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner" onclick="showOrCloseCpp('open')">
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
                                            <h2>康小厨部长端</h2>
                                            <span>功能详情</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner" onclick="showOrCloseDpp('open')">
                            <div class="template-container">
                                <div class="content visible cover">
                                    <img src="../img/taste-floor1-41.png" class="cover">
                                </div>
                                <div class="content hidden hover">
                                    <div class="qr-code-container">
                                        <div class="qr-code">
                                            <img src="../img/taste-floor1-42.png">
                                            <p> 体验饭卡号：8888</p>
                                            <h2>多粉微食堂</h2>
                                            <span>功能详情</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="case">
                        <div class="case-inner" onclick="showOrCloseEpp('open')">
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
                                            <h2>车小算BOSS端</h2>
                                            <span>功能详情</span>
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
                <h2>康小厨</h2>
                <p>
                    九九前连锁餐饮通过“康小厨”小程序，实现顾客“粉丝端”一键开台的极速体验，通过“店员端”直接下单、划菜、结账，一键搞定，迅速提高顾客就餐效率，半年时间内客流量增加约40%，成功带动店铺业绩，突破营业瓶颈</p>
            </li>
        </ul>
    </div>
</section>

<!--弹框区域-->
<div class="app" id="App">
    <div class="app-content">
        <h2 class="taste-content-h2">多粉官方商城</h2>
        <i class="iconfont aclose" onclick="showOrCloseApp('close')">&#xe651;</i>
        <ul class="app-content-ul">
            <li>
                <i class="iconfont app-px1">&#xe600;</i>
                <h3>团购</h3>
                <p>达到拼团人数就可优惠购买</p>
                <p>积攒人气</p>
            </li>
            <li>
                <i class="iconfont app-px2">&#xe6cf;</i>
                <h3>秒杀</h3>
                <p>限时低价售卖商品，迅速引</p>
                <p>爆客流</p>
            </li>
            <li>
                <i class="iconfont app-px3">&#xe6c7;</i>
                <h3>拍卖</h3>
                <p>独特的抢货体验，提高店铺</p>
                <p>曝光率</p>
            </li>
            <li>
                <i class="iconfont app-px4">&#xe649;</i>
                <h3>预售</h3>
                <p>提前试行销售，了解商品</p>
                <p>市场</p>
            </li>
            <li>
                <i class="iconfont app-px5">&#xe60f;</i>
                <h3>批发</h3>
                <p>轻松批发选购，在线交易更</p>
                <p>方便</p>
            </li>
            <li>
                <i class="iconfont app-px6">&#xe6fb;</i>
                <h3>报价单</h3>
                <p>商家快速报价、快速签约的</p>
                <p>神器</p>
            </li>
            <li>
                <i class="iconfont app-px7">&#xe662;</i>
                <h3>积分商城</h3>
                <p>积分兑换商品，提高店铺</p>
                <p>人气</p>
            </li>
            <li>
                <i class="iconfont app-px8">&#xe6165;</i>
                <h3>H5商城</h3>
                <p>具有极佳视听效果的场景</p>
                <p>商城</p>
            </li>
            <li>
                <i class="iconfont app-px9">&#xe713;</i>
                <h3>超级销售员</h3>
                <p>零成本全民营销，随时分享</p>
                <p>赢奖励</p>
            </li>
        </ul>
    </div>
</div>
<div class="bpp" id="Bpp">
    <div class="bpp-content">
        <h2 class="taste-content-h2">康小厨粉丝端</h2>
        <i class="iconfont aclose" onclick="showOrCloseBpp('close')">&#xe651;</i>
        <ul class="app-content-ul">
            <li>
                <i class="iconfont app-px1">&#xe72f;</i>
                <h3>会员优惠</h3>
                <p>优惠券、会员积分、粉币等</p>
                <p>自动抵扣结算金额</p>
            </li>
            <li>
                <i class="iconfont app-px2">&#xe6a3;</i>
                <h3>自助点餐</h3>
                <p>粉丝直接在线选择菜品并</p>
                <p>确认下单</p>
            </li>
            <li>
                <i class="iconfont app-px4">&#xe61b;</i>
                <h3>在线付款</h3>
                <p>微信、支付宝、魔盒支付</p>
                <p>任选</p>
            </li>
            <li>
                <i class="iconfont app-px5">&#xe6699;</i>
                <h3>自主开台</h3>
                <p>通过粉丝端直接选择台号，</p>
                <p>获取邀请码</p>
            </li>
        </ul>
    </div>
</div>
<div class="cpp" id="Cpp">
    <div class="cpp-content">
        <h2 class="taste-content-h2">康小厨部长端</h2>
        <i class="iconfont aclose" onclick="showOrCloseCpp('close')">&#xe651;</i>
        <ul class="app-content-ul">
            <li>
                <i class="iconfont app-px5">&#xe6699;</i>
                <h3>开台</h3>
                <p>店员可在线选择空白台位</p>
                <p>一键开台</p>
            </li>
            <li>
                <i class="iconfont app-px3">&#xe61dd;</i>
                <h3>划菜</h3>
                <p>上菜后，店员可在手机端</p>
                <p>划去菜品</p>
            </li>
            <li>
                <i class="iconfont app-px4">&#xe658;</i>
                <h3>点菜</h3>
                <p>店员直接在手机端为顾客</p>
                <p>点菜下单</p>
            </li>
            <li>
                <i class="iconfont app-px1">&#xe60ff;</i>
                <h3>注册会员</h3>
                <p>店员可通过手机帮助用户</p>
                <p>在线注册会员</p>
            </li>
        </ul>
    </div>
</div>
<div class="dpp" id="Dpp">
    <div class="dpp-content">
        <h2 class="taste-content-h2">员工食堂</h2>
        <i class="iconfont aclose" onclick="showOrCloseDpp('close')">&#xe651;</i>
        <ul class="app-content-ul">
            <li>
                <i class="iconfont app-px2">&#xe635;</i>
                <h3>菜品展示</h3>
                <p>商家在线上传每周菜谱，</p>
                <p>展示菜品</p>
            </li>
            <li>
                <i class="iconfont app-px10">&#xe6f8;</i>
                <h3>定点订餐</h3>
                <p>商家自行设置订餐和用餐</p>
                <p>时间</p>
            </li>
            <li>
                <i class="iconfont app-px1" style="font-size: 40px;">&#xe625;</i>
                <h3>线上预订</h3>
                <p>员工通过小程序直接选餐</p>
                <p>订餐</p>
            </li>
            <li>
                <i class="iconfont app-px11">&#xe633;</i>
                <h3>扫码取餐</h3>
                <p>用手机扫取餐码，现场即时</p>
                <p>核销</p>
            </li>
            <li>
                <i class="iconfont app-px1">&#xe61f;</i>
                <h3>饭票设置</h3>
                <p>设置对内和对外的差异化</p>
                <p>售价</p>
            </li>
            <li>
                <i class="iconfont app-px3" style="font-size: 40px;">&#xe61b;</i>
                <h3>便捷支付</h3>
                <p>通过微信、支付宝、银联等</p>
                <p>方式支付</p>
            </li>
            <li>
                <i class="iconfont app-px4" style="font-size: 40px;">&#xe608;</i>
                <h3>一键加餐</h3>
                <p>饭菜不够吃？自己</p>
                <p>选“加餐”</p>
            </li>
            <li>
                <i class="iconfont app-px5" style="font-size: 40px;">&#xe620;</i>
                <h3>余额充值</h3>
                <p>直接在线充值，随时随地</p>
                <p>可查余额</p>
            </li>
        </ul>
    </div>
</div>
<div class="epp" id="Epp">
    <div class="epp-content">
        <h2 class="taste-content-h2">车小算BOSS端</h2>
        <i class="iconfont aclose" onclick="showOrCloseEpp('close')">&#xe651;</i>
        <ul class="app-content-ul">
            <li>
                <i class="iconfont app-px2">&#xea93;</i>
                <h3>扫码核销</h3>
                <p>扫描车主二维码，完成洗车</p>
                <p>卡扣次</p>
            </li>
            <li>
                <i class="iconfont app-px3">&#xe6de;</i>
                <h3>订单管理</h3>
                <p>一手掌握每笔订单详情，随</p>
                <p>时查看</p>
            </li>
            <li>
                <i class="iconfont app-px5">&#xe6233;</i>
                <h3>项目开单</h3>
                <p>通过手机直接开单，简单</p>
                <p>快捷</p>
            </li>
            <li>
                <i class="iconfont app-px6">&#xe603;</i>
                <h3>统计报表</h3>
                <p>消费统计、车主统计、收入</p>
                <p>总额一应俱全</p>
            </li>
        </ul>
    </div>
</div>
<%@include file="/html/common/footer.jsp" %>
<script src="../js/thead.js"></script>
<script>
    var showOrCloseApp = function(type){
        var App = document.querySelectorAll('.app');
        if(type == 'close'){
            App[0].style.display = 'none';
        }else{
            App[0].style.display = 'block';
        }
    }

    var showOrCloseBpp = function(type){
        var Bpp = document.querySelectorAll('.bpp');
        if(type == 'close'){
            Bpp[0].style.display = 'none';
        }else{
            Bpp[0].style.display = 'block';
        }
    }
    var showOrCloseCpp = function(type){
        var Cpp = document.querySelectorAll('.cpp');
        if(type == 'close'){
            Cpp[0].style.display = 'none';
        }else{
            Cpp[0].style.display = 'block';
        }
    }
    var showOrCloseDpp = function(type){
        var Dpp = document.querySelectorAll('.dpp');
        if(type == 'close'){
            Dpp[0].style.display = 'none';
        }else{
            Dpp[0].style.display = 'block';
        }
    }
    var showOrCloseEpp = function(type){
        var Epp = document.querySelectorAll('.epp');
        if(type == 'close'){
            Epp[0].style.display = 'none';
        }else{
            Epp[0].style.display = 'block';
        }
    }
</script>
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
