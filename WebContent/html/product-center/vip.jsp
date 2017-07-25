<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="
会员系统可让更多线下与线上用户享受移动互联网的便捷，获得生活实惠和特权，同时帮助商家与企业建立会员微信营销泛用户体系，让粉丝成为商家的会员，享受会员折扣待遇，促进粉丝的活跃度与消费。"/>
    <title>多粉微会员_微信公众号会员功能</title>
    <link rel="Shortcut Icon" href="/images/alogo.png" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/vip-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微会员</h3>
                            <p>开启微时代会
                                </p>
                            <p>员营销体系</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：转化 ， 沉淀</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="home.jsp">

                            <img class="fl" src="${imageUrl}/product-center/social.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='home.jsp'>
    <h3>微官网</h3>
    </a>
                            <p>5分钟打造
                                </p>
                            <p>个性化微信网站</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="distribution.jsp">

                            <img class="fl" src="${imageUrl}/product-center/distribution.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='distribution.jsp'>
    <h3>微分销</h3>
    </a>
                            <p>让粉丝成为</p>
                            <p>你的业务员</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="subscribe.jsp">

                            <img class="fl" src="${imageUrl}/product-center/subscribe.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='subscribe.jsp'>
    <h3>微预约</h3>
    </a>
                            <p> 一键即可在线
                                </p>
                            <p> 完成各种预约</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="360.jsp">

                            <img class="fl" src="${imageUrl}/product-center/360.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='360.jsp'>
    <h3>360全景</h3>
    </a>
                            <p>给用户身临其境
                               </p>
                            <p> 视觉体验</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="favorable.jsp">

                            <img class="fl" src="${imageUrl}/product-center/favorable-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='favorable.jsp'>
    <h3>优惠券</h3>
    </a>
                            <p>电子优惠券利益
                                </p>
                            <p>客户节约营销预算</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    多粉会员卡，解决制卡费贵，用户遗带实体卡尴尬等问题，支持实体与虚会员卡自由组合，同时记录客户的手机号,根据客户行
                    业的不同需求，连锁店面数据实时同步，实现连锁店面规模效益，适用于任何行业。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持五种不同功能会员卡：
                                <ul>
                                    <li>
                                        ①积分卡：商家通过设置不同等级卡类，粉丝消费一定数额时赠送相应的积分
                                    </li>
                                    <li>
                                        ②储蓄卡：粉丝通过消费充值享受商家设置相应的优惠。
                                    </li>
                                    <li>
                                        ③时效卡：年卡、季度卡、月卡，在有效时间内不限制粉丝的使用次数。
                                    </li>
                                    <li>

                                        ④次卡：粉丝根据次数消费，适合汽车美容、美容美发、健康产业等行业。
                                    </li>
                                    <li>

                                        ⑤折扣卡：粉丝根据自身等级消费享受商家设置的优惠折扣。
                                    </li>
                                    <li>

                                        每种卡分四个等级，名字背景颜色设计可自定义，商家可以设定通过粉丝的消费，进行会员级别升级，根据会员级别的不同享受不同的会员权益，彰显尊贵身份。
                                    </li>
                                </ul>
                            </li>
                            <li>
                               支持粉币：商家可发行粉币，粉丝通过会员卡的粉币管理进行粉币兑换与粉币消费服务，大大提升粉丝的二次消费。
                            </li>
                            <!--改-->

                            <li>
                                支持粉丝对积分的管理：商家根据粉丝消费情况设定返还消费积分，或者通过活动的形式赠送积分行为，粉丝可以通过积分兑换实现循环消费，大大提升粉丝的会员卡使用忠诚度。
                            </li>
                            <li>
                                支持会员级别进度条显示：通过消费等行为提升会员等级，从而享受到相应的折扣优惠，不同等次的会员权益方案刺激粉丝消费。
                            </li>
                            <li>
                                支持消息通知：支持对会员进行消息或短息通知，进行定期关怀，生日、节假日祝福短信，唤醒沉睡客户。
                            </li>
                            <li>
                                支持会员卡充值与支付：粉丝通过对会员卡进行充值，享受优惠，体验线上购买加线下实体消费的双重消费模式体验。
                            <li>
                            支持查询交易记录：所有记录清晰明了，方便管理查询。
                            </li>
                            <li>
                                支持数据管理：商家可在后台直接导入或导出店铺资料，根据数据作出统计。
                            </li>

                            <li>
                                支持卡券领取与查询：点击选择领取卡劵并在可直接查询卡劵的使用状况。
                            </li>
                            <li>
                                支持线下被扫码付款：打开会员卡专属付款二维码（每两分钟二维码自动更新的安全支付模式），商家用扫码枪扫码即可自动扣款成功。
                            </li>
                            <li>
                                支持门店查询：粉丝及时了解商家店铺，与工作人员进行沟通联系。
                            </li>
                            <li>
                                支持兼容扫码枪读取会员卡。
                            </li>
                            <li>
                                支持多种领取方式：线下扫二维码领取、可设置手机验证码领取条件、关联线上活动领取，要有老会员推荐的资格才可以领取、要商家审批才能领取、也可以设置关注公众号就可以领取的便捷领卡方式、会员中心直接领取等多种领取方式。

                            </li>
                            <li>
                                支持购买才能领取会员卡：商家发布会员卡要粉丝购买才能领取，也可以将购买金额直接转换为粉丝的充值余额。
                            </li>
                            <li>
                                支持积分核销：可以与任何行业进行关联，形成优惠闭环。
                            </li>
                            <li>
                                支持会员个人信息修改：包括手机号码、地址、出生日期等。
                            </li>
                            <li>
                                支持会员管理：对一些会员的不良行为，可直接移至黑名单。
                            </li>
                            <li>
                                支持关联小游戏：商家设置刮刮乐、大转盘等互动。
                            </li>
                            <li>
                                支持商家设置特定会员日：如在会员日内，老会员协同新会员持该卡到店消费，可获得较低折扣/双倍积分等优惠，刺激用户消费。
                            </li>
                            <li>
                                支持余额转卡：会员线下消费后，商家可将会员找零的钱直接转入粉丝会员卡余额，省去商家找零钱的麻烦也省去会员带太多零碎散钱，以便会员下次使用。
                            </li>

                            <li>
                                支持会员权益联盟矩阵使用：不同行业的商家可进行联盟，形成会员权益联盟，会员可在联盟的商家中使用会员卡；例：A商家与B商家联盟，某会员A商家中领取会员卡不仅享受A商家的会员权益，到B商家拿出A商家的会员卡享受联盟折扣。
                            </li>
                            <li>
                                支持会员权限查看：商家可以对发布的文章、新闻以及专题页面等可以仅限会员才能查看。
                            </li>
                            <li>
                                支持其他第三方会员卡导入：兼容线下会员实体卡导入、其他第三方软件会员卡导入，包括原来有余额记录均可以导入使用。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/vip-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/vip2.png" alt="">
                        </li>
                        <li class="show-img passive">

                        </li>
                    </ul>
                    <%--<div class="guide-vote clear">--%>
                        <%--<p class=" fl roll active "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                    <%--</div>--%>
                </div>
                <!--加二维码-->
                <div class="code-center">
                    <img src="${imageUrl}/product-center/vip-code.png" alt="">
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

