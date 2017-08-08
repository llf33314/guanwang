<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
    <%@include file="/html/common/css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <script type="text/javascript" src="../js/layer/layer.js?<%= System.currentTimeMillis()%>"></script>
    <script type="text/javascript" src="./js/areaCity.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#banner").slideLx({"height": 434});
        })
    </script>
    <title>代理查询</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
</head>
<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <!--中间内容-->

    <div class="newagency-container">
        <img src="${imageUrl}/product-center/agencn-title.png" alt="">
        <div class="inputNewAgenry">
            <span>代理商查询</span>
            <input type="text" placeholder="请输入合作名称和编号">
            <div class="searchSmall-title">
                <img class="searchSmall" src="${imageUrl}/product-center/searchsmall.png" alt="">
            </div>
        </div>
    </div>
    <div class="newagency-contener clear">
        <div class="baiduMap fl">
            <div>
                <!--//==================lzw代码begin=======================-->
                <div class="info baiduMapCenter">
                    <div>
                        <span>省份</span>
                        <select id="s_province" name="s_province"></select>  
                        <span>城市</span>
                        <select id="s_city" name="s_city"></select>  
                        <!-- <select id="s_county" name="s_county"></select> -->
                        <script class="resources library" src="area.js" type="text/javascript"></script>

                        <script type="text/javascript">_init_area();</script>
                    </div>
                    <div id="show"></div>
                </div>


                <div class="baiduMapCenter ml36">
                    <span>代理商类型</span>
                    <select name="" id=>
                        <option value="">代理商类型</option>
                    </select>
                </div>
            </div>
            <div class=""></div>
            <div class="imgMap">
                <img class=" " src="${imageUrl}/product-center/Map.png" alt="">
            </div>
        </div>
        <div class="newagency-ctn fr">
            <h3>未找到结果</h3>
            <ul>
                <li class='infoagnery'>
                    <span>该广东谷通科技有限公司</span>
                    <span class='bindInfo'>直属</span>
                    <span class='distance'>1425km</span>
                    <ul>
                        <li>
                            <span class="infolist">广东省惠州公司</span>
                        </li>
                        <li>
                            <span class="infolist">电话：075245689</span>
                        </li>
                    </ul>
                </li>
                <li class='infoagnery'>
                    <span>虚拟代理点</span>
                    <span class='bindagency'>代理</span>   
                    <span class='distance'>1425km</span>
                    <ul>
                        <li> 
                            <span class="infolist">广东省惠州公司</span>
                        </li>
                        <li>
                            <span class="infolist">电话：075245689</span>
                        </li>
                    </ul>
                </li>
                <li class='infoagnery'>
                    <span>虚拟代理点</span>
                    <span class='bindserver'>代理</span>
                    <span class='distance'>1425km</span>
                    <ul>
                        <li>
                            <span class="infolist">广东省惠州公司</span>
                        </li>
                        <li>
                            <span class="infolist">电话：075245689</span>
                        </li>
                    </ul>
                </li>

                <li class='infoagnery'>
                    <span>该地区无代理商</span>
                </li>
                <div class='contactNumber'>
                    <span>详情可联系：</span>
                    <span class="mub">1371964856</span>
                </div>
            </ul>
        </div>
    </div>

    <!--中间内容-->


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>


<script type="text/javascript">
    var Gid = document.getElementById;
    var showArea = function () {
        Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
                Gid('s_city').value + " - 县/区" +
                Gid('s_county').value + "</h3>"
    }
    Gid('s_county').setAttribute('onchange', 'showArea()');
</script>


<script type="text/javascript">


    $(function () {
        //点击查询
        $("input[type='submit']").click(function () {
            var name = $("#s").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/agent/html/query.action",
                data: {name: name},
                type: 'post',
                success: function (data) {
                    if (data.success) {
                        layer.alert(data.msg);
                    } else {
                        layer.alert(data.msg);
                    }
                },

            });
        });
    });
</script>
</body>
</html>
