<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>首页</title>

    <link rel="stylesheet" type="text/css" href="../css/manner.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
    <link rel="stylesheet" type="text/css" href="../css/style2.css" />
    <script type="text/javascript">
        var access_num = 0;
    </script>
</head>

<body onLoad="type()">
<%@include file="/html/look/html/common/banner.jsp" %>
<nav class="cd-vertical-nav">
    <ul>
        <li><a href="#section1 " class="active"><span class="label">适用场景</span></a></li>
        <li><a href="#section2"><span class="label">怎么来</span></a></li>
        <li><a href="#section3"><span class="label">服务体验</span></a></li>
        <li><a href="#section4"><span class="label">门店管理</span></a></li>
        <li><a href="#section5"><span class="label">选择我们</span></a></li>
    </ul>
</nav>
<div style="height: 600px;">
    <div class="manner-banner" >
        <div class="container " style="height: 420px;"><div id="particles-js" style="height:575px;"></div></div>
        <div class="home-show">
            <div class=" text-center typing-container">
                <div class="typing-wrap" >
                    <div id="txt" class="typing">美容美发行业整体解决方案</div> <span class="typed-cursor">|</span>
                </div>
                <a class="btn btn-lg btn-default btn-view " href="http://duofriend.com/user/toregister.do">免费体验</a>
            </div>
            <div class="container bro-container" id="j-show">
                <div class="browsers  cd-section" id="section1">
                    <div class="left browser j-browser on done"></div>
                    <div class="right browser j-browser on done"></div>
                    <div class="center browser j-browser on done">
                        <div class="b-hero">
                            <div class="b-logo j-logo"></div>
                            <div class="b-header"></div>
                            <div class="b-paragraph a"></div>
                            <div class="b-paragraph b"></div>
                            <div class="b-paragraph c"></div>
                            <div class="b-paragraph d"></div>
                        </div>
                        <div class="b-bottom">
                            <div class="b-bottom-col a">
                                <div class="b-bottom-row a"></div>
                                <div class="b-bottom-row b"></div>
                                <div class="b-bottom-row c"></div>
                            </div>
                            <div class="b-bottom-col b">
                                <div class="b-bottom-row a"></div>
                                <div class="b-bottom-row b"></div>
                                <div class="b-bottom-row c"></div>
                            </div>
                            <div class="b-bottom-col c">
                                <div class="b-bottom-row a"></div>
                                <div class="b-bottom-row b"></div>
                                <div class="b-bottom-row c"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="man-cj">
    <h2 class="mated1 infinite fadeInUp">适用场景</h2>
    <p class="mated2 infinite fadeInUp">支持多业态多场景，全面解决美容美发行业经营需求</p>
    <div class="man-cj-box mated2 infinite fadeInUp" >
        <div class="cj-s mated2 infinite fadeInUp">
            <div class="show1">
                <img src="../images/sy1.png">
            </div>
            <div class="show2">
                <img src="../images/sy1-1.png" >
            </div>
            <p>美发沙龙</p>
        </div>
        <div class="cj-s mated2 infinite fadeInUp">
            <div class="show1">
                <img src="../images/sy2.png">
            </div>
            <div class="show2">
                <img src="../images/sy2-1.png" >
            </div>
            <p>美容美体</p>
        </div>
        <div class="cj-s mated3 infinite fadeInUp" >
            <div class="show1">
                <img src="../images/sy3.png">
            </div>
            <div class="show2">
                <img src="../images/sy3-1.png" >
            </div>
            <p>医疗美容</p>
        </div>
        <div class="cj-s mated3 infinite fadeInUp">
            <div class="show1">
                <img src="../images/sy4.png">
            </div>
            <div class="show2">
                <img src="../images/sy4-1.png" >
            </div>
            <p>美甲美瞳</p>
        </div>
    </div>
</div>
<div class="man-customer cd-section" id="section2">
    <div class="man-customer-box animated">
        <div class="man-customer-l">
            <h4 class="man-c-l-h4 animated" style="opacity: 0;">顾客怎么来？</h4>
            <ul class="man-c-l-ul animated" style="opacity: 0;">
                <li class="animated" style="opacity: 0;" id="txt1">精美的线上商城帮助商家展示自己的服务优势</li>
                <li class="animated" style="opacity: 0;" id="txt2">海量的移动互联网营销创意营销工具，让顾客随时分享和传播</li>
                <li class="animated" style="opacity: 0;" id="txt3">顾客在线预约服务和到店时间，通过预约中心，你可以管理和新增预约、合理排班</li>
            </ul>
            <div class="man-c-l-pic">
                <img src="../images/sy6.png" class="animated" style="opacity: 0;" id="txt4">
                <img src="../images/sy7.png" class="animated" style="opacity: 0;" id="txt5">
                <img src="../images/sy8.png" class="animated" style="opacity: 0;" id="txt6">
            </div>
        </div>
        <div class="man-customer-r animated" style="opacity: 0;">
            <img src="../images/sy5.png">
        </div>
    </div>
</div>
<div class="man-kuais animated cd-section" id="section3">
    <div class="man-kuais-l">
        <img src="../images/sy9.png" id="kua1" class="animated" style="opacity: 0;">
        <div class="man-kuais-zz animated" style="opacity: 0;">
            <img src="../images/sy10.png" id="kua2">
            <h6 class="man-kuais-zz-h6">支付</h6>
            <p class="man-kuais-zz-p">从未这么 <span style="font-size:17px;">简单过！</span></p>
        </div>
        <img src="../images/sy11.png" id="kua3" class="animated" style="opacity: 0;">
        <div class="man-kuais-show">
            <img src="../images/sy12.png" id="sh1" class="animated" style="opacity: 0;">
            <img src="../images/sy13.png" id="sh2" class="animated" style="opacity: 0;">
            <img src="../images/sy14.png" id="sh3" class="animated" style="opacity: 0;">
            <img src="../images/sy15.png" id="sh4" class="animated" style="opacity: 0;">
        </div>
    </div>
    <div class="man-kuais-r">
        <h4 class="man-c-l-h4 animated" style="opacity: 0;" id="sh5">怎么为顾客提供快速、优质的服务体验？</h4>
        <ul class="man-c-l-ul">
            <li id="sh6" class="animated" style="opacity: 0;">智能化服务开单系统，支持会员权益应用、开卡充值等，仅需一台收银一体机 就可以完成全流程的经营管理操作</li>
            <li id="sh7" class="animated" style="opacity: 0;">无缝结合收银机、扫码枪等各式硬件，支持微信、支付宝、银联等多种支付方式</li>
        </ul>
    </div>
</div>
<div class="man-store animated cd-section" id="section4">
    <div class="man-store-box">
        <div class="man-s-l">
            <h4 class="man-c-l-h4 animated" style="opacity: 0;" id="sh8">门店该如何管理？</h4>
            <ul class="man-c-l-ul">
                <li id="sh9" class="animated" style="opacity: 0;">员工出勤、员工业绩管理、销售金额统计、财务数据统计、图文报表， 为商家提供最优化的数据管理及解决方案</li>
                <li id="sh10" class="animated" style="opacity: 0;">权限分配，按角色设置，帮助商家提高管理效率，实现多门店的统一管理</li>
            </ul>
        </div>
        <div class="man-s-r animated" style="opacity: 0;">
            <div class="man-s-r-top">
                <span>总销售金额</span>
                <span style="padding: 0 20%;">今日充值</span>
                <span>今日消费</span>
            </div>
            <div class="man-s-r-mun container">
                <span class="counter">39853.88</span>
                <span style="padding: 0 12%;" class="counter">5849.22</span>
                <span class="counter">7698.52</span>
            </div>
            <h6 class="man-s-r-title animated" style="opacity: 0;"><span></span>销售金额百分比</h6>
            <img src="../images/sy16.png" id="kua4" class="animated" style="opacity: 0;"b>
            <a name="s5"></a>
            <div class="bl animated" style="opacity: 0;">
                <div class="bg"></div>
            </div>
            <img src="../images/sy18.png" id="kua6" class="animated" style="opacity: 0;">
        </div>
    </div>
</div>
<div class="man-choice">
    <img src="../images/sy19.png">
    <div class="man-choice-box animated" style="opacity: 0;">
        <h4 class="man-choice-b-h4">选择我们的<span id="choice1" class="animated" style="opacity: 0;">3</span>大理由</h4>
        <div class="man-choice-top">
            <div class="man-choice-top-box animated" id="choice2" style="opacity: 0;">
                <span class="choice-pic"><img src="../images/sy20.png"></span>
                <span>
		                       <p class="choice-p">专注于美容美发行业升级</p>
		                       <p>多粉一直致力美容美发行业服务的升级，以尖端技术为店面提供快速、稳定、安全、易操作的极致体验，已被3万多家用户高度认可</p>	                    
		                  </span>
            </div>
            <div class="man-choice-top-box animated" id="choice3" style="opacity: 0;">
                <span class="choice-pic"><img src="../images/sy21.png"></span>
                <span>
		                       <p class="choice-p">结合移动互联网优势</p>
		                       <p>SaaS ERP系统+微信+小程序（APP）实现美业店面互联网化、智能化，帮助店面进行会员营销、新客拓展等，真正实现利润倍增</p>	                    
		                  </span>
            </div>
            <div class="man-choice-top-box animated" id="choice4" style="opacity: 0;">
                <span class="choice-pic"><img src="../images/sy22.png"></span>
                <span>
		                       <p class="choice-p">服务加运营支持</p>
		                       <p>全程指导使用，时时跟进维护，解决运营管理的问题；结合样子SaaS ERP专业培训课程，帮助商家快速发展</p>	                    
		                   </span>
            </div>
        </div>
    </div>
</div>
<div class="response_shows animated" id="choice4" style="opacity: 0;">
    <div class="response_shows_box wow bounceIn cd-section" id="section5">
        <div class="pc" onclick="goToSYRJ()" style="cursor:pointer">
            <img src="../images/sy23.png" alt="PC展示" />
            <div class="pic">
                <a href="javascript:;" onclick='WSFUNCTION.videoFrame("http://v.qq.com/iframe/player.html?vid=b0507nf8yen&auto=0&tiny=0&auto=0");'><div class="item"><img src="../images/sy24.png" /></div></a>
                <a href="javascript:;" onclick='WSFUNCTION.videoFrame("http://v.qq.com/iframe/player.html?vid=b0507nf8yen&auto=0&tiny=0&auto=0");'><div class="item"><img src="../images/sy25.png"/></div></a>
                <a href="javascript:;" onclick='WSFUNCTION.videoFrame("http://v.qq.com/iframe/player.html?vid=b0507nf8yen&auto=0&tiny=0&auto=0");'><div class="item"><img src="../images/sy26.png"/></div></a>
            </div>
        </div>
        <div class="thumb"></div>
    </div>
</div>
<%--
<%@include file="/html/common/footer-son.jsp" %>
--%>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?14a62041b4de52f2586d283b14d1175c";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

<div class="gt-foot">
    <div class="gt-foot-box">
        <ul>
            <li><a href="/html/aboutUs/html/index.jsp?type=1">关于我们</a></li>
            <li><a href="/html/agency/html/index.jsp">申请代理</a></li>
            <li><a href="/html/instructions.jsp">使用指南</a></li>
            <li style="border: none;">
                <div id="wxImg"
                     style="display: none; bottom: 65px; left: 100px; height: 50px; back-ground: #f00; position: absolute;">
                    <img src="/html/images/common/code.png" width="118px" height="118px" alt="" />
                </div> <a href="javascript:void(0)" onMouseOut="hideImg()"
                          onmouseover="showImg()">关注多粉</a>
            </li>
        </ul>
    </div>
    <span class="gt-foot-body">
		<h4>服务热线:400 889 4522</h4>
		<p>Copyright © 2013-2016 duofriend. All Rights Reserved.
			粤ICP备15016183号-3 经营许可证编号：全国B2-20160778 粤B2-20150533</p>
		<p>广东谷通科技有限公司</p>
	</span>
</div>

<script type="text/javascript">
    function showImg() {
        document.getElementById("wxImg").style.display = 'block';
    }
    function hideImg() {
        document.getElementById("wxImg").style.display = 'none';
    }
</script>


<script src="../js/modernizr.js"></script>
<script>window.jQuery || document.write('<script src="../js/jquery-2.1.1.min.js"><\/script>')</script>
<script src="../js/main.js"></script>
<script src="../js/jquery-2.2.2.min.js"></script>
<script src="../js/index.js"></script>
<script src="../js/particles.js"></script>
<script src="../js/app.js"></script>
<script src="../js/effects.js"></script>
<script src="../js/number/jquery.countup.min.js"></script>
<script src="../js/number/jquery.countup.js"></script>
<script src="/html/js/jquery.waypoints.min.js"></script>
<link rel="stylesheet" href="/css/webSite.css"/>
<script src="/js/webSite.js"></script>
<script>
    //数字变化
    $('.counter').countUp();
</script>

</body>
</html>