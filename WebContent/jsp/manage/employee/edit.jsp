<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 导入素材库jsp -->
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看</title>
<script src="/templatelibs/vendors/ajaxfileupload.js"></script>
<script type="text/javascript" src="templatelibs/vendors/jquery.uniform.min.js"></script>
<script type="text/javascript" src="/js/provinceCityArea.js"></script>
<style type="text/css">
	select {
	    width: 120px;
	    background-color: #fff;
	    border: 1px solid #ccc;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">员工信息</div>
						</div>	
						<div class="block-content collapse in">
							<div class="span12">
								<form 
								class="form-horizontal" enctype="multipart/form-data" method="post">
									<fieldset >
										<legend>编辑</legend>
										<input type="hidden" id="id" name="id" >
										<div class="row-fluid">
											<div class="span6">
												<div class="control-group">
													<label class="control-label">员工工号</label>
													<div class="controls">
														<input id="number" name="number"  class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">员工姓名</label>
													<div class="controls">
														<input id="name" name="name"  class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">员工性别</label>
													<div class="controls">
														<label >
															  <input type="radio" name="sex" id="sex1" value="男" checked="checked"> 男
															  <input type="radio" name="sex" id="sex2" value="女"> 女
														</label>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">员工身份证</label>
													<div class="controls">
														<input id="idcard" name="idcard" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">所属地区</label>
													<div class="controls">
														<input id="adder" name="adder" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">所属渠道</label>
													<div class="controls">
														<input id="channel" name="channel"  class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<%-- <div class="control-group">
													<label class="control-label">创建人</label>
													<div class="controls">
														<input name="create_person" value="${employee.create_person }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">创建时间</label>
													<div class="controls">
														<input name="create_time" value="${employee.create_time }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div> --%>
												<div class="control-group">
													<label class="control-label">员工图片URL</label>
													<div class="controls">
														<!-- <input id="url" name="url"  class="input-xlarge focused" type="text" style="height: 30px"> -->
														<input value="选择图片" class="btn btn-primary" data-toggle="modal" style="width: 110px" onclick="selectModel()" >
														<img class="thumbnail" id="url" src='' width='100' height='100'>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">五星数量</label>
													<div class="controls">
														<!-- <input id="score" name="score"  class="input-xlarge focused" type="text" style="height: 30px"> -->
														<select name="score">
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
														</select>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">五星评价言论</label>
													<div class="controls">
														<textarea class="input-xlarge textarea" name="evaluate" id="evaluate" placeholder="Enter text ..." style="width: 500px; height: 100px">${employee.evaluate }</textarea>
													</div>
												</div>
												
												<div style="padding-left: 180px">
													<a type="button" class="btn btn-primary" onclick="employee_edit();">保存</a>
													<a type="button" class="btn btn-primary" href="javascript:gtView('jsp/manage/employee/index.jsp');">返回</a>
												</div>
											</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>					
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			var id = <%=request.getParameter("id") %>;
			if(id != null && id != ""){
				$.ajax({
					url:"employee/listOne.do",
					type:'post',
					async: false,
					data:{id:id},
					success:function(data){
						var employee = data.employee;
						$("#id").val(employee.id);
						$("#number").val(employee.number);
						$("#name").val(employee.name);
						$("#idcard").val(employee.idcard);
						$("#adder").val(employee.adder);
						$("#channel").val(employee.channel);
						$("#url").attr("src",data.imagesUrl+employee.url);
						$("select[name='score']").val(employee.score);
						$("#evaluate").val(employee.evaluate);
						var sex = employee.sex;
						if(sex == "男"){
							$("#sex1").attr("checked","checked");
						}
						if(sex == "女"){
							$("#sex2").attr("checked","checked");
						}
					},
					error: function(){
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				});
			}
		});
	</script>
	<script type="text/javascript">
		$(function(){
			$("#number").blur(function(){
				$("#number").siblings().remove();
				$("#number").parent().parent().removeClass("error");
				if($("#number").val()==""){
					$("#number").parent().parent().addClass("error");
					$("#number").after("<font color='#b94a48'>不能为空</font>");
				}else{
					
				}
			});
			$("#name").blur(function(){
				$("#name").siblings().remove();
				$("#name").parent().parent().removeClass("error");
				if($("#name").val()==""){
					$("#name").parent().parent().addClass("error");
					$("#name").after("<font color='#b94a48'>不能为空</font>");
				}else{
					
				}
			});
			checkNull("idcard");
		});
		function checkNull(id){
			$("#"+id).blur(function(){
				$("#"+id).siblings().remove();
				$("#"+id).parent().parent().removeClass("error");
				if($("#"+id).val()==""){
					$("#"+id).parent().parent().addClass("error");
					$("#"+id).after("<font color='#b94a48'>不能为空</font>");
				}else{
					
				}
			});
		}
		function employee_edit(){
			var id = $("#id").val();
			var number = $("#number").val();
			var name = $("#name").val();
			var idcard = $("#idcard").val();
			var adder = $("#adder").val();
			var channel = $("#channel").val();
			var src = $("#url").attr("src");
			if(src != null && src !=""){
				url = src.substring(src.lastIndexOf("/")+1,src.length);
			}
			var score = $("select[name='score']").val();
			var evaluate = $("#evaluate").val();
			var sex = $("input[name='sex']:checked").val();
			$.ajax({
				url:"employee/edit.do",
				type:'post',
				async: false,
				data:{
					id:id,
					number : number,
					name : name,
					idcard : idcard,
					adder : adder,
					channel : channel,
					url : url,
					score : score,
					evaluate : evaluate,
					sex:sex
				},
				success:function(data){
					gtView("jsp/manage/employee/index.jsp");
				}
			});
		}
	</script>
	<script type="text/javascript">
		function selectModel(){
			$("#materialModal").modal('toggle');
			initMaterial();
			materialParams.rows = materialDefulatRows;
			materialTabClick(1); // 默认加载图片
		}
	</script> 
	<script>
	   $(function () {
		   //素材库选择图片后获得路径并显示
		   $("#selectMaterial").bind("click", function(){
			   var array = getMaterialArray(); // 得到结果的函数,结果为数组
			   $("#url").attr("src",array[0]);
			 });
	   });
	</script>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="templatelibs/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="js/manage/material/ajaxfileupload-v2.1.js"></script>
</body>
</html>