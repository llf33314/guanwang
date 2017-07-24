<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description"
          content="多粉高级邀请的出现是传统请帖的一次大变革，高级邀请面向所有行业。直接通过微信送达，免去纸质请帖找人传递的烦恼，展现内容更多，受邀者发送回函回复，互动形式更新颖。"/>
    <title>多粉高级邀请_微信公众号高级邀请功能</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
    <%@include file="/html/common/css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $('.roll').on('click', function () {
                $(this).addClass('active');
                $(this).siblings().removeClass('active');

                var index = $(this).index();
                var imgchild = $('.show-img').eq(index);
                imgchild.fadeIn().siblings().fadeOut();

            });
        })
    </script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <!--====================================================================================-->

    <div class="containter">
        <!--中间内容-->
        <img class="img-product-img" src="${imageUrl}/product-center/poster.png" alt="">
        <div class="vote-main clear">
            <div class="fl vote-content-left">

                <div class="vote-icon">
                    <a href="">
                        <img src="${imageUrl}/product-center/invote-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>高级邀请</h3>
                            <p>代替纸质请帖传递
                            </p>
                            <p>回函及时</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：升级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="vote.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vote-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='vote.jsp'>
                                <h3>微投票</h3>
                            </a>

                            <p>获得用户心声</p>
                            <p>丰富营销思路</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="chongjing.jsp">

                            <img class="fl" src="${imageUrl}/product-center/chongjin.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='chongjing.jsp'>

                                <h3>微场景</h3>
                            </a>

                            <p>具有极佳视听</p>
                            <p> 效果的宣传工具</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="turetable.jsp">

                            <img class="fl" src="${imageUrl}/product-center/return.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='turetable.jsp'>

                                <h3>大转盘</h3>
                            </a>

                            <p> 快乐大转盘</p>
                            <p> 邀你一起玩</p>


                        </div>
                    </li>
                    <li class="clear">
                        <a href="guaguale.jsp">

                            <img class="fl" src="${imageUrl}/product-center/guaguale.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='guaguale.jsp'>
                                <h3>刮刮乐</h3>
                            </a>


                            <p>动手刮一刮
                            </p>
                            <p> 奖品带回家</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="vip.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vip.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='vip.jsp'>
                                <h3>微会员</h3>
                            </a>

                            <p>了解粉丝选择
                            </p>
                            <p>营销活动新利器</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    多粉高级邀请，告别传统的邀请函，面向所有行业，直接通过微信送达，淘汰纸质邀请函，让成本省到“零”；非常适合各种活动促销、会议营销、宴会以及内部会议使用。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持内容立体多面展示：音乐可循环播放、活动介绍，视频播放，日程安排、活动时间、邀请嘉宾、相册等内容。
                            </li>
                            <li>
                                支持抽奖试手气环节：增加互动参与环节，提高用户积极性。
                            </li>
                            <li>
                                支持粉丝收到邀请函后选择出席或不出席：商家直接在后台查看出席人数，确定到场人数，提前做好准备。
                            </li>
                            <li>
                                支持数据统计与导出：邀请函查看人数、确认回函参加人数、入场清单与人数统计，对外则能预先知道参会的总人数可提前进行会议场所安排；对内部使用则可以对参会人员进行考勤统计，包括所属部门、姓名、迟到人数与清单等统计，规范了内部使用的会议秩序与纪律管理。
                            </li>
                            <li>
                                支持支付后生成入场码：适合某些特殊行业出席需支付入场码才可使用等。
                            </li>
                            <li>
                                支持留言祝福：可审核用户的祝福留言是否在首页显示，让商家和用户看到大家的祝福。
                            </li>
                            <li>
                                支持红包祝福：让出席或无法出席的用户表达自己的心意，红包祝福人数与祝福者的微信头像显示，让会议的红包飞起来更能预热烘托会前气氛。
                            </li>
                            <li>
                            支持参与人数的显示与后20位粉丝的微信昵称与头像显示，让参会员感知会议的热度氛围。
                            </li>
                            <li>
                                支持入场码定制：为每位出席的用户显示专属的入场二维码，凭此码进场，仅一次有效。
                            </li>
                            <li>
                                支持短信通知：提醒出席用户，提前到场。
                            </li>
                            <li>
                                支持手机扫码：兼容传统扫描枪，后台授权予员工成为管理员，拿出手机，扫描到场用户的二维码即可核销。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/invote-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/invote2.png" alt="">
                        </li>
                        <li class="show-img passive">

                        </li>
                    </ul>

                    <div class="guide-vote clear">
                        <p class=" fl roll active "></p>
                        <p class=" fl roll "></p>
                        
                    </div>

                </div>

                <!--加二维码-->
                <div class="code-center longCode">
                    <img src="${imageUrl}/product-center/invote-code.png" alt="">
                    <p>(扫描二维码体验)</p>
                </div>
                <!--加二维码-->
                <!--------------->
            </div>
        </div>


        <!--中间内容-->
    </div>


    <!--====================================================================================-->


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>

