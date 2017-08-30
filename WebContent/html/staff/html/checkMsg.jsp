<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>员工信息</title>
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/js/elementui/elementui.css"/>
    <link rel="stylesheet" href="/html/common/publicResource/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../css/iconfont/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
    <script src="/html/common/publicResource/js/vue.min.js"></script>
    <script src="/html/common/publicResource/js/elementui/elementui.js"></script>
    <style>
        .el-form-item__error {
            color: #fe4040;
            font-size: 12px;
            line-height: 1;
            padding-top: 4px;
            position: absolute;
            left: 430px;
            min-width: 106px;
            top: 0;
            border: 0;
            height: 32px;
            line-height: 27px;
            padding-left: 41px;
            background-image: url("../images/berror-tips.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<%@include file="/html/common/clearfix.jsp" %>
<div style="position: relative;overflow: hidden;">
    <div class="a-top-banner"></div>
    <h2 class="a-top-banner-h2">诚信、专业、极致、服务至上</h2>
</div>
<!-- 立即评价 -->
<div class="a-at-evaluation" id="checkMsg111" style="display: none">
    <div class="a-at-row">
        <div class="a-at-left">
            <div class="head" v-bind:style="{backgroundImage: 'url('+staffMsg1.url+')'}"></div>
            <span class="a-star-title">星级：</span>
            <el-rate style="float: left;" disabled v-model="starNumber"></el-rate>
        </div>
        <div class="a-at-right">
            <h1 class="a-title">{{staffMsg1.name}}</h1>
            <div class="a-at-right-item">
                <div class="left">
                    <ul>
                        <li><span class="a-iconfont-box"><i class="iconfont">&#xe72c;</i></span>性别：{{staffMsg1.sex}}
                        </li>
                        <li><span class="a-iconfont-box"><i class="iconfont"
                                                            style="font-size: 15px;">&#xe671;</i></span>工号：{{staffMsg1.number}}
                        </li>
                        <li><span class="a-iconfont-box"><i class="iconfont">&#xe674;</i></span>所属渠道：<span
                                :title="staffMsg1.channel">{{staffMsg1.channel}}</span></li>
                    </ul>
                </div>
                <div class="right">
                    <ul>
                        <li><span class="a-iconfont-box"><i class="iconfont">&#xe826;</i></span>所属地区：<span
                                :title="staffMsg1.adder">{{staffMsg1.adder}}</span></li>
                        <li><span class="a-iconfont-box"><i class="iconfont"
                                                            style="font-size: 17px;vertical-align: middle;">&#xe676;</i></span>服务案例：<span
                                :title="staffMsg2.servicecase">{{staffMsg2.servicecase}}</span></li>
                        <li><span class="a-iconfont-box"><i class="iconfont"
                                                            style="font-size: 18px;">&#xe675;</i></span>身份证：{{staffMsg1.idcard}}
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <div class="a-at-bottom">
        <button type="button" class="a-submit" @click="linkEvaluation">立即评价</button>
        <span class="a-return-check" @click="returnCheck">返回查询</span>
    </div>
</div>
<%@include file="/html/common/footer.jsp" %>

</body>
<script>
    var map = <%=session.getAttribute("webSite_map") %>;
    if (map == null) {
        window.location.href = '/html/staff/html/index.jsp'
    } else {
        var serviceList = <%=session.getAttribute("webSite_serviceList") %>;
        if (serviceList.length == 0) {
            serviceList = [{servicecase: ""}];
        }
        new Vue({
            el: '#checkMsg111',
            data: function () {
                return {
                    staffMsg1: map,
                    staffMsg2: serviceList[0],
                    starNumber: map.score
                }
            },
            mounted: function () {
                document.querySelectorAll('#checkMsg111')[0].style.display = 'block'
            },
            methods: {
                /*
                 * 返回查询
                 * */
                returnCheck: function (formName) {
                    window.location.href = '/html/staff/html/index.jsp'
                },
                /*
                 * 立即评价
                 * */
                linkEvaluation: function () {
                    window.location.href = '/html/staff/html/evaluation.jsp'
                }
            }
        })
    }
</script>
<script>
    $(".rightIcon").on("click", ".ri1", function () {
        $("html,body").animate({"scrollTop": 0}, 500);
    })

    /*页面右侧信息*/
    //超过一定高度时， 显示返回顶部按钮
    $(window).scroll(function () {
        var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
        if (scrollTop > 200) {
            $('.ri1').show();
        }
        else {
            $('.ri1').hide();
        }
    });
</script>
</html>