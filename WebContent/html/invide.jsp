<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>招贤纳士</title>
    <%@include file="/html/common/css.jsp" %>
	<%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $("#banner").slideLx({"height": 434});
        });
    </script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <div class="aboutus_container">
        <!--中间内容-->

        <div>
            <ul class="aboutus_title">
                <a href="aboutUs.jsp"><li >多粉简介</li></a>
                <a href="honor.jsp"><li>所获荣誉</li></a>
                <a href=""><li  style="background:#c8e6ca ">加入我们</li></a>
                <a href="contract.jsp"><li>联系我们</li></a>
            </ul>
        </div>


        <!--中间内容-->
    </div>
    <!--中间内容-->

    <img class="img-poster" src="${imageUrl}/aboutus/join-poster.png" alt="">
    <div style="width: 100%;background: #ebebeb;height:auto;">
        <div class="aboutus_content">
            <!--中间内容-->
            <ul class="invite-info clearfix">
            </ul>

            <div class="invite_info_contract">
                <div class="t">
                    <em class="bb_line"></em>
                    <strong>招聘联系</strong>
                    <em class="bb_line"></em>
                </div>
                <div class="invite_bottom_info">
                    <div class="ibic">
                        <span>电话：0752-2329001</span>
                        <span>联系人：钟小姐</span>
                    </div>
                    <div class="ibic">
                        <span>手机：18002294393</span>
                        <span>邮箱：sdzp@deeptel.cn</span>
                    </div>
                </div>
            </div>
            <!--中间内容-->
        </div>


    </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"${pageContex.request.contextPath}/joinus/html/listPhoto.do",
			type:"post",
			success:function(data){
				if(data != null && data != undefined){
					var imagesUrl = data.imagesUrl;
					var list = data.data;
					var result ="";
					if(list != null && data != undefined){
						for(var i=0;i<list.length;i++){
							result += "<li><img src='"+list[i].imagesUrl+"' alt='图片挂啦'></li>";
						}
						$(".invite-info").html(result);
					}
				}
			}
		});
	});
</script>
</html>

