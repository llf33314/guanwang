<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>所获荣誉</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
    <%@include file="/html/common/css.jsp" %>
	<%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function(){
            $("#banner").slideLx({"height":404});
            $("#tg_content").slideLi({"width":340,"arrow":true,"autoplay":false,"showItem":2,"speek":300});


            var num = 0;

//            var width =$('.honor-ul li').attr('width');
            var width =$('.honor-ul li').width()+67;



            function animate_prev() {
//                alert(width);
                    num++;
                if(num>=$('.honor-ul li').length-5){
                    num=$('.honor-ul li').length-5;
                }
                $('.honor-ul').animate( {'margin-left':'-'+ num*width+'px'} )
            }

            function animate_after() {

                num--;
                if(num<=0){
                    num=0;
                }

                $('.honor-ul').animate( {'margin-left':'-'+ num*width+'px'} )
            }

            $('.triangle-left').click(function () {
                animate_after();

            });

            $('.triangle-right-big').click(function () {
                animate_prev();
            });
        });

    </script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <div class="aboutus_container">
        <!--中间内容-->

        <div class="honor-list">
            <ul class="aboutus_title">
                <a href="aboutUs.jsp"><li >多粉简介</li></a>
                <a href=""><li style="background:#c8e6ca ">所获荣誉</li></a>
                <a href="invide.jsp"><li>加入我们</li></a>
                <a href="contract.jsp"><li >联系我们</li></a>
            </ul>
            <div class="honor-news">

                <ul class="news-honor">


                        <li><span class="dot">●</span>2014年度广东省重点网络创新项目</li>
                        <li><span class="dot">●</span>第五届互联网优秀创新项目奖</li>
                        <li><span class="dot">●</span>第二届广东互联网众创空间新星奖</li>
                        <li><span class="dot">●</span>2015年年度广东互联网优秀企业 </li>
                        <li><span class="dot">●</span>2015年年度优秀微信开发服务商 </li>
                        <li><span class="dot">●</span>2015年年度杰出移动电商服务商</li>
                        <li><span class="dot">●</span>第六届金网奖社会化营销奖</li>
                        <li><span class="dot">●</span>第四届互联网+创新项目金奖</li>
                        <li><span class="dot">●</span>2015年年度投资者信赖微信开发服务商</li>
                        <li><span class="dot">●</span>第三届广东省互联网+移动营销奖</li>
                        <li><span class="dot">●</span>第五届广东互联网峰会优秀服务平台奖</li>
                        <li><span class="dot">●</span>2016年年度广东优秀微应用开发项目奖</li>
                      
















                </ul>
                <div class="honor-mask"></div>
            </div>

        </div>


        <!--中间内容-->
    </div>

    <img class="fl" src="${imageUrl}/aboutus/honor-poster.png" alt="">

    <div style="width: 100%;background: #ebebeb;height:auto;overflow: auto;">
        <div class="aboutus_content clear">
            <!--中间内容-->


            <div class="honor-title-list clear" id="tg_content" >

               <span class="triangle-left" style="z-index: 99"></span>
                <div class="reycle-container" >
                    <ul class="clear honor-ul">
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                        <li class="fl"><img src="${imageUrl}/aboutus/honor-prove.png" alt=""></li>
                    </ul>
                </div>
             <span class="triangle-right-big "></span>
                </div>

            <div class="honor-server clear">

                <!--<ul class="aboutus-list">-->

                <ul class="left-ul-honor fl">
                    <li class="fl"><img src="${imageUrl}/aboutus/honor1.png" alt=""></li>
                    <li class="fl"><img src="${imageUrl}/aboutus/honor4.png" alt=""></li>
                </ul>

                <ul class="right-ul-honor fl">
                    <li class="fl"><img src="${imageUrl}/aboutus/honor2.png" alt=""></li>
                    <li class="fl"><img src="${imageUrl}/aboutus/honor3.png" alt=""></li>
                    <li class="fl"><img src="${imageUrl}/aboutus/honor5.png" alt=""></li>
                </ul>


                <!--</ul>-->
            </div>
            <!--中间内容-->
        </div>


    </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>

