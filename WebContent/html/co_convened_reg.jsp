<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>合作加盟注册</title>
    <link rel="Shortcut Icon" href="/images/alogo.png" type="image/x-icon">
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript" src="../js/layer/layer.js?<%= System.currentTimeMillis()%>"></script>
<script type="text/javascript" src="../js/provinceCityArea.js"></script>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":403});
})
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/member/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containter coopera_reg wrap1000">
           <div class="ptitle">
                

                <div class="dltable createAlbum">
                    <dl class="clearfix">
                        <dt><span><span class="red">*</span>姓名</span></dt>
                        <dd>
                            <input type="text" name="name" value="" class="base_iptxt"/>
                        </dd>
                    </dl>
                    <dl class="clearfix">
                        <dt><span><span class="red">*</span>手机</span></dt>
                        <dd>
                            <input type="text" name="phone" value="" class="base_iptxt"/>
                        </dd>
                    </dl>
                    <dl class="clearfix">
                        <dt><span><span class="red">*</span>QQ</span></dt>
                        <dd>
                            <div class="clearfix radiolist">
                            <input required="required" type="text" name="qq" value="" class="base_iptxt"/>
                            </div>
                        </dd>
                    </dl>
                    <dl class="clearfix">
                        <dt><span>公司名称</span></dt>
                        <dd>
                            <input type="text" name="company" value="" class="base_iptxt"/>
                        </dd>
                    </dl>
                    <dl class="clearfix">
                        <dt><span><span class="red">*</span>详细地址</span></dt>
                        <dd>
                            <select id="add_province" name="add_province">
                            </select>
                            <select id="add_city" name="add_city">
                            </select>
                            <select hidden="true" id="add_area" name="">
                            </select>
                            <input type="text" name="add_area" value="" class="base_iptxt"/>
                        </dd>
                    </dl>
                    <dl class="clearfix">
                        <dt><span><span class="red">*</span>合作区域</span></dt>
                        <dd>
                            <select id="coo_province" name="coo_province">
                            </select>
                            <select id="coo_city" name="coo_city">
                            </select>
                            <select id="coo_area" name="coo_area">
                            </select>
                        </dd>
                    </dl>
                    <dl class="clearfix" id="v_remark" style="display: none;">
                        
                    </dl>

                    <div class="fcontrol">
                        <input type="submit" name="save" id="saveId" value="保 存" class="base_btn savebtn" />
                        <input type="submit" name="cancel" value="取 消" class="base_btn cancelbtn" />
                    </div>
                </div>
           </div>
     </div>

     <div class="tipsbox" style="display:none;">
         <div class="tb_bg"></div>
         <div class="tb_main">
             <a href="javascript:;" class="close"><img src="${imageUrl}/hzzj/close.png" onclick="close_tipsbox()"></a>
             <strong><img src="${imageUrl}/hzzj/success.jpg"/><span>提交成功!</span></strong>
             <p>系统将对您的资料进行审核，将在一个工作日内给您电话答复，请您耐心的等待，谢谢合作！</p>
             <a href="javascript:;" class="base_abtn" onclick="close_tipsbox()">确 定</a>
         </div>
     </div>

<script> 
	var v = <%=request.getParameter("v") %>;
	var flag = true;
	var open_tipsbox = function(){$(".tipsbox").show();}
    var close_tipsbox = function(){$(".tipsbox").hide();document.location.reload();}
	$(function(){
		switch(v){
		case 1:
			$('.ptitle').prepend('<h2>申请成为城市代理商</h2><p>请认真填写以下表格，打<span class="red">" * "</span>为必填项</p>');
			$('#v_remark').html('<dt><span>简介</span></dt><dd><textarea class="base_textarea">'
					+'</textarea><p class="red">*请如实填写相关信息，以便我们审核通过。</p></dd>');
			break;
		case 2:
			$('.ptitle').prepend('<h2>申请成为县区级代理商</h2><p>请认真填写以下表格，打<span class="red">" * "</span>为必填项</p>');
			$('#v_remark').html('<dt><span>简介</span></dt><dd><textarea class="base_textarea">'
					+'</textarea><p class="red">*请如实填写相关信息，以便我们审核通过。</p></dd>');
			break;
		case 3:
			$('.ptitle').prepend('<h2>申请成为城市合伙人</h2><p>请认真填写以下表格，打<span class="red">" * "</span>为必填项</p>');
			$('#v_remark').html('<dt><span>简介</span></dt><dd><textarea class="base_textarea">'
					+'</textarea><p class="red">*请如实填写相关信息，以便我们审核通过。</p></dd>');
			break;
		case 4:
			$('.ptitle').prepend('<h2>申请成为城市服务商</h2><p>请认真填写以下表格，打<span class="red">" * "</span>为必填项</p>');
			$('#v_remark').html('<dt><span>简介</span></dt><dd><textarea class="base_textarea">'
					+'</textarea><p class="red">*请如实填写相关信息，以便我们审核通过。</p></dd>');
			break;
		default:
			$('.ptitle').prepend('<h2>填写表格</h2><p>加入合作伙伴计划并开始享受多粉为您带来的各种帮助，打" <span class="red">*</span> "为必填项</p>');
		}
		
	    region_init("coo_province","coo_city","coo_area");  
	    region_init("add_province","add_city","add_area");
	    $("#add_province").prepend("<option selected='selected'>请选择省份</option>");
	    $("#add_city").prepend("<option selected='selected'>请选择城市</option>");
	    $("#coo_province").prepend("<option selected='selected'>请选择省份</option>");
	    $("#coo_city").prepend("<option selected='selected'>请选择城市</option>");
	    $("#coo_area").prepend("<option selected='selected'>请选择区域</option>");
	    //表单校验
	    //姓名验证
		$("input[name='name']").blur(function(){
			  $("input[name='name']").siblings().remove();
		      if ($("input[name='name']").val().search(/^[\u0391-\uFFE5\w]+$/) !=-1){
		    	//对的
		    	 //服务器校验
				$.ajax({
					url:"/agent/html/checkName.do",
					type:'post',
					data:{name:$("input[name='name']").val()},
					success:function(data){
						if(data.success){
							flag = true;
						}else{
							$("input[name='name']").after("<font color='red'>"+data.msg+"</font>");
							flag = false;
						}
					}
				});
		      }else{
		    		//不对
		    	  $("input[name='name']").after("<font color='red'>格式错误</font>");
		    	  flag = false;
		      }
		});
		//验证电话号码
		$("input[name='phone']").blur(function(){
			$("input[name='phone']").siblings().remove();
			var p = $("input[name='phone']").val();
		    if(p && /^1[3|4|5|8]\d{9}$/.test(p)){
		        //对的
		        //服务器校验
				$.ajax({
					url:"/agent/html/checkPhone.do",
					type:'post',
					data:{phone:$("input[name='phone']").val()},
					success:function(data){
						if(data.success){
							flag = true;
						}else{
							$("input[name='phone']").after("<font color='red'>"+data.msg+"</font>");
							flag = false;
						}
					}
				});
		    } else{
		        //不对
		    	$("input[name='phone']").after("<font color='red'>格式错误</font>");
		    	flag = false;
		    }
		});
		//验证qq
		$("input[name='qq']").blur(function(){
			$("input[name='qq']").siblings().remove();
			if ($("input[name='qq']").val().search(/^[1-9]\d{4,9}$/) !=-1){  
				flag = true;
		      }else{
		    	 //不对
			    $("input[name='qq']").after("<font color='red'>格式错误</font>");
			    flag = false;
		      }
		});
		
	})
	$("#saveId").click(function(){
		var name = $("input[name='name']").val();
		var phone = $("input[name='phone']").val();
		var qq = $("input[name='qq']").val();
		var company = $("input[name='company']").val();
		var add_province = $("select[name='add_province']").val();
		var add_city = $("select[name='add_city']").val();
		var add_area = $("input[name='add_area']").val();
		var coo_province = $("select[name='coo_province']").val();
		var coo_city = $("select[name='coo_city'] ").val();
		var coo_area = $("select[name='coo_area']").val();
		var intro = $(".base_textarea").val();
		if(name == null||phone == null||qq == null||add_area==null||
				name == ""||phone == ""||qq == ""||add_area==""){
			layer.alert("未填写完整信息");
			return;
		}
		if(add_province.substring(0,3)=="请选择"||add_city.substring(0,3)=="请选择"||
				coo_province.substring(0,3)=="请选择"||coo_city.substring(0,3)=="请选择"||
				coo_area.substring(0,3)=="请选择"){
			layer.alert("未填写完整信息");
			return;
		}
		var data = {
				name:name,
				phone:phone,
				qq:qq,
				company:company,
				add_province:add_province,
				add_city:add_city,
				add_area:add_area,
				coo_province:coo_province,
				coo_city:coo_city,
				coo_area:coo_area,
				agent_type:v,
				intro:intro
		}
		if(flag){
			$.ajax({
				url:"${pageContext.request.contextPath}/agent/html/edit.do",
				data:data,
				type:"post",
				success:function(data){
					if(data.success){
						/* layer.alert("申请成功！,请等待工作人员审核",function(){
							location.href = "/html/co_convened.jsp";
						}); */
						open_tipsbox();
					}else{
						layer.alert(data.msg);					
					}
				}
			});
		}else{
			layer.alert("请填写正确信息");
		}
	});
</script> 

     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>







