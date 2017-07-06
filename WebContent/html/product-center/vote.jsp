<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="在多粉微投票，商家可以自主设定投票时间，视频、音频、文字、图片同时发布。灵活的广告投放，自有品牌，赞助商，均可在活动规则中呈现。商家可以利用多粉微投票的活动来吸引粉丝，与粉丝之间产生互动。
"/>
    <title>多粉微投票_微信公众号微投票功能</title>
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
                        <img src="${imageUrl}/product-center/vote.png" alt="">
                        <div class="aside-desc">
                            <h3>微投票</h3>
                            <p>获得用户心声丰富营销思路</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class fl">
                        <p class="mb">类型：加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="guaguale.jsp">

                            <img class="fl" src="${imageUrl}/product-center/guaguale.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='guaguale.jsp'>
    <h3>刮刮乐</h3>
    </a>
                            <p>动手刮一刮</p>
                            <p>奖品带回家</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="photo.jsp">

                            <img class="fl" src="${imageUrl}/product-center/photo.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='photo.jsp'>
    <h3>微相册</h3>
    </a>
                            <p>各行各业</p>
                            <p> 照片展示轻松搞定</p>
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
                            <p> 具有极佳视听</p>
                            <p> 效果的宣传工具</p>
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
                            <p>给用户身临其境</p>
                            <p>视觉体验</p>
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
                            <p>了解粉丝选择</p>
                            <p> 营销活动新利器</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                在多粉的投票里，商家可以自主设定投票时间，视频、音频、文字、图片同时发布，并且图片无限制，画面对比清晰度更胜一筹。灵活的广告投放，自有品牌，赞助商，均可在活动规则中呈现。商家可以利用多粉微投票的活动来吸引粉丝，与粉丝之间产生互动。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持访客数量、传播效果统计：方便统计，根据调查数据进行分析、研究。
                            </li>
                            <li>
                                支持页面自由调动：参赛者图片加载迅速，并自由滑动。

                            </li>
                            <li>
                                支持分组管理：多个分组投票同时举行，方便粉丝查看，商家管理。

                            </li>
                            <li>
                                支持个性化九宫格展示：根据朋友圈九宫格图片上传原理设计，贴合粉丝习惯。
                            </li>
                            <li>
                               支持多种展现形式：支持在线音频视频，多图文展现等形式投票，适合政府、机关单位进行调查研究
                            </li>
                            <li>
                               支持投票开始与结束时间倒数：精确到分秒，营造紧张气氛。
                            </li>
                            <li>
                               支持在线微信端报名：粉丝在线报名，商家后台审核，简化流程。
                            </li>
                            <li>
                              支持多广告位发布：全方位满足商家需求，让宣传得到最大化。
                            </li>
                            <li>
                               支持排名实时更新：刺激参赛者分享投票页面，带动更多人参与投票，提高活动的关注度，曝光率。
                            </li>
                            <li>
                             支持粉丝投票后参与抽奖环节：提高粉丝投票热情，加强互动。
                            </li>
                            <li>
                            支持开启留言管理：参赛途中参赛者可随时查阅自身票数及留言，开启删除留言功能，防止恶意广告传播，净化页面。
                            </li>
                            <li>
                             粉丝可以在个人中心查看投票历史信息。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/show-vote.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <img class=" " src="${imageUrl}/product-center/show-vote2.png" alt="">
                        </li>
                        <li class="show-img passive" >

                        </li>
                    </ul>
                    <div class="guide-vote clear">
                        <p class=" fl roll active "></p>
                        <p class=" fl roll "></p>
                      
                   </div>
                </div>
 <!--加二维码-->
                <div class="code-center longCode">
                    <img src="${imageUrl}/product-center/vote-code.png" alt="">
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

