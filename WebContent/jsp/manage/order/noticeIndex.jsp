<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单通知对象</title>
<style type="text/css">
	#example2 td{
		height: 254px;
		text-align: center;
	}
	#example2 img{
		height: 254px;
		width: 477px;
	}
</style>
</head>
<body>
	<div class="container-fluid">
	    <div class="row-fluid">
	        <!--/span-->
	        <div class="span12" id="content">
	             
	             <div class="row-fluid">
	                <!-- block -->
	                <div class="block">
	                    <div class="navbar navbar-inner block-header">
	                        <div class="muted pull-left">订单通知对象</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar" style="text-align: right;">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" id="save">
	                                 	<button class="btn btn-primary">保存</button>
	                                 </a>
	                              </div>
	                           </div>
	                            
	                            <!-- <div class="control-group">
									<label class="control-label span5" style="margin-left: 25px;">手机号码</label>
									<label class="control-label span3" >邮箱</label>
								</div> -->
	                            <div class="control-group">
									<span class="help-inline" ></span>
									<input type="hidden" value="" id="id1">
									<input class="input-xlarge span6" id="tel1" type="text" style="height: 30px;" placeholder="手机号码" maxlength="12"
										onkeyup="this.value=this.value.replace(/[^\-?\d.]/g,'')" 
										onafterpaste="this.value=this.value.replace(/[^\-?\d.]/g,'')" >
									<input class="input-xlarge span6" id="mail1" type="text" style="height: 30px;" placeholder="邮箱" maxlength="50">
								</div>
	                            <div class="control-group">
									<span class="help-inline"></span>
									<input type="hidden" value="" id="id2">
									<input class="input-xlarge span6" id="tel2" type="text" style="height: 30px;" placeholder="手机号码" maxlength="12"
										onkeyup="this.value=this.value.replace(/[^\-?\d.]/g,'')" 
										onafterpaste="this.value=this.value.replace(/[^\-?\d.]/g,'')" >
									<input class="input-xlarge span6" id="mail2" type="text" style="height: 30px;" placeholder="邮箱" maxlength="50">
								</div>
	                        </div>
	                    </div>
	                </div>
	                <!-- /block -->
	            </div>
	        </div>
	    </div>
	    
	</div>
	<script>
	var img_i = 1;
	$(function() {
		var a = WSFUNCTION.doPost("/webOrder/html/noticeList", {});
		console.log(a);
		if(a.length > 0){
			$('#id1').val(a[0].id);
			$('#id2').val(a[1].id);
			$('#tel1').val(a[0].telphone);
			$('#mail1').val(a[0].email);
			$('#tel2').val(a[1].telphone);
			$('#mail2').val(a[1].email);
		}
		
		$("#save").on("click", function(){
			var islist = "[";
			islist += "{id:'"+$('#id1').val()+"', telphone: '"+$('#tel1').val()+"', email: '"+$('#mail1').val()+"'},";
			islist += "{id:'"+$('#id2').val()+"', telphone: '"+$('#tel2').val()+"', email: '"+$('#mail2').val()+"'},";
			islist = islist.substring(0, islist.length-1);
			islist += "]"
			
			var c = WSFUNCTION.doPostReturnFull("/webOrder/saveNoticeObject", {wonstr: islist});
			if(c.status == 1) WSFUNCTION.msgBox("信息", c.msg);
		});
		
	});
	
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
</body>
</html>