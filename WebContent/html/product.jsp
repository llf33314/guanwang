<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
    <link rel="stylesheet" href="/html/css/product.css"/>
    <%@include file="/html/common/cmm_css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <meta name="description"
          content="多粉是国内专业的微信第三方开发商和服务商，产品功能丰富，拥有加粉、推广、互动、转化、游戏、管理六大模块，多达上百种微信公众号功能，在这里，你可以了解到产品的全新内容。"/>
    <title>多粉产品中心_微信公众号第三方功能开发</title>


    <script type="text/javascript">
        $(function () {

            var num = 0;

//            var width =$('.honor-ul li').attr('width');
            var width =$('.pct_tab_title li').width();
          

            function animate_prev() {
           
                num++;
            if(num>=$('.pct_tab_title li').length-6){
                    num=$('.pct_tab_title li').length-6;
                }
                $('.pct_tab_title').animate({'margin-left':'-'+ num*width+'px'});
              
            }

            function animate_after() {

                num--;
                if(num<=0){
                    num=0;
                }

                $('.pct_tab_title').animate({'margin-left':'-'+ num*width+'px'});
             
            }

            $('.imgArro_r').click(function () {
                animate_prev();



            });

            $('.imgArro_l').click(function () {

                animate_after();
            });






        var productJson = WSFUNCTION.doPost("/productCenter/html/productlist", {});
            var types = productJson.types;
            var products = productJson.products;
            var bottomImgs = productJson.bottomImgs;
            console.log(productJson);
            for (var i = 0; i < types.length; i++) {
                $('body > div > div.product_main > div.product_content > div.clear.pct_tit > ul').append('<li class="fl">' + types[i].pctypename + '</li>');
                var pro_c = '<div class="product_icon passive"><ul class="clear">';
                for (var j = 0; j < products.length; j++) {
                    if (types[i].id == products[j].classid)
                        pro_c += '<li class="fl"><div class="product_item"><a href="./product-center/product_' + products[j].id + '.jsp">'
                                 + '<img src="' + products[j].logourl + '" alt=""><h2>' + products[j].pcname + '</h2><p>' + products[j].pcdesc + '</p></a></div></li>';
                }
                pro_c += '</ul></div>';
                $('body > div > div.product_main > div.product_content').append(pro_c);
            }
            for (var i = 0; i < bottomImgs.length; i++) {
                $('#tg_content > div > ul').append('<li><img style="height: 197px;" src="' + bottomImgs[i].imgurl + '" alt=""></li>');
            }
            /* for (var j = 0; j < products.length; j++) { */
            for (var j = (products.length - 1); j > -1; j--) {
                if (1 == products[j].ishot)
                    $('body > div > div.product_main > div.product_content > div:nth-child(4) > ul').append('<li><div class="product_item">'
                            + '<a href="./product-center/product_' + products[j].id + '.jsp"><img src="' + products[j].logourl + '" alt="">'
                            + '<span class="generalize">' + products[j].pctypename + '</span>'
                            + '<h2>' + products[j].pcname + '</h2><p>' + products[j].pcdesc + '</p></a></div></li>');
            }

            $("#banner").slideLx({"height": 404});

            $("#tg_content").slideLi({"width": 340, "arrow": true, "autoplay": false, "showItem": 2, "speek": 300});

            $('.pct_tab li').on('click', function () {
                $(this).addClass('unber_active').siblings().removeClass('unber_active');
                var index = $(this).index();
                var show = $('.product_icon').eq(index);
                show.removeClass('passive').siblings().not('.pct_tit').addClass('passive');
            });
            
            var w =$('.pct_tab_title li').width()*$('.pct_tab_title li').length;
            
            $('.pct_tab_title').css('width',w+'px');

        })
    </script>
    <style>
        .product_item img {
            width: 72px;
            height: 72px;
        }
    </style>
</head>
<body>
<div class="wrap index">
   <%@include file="/html/common/clearfix.jsp" %>

       <!--中间内容-->
   <div id="banner" class="focusad">
       <ul>
           <li><a href="#"><img src="${imageUrl}/product/poster.png"></a></li>
       </ul>
   </div>

    <div class="product_main">
        <div class="clear product_head">
            <div class="product_tilte fl">
                <p>产品中心</p>
                <span>多粉总有源源不断的新产品涌现，在这里，你可以了解到产品的全新内容，观看并学习产品的使用教程</span>
            </div>
            <div class="product-btn fr"> 
                <a href='instructions.jsp'>
                    <div class="product_detail">
                        使用手册
                    </div> 
                </a> 
            </div>
        </div>
        <%--
        <div class="left-box"></div>
        --%>
        <div class="product_content">
            <img class='imgArro_l imgarr' src="${imageUrl}/product/arrow_left.png">
            <div class="clear pct_tit">
                <ul class="clear pct_tab pct_tab_title fl">
                    <li class="fl unber_active">热门</li>
                    

                </ul> 
            </div>
            <img class=imgArro_r imgarr src="${imageUrl}/product/arrow_right.png">
            <!--热门-->
            <div class="product_icon  ">
                <ul class="clear">
                </ul>
            </div>

            <!---->
        </div>

        <%--
        <div class="right-box"></div>
        --%>
        <div class="clear product_head">
            <div class="product_tilte fl" style="height: 34px;">
                <p style="font-size: 28px;line-height: 30px;height:30px">产品中心</p>
            </div> 
        </div>

        <div id="tg_content">
            <div class="tgc_list">
                <ul class="clearfix">
                </ul>
            </div>
            <a href="javascript:;" class="sys_cion leftarrow">
            <img class="product-arrow" src="${imageUrl}/product/cpzx_10.png" alt="">
            </a>
            <a href="javascript:;" class="sys_cion rightarrow">
            <img class="product-arrow" src="${imageUrl}/product/cpzx_13.png" alt="">
            </a>
        </div>

    </div> 


    <!--中间内容--> 


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</div>


 
<style> 

</style> 
</body>
</html>  
