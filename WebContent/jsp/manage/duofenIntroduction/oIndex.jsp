<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>办公环境</title>
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
	                        <div class="muted pull-left">办公环境</div>
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
	                            
	                            <table cellpadding="0" cellspacing="0" border="0" 
	                            	class="table table-striped table-bordered" id="example2">
	                            	<tr>
	                            		<td><img ii="1" src="/images/duofenIntroduction/plus.png"/></td>
	                            		<td><img ii="2" src="/images/duofenIntroduction/plus.png"/></td>
	                            	</tr>
	                            	<tr>
	                            		<td><img ii="3" src="/images/duofenIntroduction/plus.png"/></td>
	                            		<td><img ii="4" src="/images/duofenIntroduction/plus.png"/></td>
	                            	</tr>
	                            </table>
	                        </div>
	                    </div>
	                </div>
	                <!-- /block -->
	            </div>
	        </div>
	    </div>
	    
	</div>
	<!--/.fluid-container-->
	<script>
	var img_i = 1;
	$(function() {
		var a = WSFUNCTION.doPost("/duofenIntr/html/list", {imgtype: 0});
		if(a.length > 0){
			var b = $("#example2 img");
			for(var i=0;i<b.length;i++){
				$(b[i]).attr("src", a[i].imgurl);
			}
		}
		
		$("#example2 td").on("click", function(){
			img_i = $(this).find("img").attr("ii");
			selectModel();
		});
		
		$("#save").on("click", function(){
			var is = $("#example2 img"), islist = "[";
			for(var i=is.length-1;i>=0;i--){
				islist += "{imgtype: '0', imgurl: '"+$(is[i]).attr("src")+"'},";
			}
			islist = islist.substring(0, islist.length-1);
			islist += "]"
			
			var c = WSFUNCTION.doPostReturnFull("/duofenIntr/add", {imgtype: 0, imgurl:islist});
			if(c.status == 1) WSFUNCTION.msgBox("信息", c.msg);
		});
		
		$("#selectMaterial").bind("click", function(){
		    var array = getMaterialArray();
		    $("img[ii='"+img_i+"']").attr("src", array[0]);
		});
	});
	
	function selectModel(){
		$("#materialModal").modal('toggle');
		initMaterial();
		materialParams.rows = materialDefulatRows;
		materialTabClick(1);
	}
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
	<script type="text/javascript" src="templatelibs/bootstrap/js/bootstrap.js"></script>
</body>
</html>