<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
    <%@include file="/html/common/css.jsp" %>
	<%@include file="/html/common/js.jsp" %>	
<script type="text/javascript" src="../js/layer/layer.js?<%= System.currentTimeMillis()%>"></script>
<script type="text/javascript">
    $(function () {
        $("#banner").slideLx({"height": 434});
    });
    
</script>
<title>代理查询</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
</head>
<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <!--中间内容-->

    <div class="agency-container">

        <div class="agency-content">
            <h1><img src="${imageUrl}/logo2.png" alt=""></h1>
            <h2>合作商授权认证查询</h2>
            <div class="search_box">
                    <span class="search-wrap  clear">
                        <input type="text" id="s" value="" class="swap_value fl"/>
                        <input type="submit" class="swap_img fl" value="" />
                    </span>
            </div>
         
        </div>
   <div class='hadletin' >已有<span id="agentCount"></span>家合作商入驻</div>
    </div>


    <!--中间内容-->
    <!--代理商没有信息-->
    <div class="popup_dialog_confirm" id="dialog1" style="display: none;">
        <div class="popup_dialog ">
            <!--标题-->
            <div class="popup_dialog_hd clear"> 

                <strong class="fr popup_dialog_title"><img class='fl' id="box_close" src="${imageUrl}/product-center/close.png" alt=""></strong>
            </div>
            <!--内容-->
            <div class="popup_dialog_bd" id="nothingMsg">
                <h1>温馨提示</h1>
                <p class="nothing">未查到相关合作商！</p>
            </div>
            <!--按钮-->

        </div>
    </div>

    <!--代理商列表-->
    <div class="popup_dialog_confirm" id="dialog2" style="display: none;">
        <div class="popup_dialog ">
            <!--标题-->
            <div class="popup_dialog_hd clear">

                <strong class="fr popup_dialog_title"><img class='fl' id="box_close" src="${imageUrl}/product-center/close.png" alt=""></strong>
            </div>
            <!--内容-->
            <div class="popup_dialog_bd">
                <h1 class="agent_type" style='font-size: 24px'>合作商列表</h1>
                <ul class="listInfo" id="listInfoShow">
                    <!-- <li class="">
                      <span class="dot"></span><span class="">惠州乐知软件科技有限公司</span>
                    </li>
                     <li class="">
                      <span class="dot"></span><span class="">惠州乐知软件科技有限公司</span>
                    </li>
                    
                     <li class="">
                      <span class="dot"></span><span class="">惠州乐知软件科技有限公司</span>
                    </li> -->
                    

                </ul>
            </div>
            <!--按钮-->

        </div>
    </div>

    <!--代理商信息--> 
    <div class="popup_dialog_confirm" id="dialog3" style="display: none;">
        <div class="popup_dialog ">
            <!--标题-->
            <div class="popup_dialog_hd clear">

                <strong class="fr popup_dialog_title"><img class='fl' id="box_close" src="${imageUrl}/product-center/close.png" alt=""></strong>
            </div>
            <!--内容-->
            <div class="popup_dialog_bd">
                <h1 id="agent_type">城市代理商</h1>
                <ul class="listInfo">

                    <li class="clear">
                       <img class='fl' src="${imageUrl}/product-center/an1.png" alt="">
                        <span class="fl">授权证书编号：</span><span id="auth_code" class="fl"></span>
                    </li>
                    <li class="clear">
                      <img class='fl' src="${imageUrl}/product-center/an2.png" alt="">
                        <span class="fl">公司名称：</span><span id="company" class="fl"></span>
                    </li>
                    <li class="clear">
                       <img class='fl' src="${imageUrl}/product-center/an3.png" alt="">
                        <span class="fl">合作区域：</span><span id="coo" class="fl"></span>
                    </li>
                    <li class="clear">
                        <img class='fl' src="${imageUrl}/product-center/an4.png" alt="">
                        <span class="fl">姓名：</span><span id="name" class="fl"></span>
                    </li> <li class="clear">
                   <img class='fl' src="${imageUrl}/product-center/an5.png" alt="">
                    <span class="fl">手机：</span><span id="phone" class="fl"></span>
                </li> <li class="clear">
                   <img class='fl' src="${imageUrl}/product-center/an6.png" alt="">
                    <span class="fl">QQ ：</span><span id="qq" class="fl"></span>
                </li> <li class="clear">
                  <img class='fl' src="${imageUrl}/product-center/an7.png" alt="">
                    <span class="fl">详细地址：</span><span id="add" class="fl"></span>
                </li>

                </ul>
            </div>
            <!--按钮-->

        </div>
    </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
    </div>
<script type="text/javascript">
	var dls = [];
	$(function(){
		//获取入住代理数量
		$.ajax({
			url:"${pageContext.request.contextPath}/agent/html/getAgentCount.do",
			success:function(data){
				if(data != "" && data != null){
					$("#agentCount").text(data.agentCount);
				}
			}
		});
		//弹窗关闭按钮
		$(document).on("click","#box_close",function(){
			$("#dialog1").hide();
			$("#dialog2").hide();
			$("#dialog3").hide();
		});
		//点击查询
		$("input[type='submit']").click(function(){
			var name = $("#s").val();
			if(name == ''){
				return;
			}
			$.ajax({
				url:"${pageContext.request.contextPath}/agent/html/query.action",
				data:{name:name},
				type:'post',
				success:function(data){
					if(data.success){
						if(data.list != null && data.list !=""){
							//showData(data);
							dls = data.list;
							showList(dls);
							return;
						}else{
							//layer.alert(data.msg);
							$("#dialog1").show();
						}
					}else{
						//layer.alert(data.msg);
						$("#dialog1").show();
					}
				}
			});
		});
	});
	// 显示代理商列表
	function showList(data){
		var html = "";
		console.log(data.length);
		var lengthI = data.length;
		for(var i = 0; i < lengthI; i++){
			var obj = data[i];
			html += "<li class='''>" + 
            "<a href='javascript:void(0);' onclick='showData(" + i + ");'>" + 
            "<span class='dot'></span><span class=''>" + obj.name + "</span></a>" + 
            "</li>";
		}
		$("#listInfoShow").html(html);
		$("#dialog2").show();
	}
	//显示代理商信息
	function showData(data){
		$("#dialog2").hide();
		$("#dialog1").hide();
		$("#auth_code").text("");
		$("#company").text("");
		$("#coo").text("");
		$("#name").text("");
		$("#phone").text("");
		$("#qq").text("");
		$("#add").text("");
		//var agent = data.list;
		var agent = dls[data];
		$("#auth_code").text(agent.auth_code);
		$("#company").text(agent.company);
		$("#coo").text(agent.coo_province+agent.coo_city+agent.coo_area);
		$("#name").text(agent.name);
		$("#phone").text(agent.phone);
		$("#qq").text(agent.qq);
		$("#add").text(agent.add_province+agent.add_city+agent.add_area);
		var agent_type = agent.agent_type;
		var agent_type_name = "";
		switch(agent_type){
		case 0:
			agent_type_name = "普通代理商";
			break;
		case 1:
			agent_type_name = "城市代理商";
			break;
		case 2:
			agent_type_name = "县区级代理商";
			break;
		case 3:
			agent_type_name = "城市合伙人";
			break;
		case 4:
			agent_type_name = "城市服务商";
			break;
		}
		$("#agent_type").text(agent_type_name);
		$("#dialog3").show();
	}
</script>

<style>
.hadletin{
    text-align: center;
    font-size: 24px;
    margin: 25px;
    color: white;
}
</style>
<style>
        .popup_dialog {
            position: fixed;
            z-index: 13;
            width: 708px;
            height: 437px; 
            top: 50%;
            left: 50%;
            
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
               background-color: rgba(102, 101, 101, 0.89);
            text-align: center;
            border-radius: 8px;
        }

        .popup_dialog_confirm .popup_dialog .popup_dialog_hd {
            padding:10px;
            padding-bottom: 0px; 
            /*background: #3785ff;*/ 
        }

        .popup_dialog_title {
            font-weight: 400;
            font-size: 17px;
            font-family: '微软雅黑';
            color: white;
            cursor: pointer;
        }

        .popup_dialog_bd {
            text-align: center;
            padding: 0 5px;
            font-size: 15px;
            color: #353535;
            word-wrap: break-word;
            word-break: break-all;
        }
        .popup_dialog_bd select{
            width: 60px;
            height: 30px;
            margin: 20px 0;
        }

        .popup_dialog_ft {
            position: relative;
            line-height: 40px;
        margin-bottom: 10px;
            font-size: 17px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
        }



        .popup_dialog_ft a {
            position: relative;
            width: 120px;
            text-decoration: none;
            background: #3785ff;
            color: white !important;
            display: block !important;
            margin: 0 auto;
        }


        .popup_btn_dialog.primary {
            color: #3785ff;
        }


        .clear {
            zoom: 1;
        }

        .clear:after {
            content: '';
            display: block;
            clear: both;
            height: 0;
        }
        .fl {
            float: left;
        }
        .fr {
            float: right;
        }
        .listInfo{

            text-align: left;
        }
        .listInfo li{
            margin: 10px 0;
        }
        .listInfo li span{
            padding: 5px ;
            color: #fefefe;
            font-weight: bold;
            font-size: 16px;
        }
        .popup_dialog_bd h1{
            font-size: 26px;
            text-align: center;
            color: #fefefe;
        }
        .popup_dialog_title img{
            width: 28px;
        }
        
        .listInfo li {
            margin:  15px;
}
.nothing{
    font-size: 28px;
    color: white;
    text-align: center;
    width: 100%;
    margin-top: 100px;
}
.popup_dialog_bd h1 {
    font-size: 34px;
    text-align: center;
    color: #fefefe;
} 
.dot{
    width: 8px;
    height: 8px;
    border-radius: 4px;
    vertical-align: middle;
    padding: 0 !important;
    margin-right: 5px;
    display: inline-block;
    background: white;
}


        .listInfo {
            text-align: left;
            /*list-style-type: disc;*/
        }
    </style>
</body>
</html>
