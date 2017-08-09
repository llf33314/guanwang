<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>联系我们</title>

    <%@include file="/html/common/css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $("#banner").slideLx({"height": 434});
        })
    </script>
</head>
 
<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <div class="aboutus_container">
        <!--中间内容-->

        <div>
            <ul class="aboutus_title">
                <a href="aboutUs.jsp"> 
                    <li>多粉简介</li>
                </a>
                <a href="honor.jsp">
                    <li>所获荣誉</li>
                </a>
                <a href="invide.jsp">
                    <li>加入我们</li>
                </a>
                <a href="">
                    <li style="background:#c8e6ca ">联系我们</li>
                </a>
            </ul>
        </div>


        <!--中间内容-->
    </div>

    <a href='co_convened.jsp'>

        <img class="img-poster" src="${imageUrl}/aboutus/contract-poster.png" alt="">
    </a>
    <div style="width: 100%;height:auto;">
        <div class="contract-content clear">
            <!--中间内容-->
            <div class="contract-left fl">
                <img class="contract-img" src="${imageUrl}/aboutus/contract.png" alt="">
                <img src="${imageUrl}/aboutus/number-contract.png" alt="">
                <ul class="contract-list-info">
                    <li>
                        <img src="${imageUrl}/aboutus/cotract1.png" alt="" style="vertical-align:middle;" 　>
                        <span>Tel：18026538466</span>
                    </li>
                    <li>
                        <img src="${imageUrl}/aboutus/cotract2.png" alt="" style="vertical-align:middle;" 　>
                        <span>建议反馈电话：0752-2329043</span>
                    </li>
                    <li>
                        <img src="${imageUrl}/aboutus/cotract3.png" alt="" style="vertical-align:middle;" 　>
                        <span>投诉反馈邮箱：hzgt@goodtom.com</span>
                    </li>
                    <li>
                       <img src="${imageUrl}/aboutus/cotract4.png" alt="" style="vertical-align:middle;" 　>
                       <!--  <strong class="company-center">公司总部</strong> -->
                        <p class="address-info" style='white-space: nowrap;'>地址：广东省惠州市惠城区东平惠州大道赛格假日广场大厦1003-1008
                        </p> 
                    </li>

                </ul>
            </div>


            <!--右边-->
            <div class="contract-right fl">
                <img class="contract-img" src="${imageUrl}/aboutus/social.png" alt="">
                <ul class="clear contract-ul">
                    <li class="fl mr120">
                        <a href='http://weibo.com/5772073317/profile?rightmod=1&wvr=6&mod=personnumber&is_all=1'>
                            <img src="${imageUrl}/aboutus/bg-contract.png" style="vertical-align: middle">
                            多粉官方微博
                        </a>
                    </li>
                    <li class="fl">
                        <a href='http://tieba.baidu.com/f?kw=%B6%E0%B7%DB&fr=ala0&tpl=5'>

                            <img src="${imageUrl}/aboutus/baidu123.png" alt=""
                                 style="vertical-align: middle">

                            多粉官方贴吧
                        </a>
                    </li>
                    <li class="fl">
                        <a href='http://v.qq.com/vplus/86836c11ab0f3babe29fcf7d2a3821cf'>
                            <img src="${imageUrl}/aboutus/video-contract.png" alt="" style="vertical-align: middle">
                            多粉视频
                        </a>
                    </li>
                </ul>
            </div>


            <!--中间内容-->
        </div>

        <!--<div class="contract-content contract-address">-->
        <!--&lt;!&ndash; <img src="${imageUrl}/aboutus/address.png" alt=""> &ndash;&gt;-->
        <!--<iframe src="/html/baiduMap.jsp" frameborder="false"  scrolling="no" -->
        <!--style="border:none;" width="1100px;" height="260px;"></iframe>-->
        <!--</div>-->

        <div class="contract-content contract-address">
           <!--  <p style='    margin-bottom: 10px;'>地址：广东省惠州市惠城区东平惠州大道赛格假日广场大厦1003-1008 </p> -->
            <ul class="contract-ul">
                <li class="contract-btn contract-active">
                 广州分公司
                </li>
                <li class="contract-btn">
               深圳分公司
                </li>
                <li class="contract-btn">
                   重庆分公司
                </li>
                <li class="contract-btn">
                   广西分公司
                </li>
                <li class="contract-btn">
                  四川分公司
                </li>
            </ul>

            <ul class="contract_ul">
                <li class='contract_ul_active'>
                  <!--   <strong>广州分公司</strong> -->
                    <p>
                        <span>联系人：商小姐</span>
                        <span class='spanleft'>QQ：2853771225</span>
                    </p>
                    <p>
                        地址：广州市花都区新华镇建设北路170号利君商务中心506室
                    </p>
                    <p>
                        电话：020-86823861 / 18022361410
                    </p>

                    <p style='margin-top: 10px'>
                        <span>联系人：汤小姐   </span>
                        <span class='spanleft'>QQ：2853771217</span>
                    </p>
                    <p>地址：广州市增城市荔城街岗前西路21号三楼 </p>
                    <p>电话：020-82615460 / 18022361422 </p>
                </li> 
                <li>
                  <!--   <strong>深圳分公司</strong> -->
                    <p>
                        <span>联系人：龚小姐 </span>
                        <span class='spanleft'>QQ：2853771275</span>
                    </p>
                    <p>
                        地址：深圳市龙岗区诚信华庭花园3栋15C
                    </p>
                    <p>
                        电话：0755-84552690 / 18923898812
                    </p>
                </li>
                <li>
                    <!--   <strong>重庆分公司</strong> -->
                    <p>
                        <span>联系人：胡小姐  </span>
                        <span class='spanleft'>QQ：2853612233</span>
                    </p>
                    <p>
                        地址：重庆市渝北区龙山街道余松一支路7号龙湖紫都城3-2栋1808室
                    </p>
                    <p>
                        电话：023-67841828 / 17384732127
                    </p>
                </li>
                <li>
                  <!--   <strong>广西分公司</strong> -->
                    <p>
                        <span>联系人：温小姐 </span>
                        <span class='spanleft'>QQ：2853612232</span>
                    </p>
                    <p>
                        地址：广西南宁青秀区东葛路118号南宁青秀万达广场西1栋1721号
                    </p>
                    <p>
                        电话：0771-5652766 / 18978150236
                    </p>
                </li>
                <li>
                <!--     <strong>四川分公司</strong> -->
                    <p>
                        <span>联系人：饶先生</span>
                        <span class='spanleft'>QQ：2853771138</span>
                    </p>
                    <p>
                        地址：成都市锦江区东大街紫东楼段11号东方广场 b座501
                    </p>
                    <p> 
                        电话：028-84472021 / 18933112700
                    </p>
                </li>
            </ul>
        </div>
    </div>

 
    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
<style>

</style>
<script>
$('.contract-btn').on('click',function(){
    			var index=$(this).index();
                 $(this).addClass('contract-active').siblings('.contract-btn').removeClass('contract-active');
                 $('.contract_ul li').eq(index).addClass('contract_ul_active').siblings('.contract_ul li').removeClass('contract_ul_active');
    		}); 
</script>
</body>
</html> 

