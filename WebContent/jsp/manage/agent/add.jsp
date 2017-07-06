<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增</title>
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
							<div class="muted pull-left">代理信息</div>
						</div>	
						<div class="block-content collapse in">
							<div class="span12">
								<form action="${pageContext.request.contextPath }/agent/edit.action" 
								class="form-horizontal" enctype="multipart/form-data" method="post">
									<fieldset >
										<legend>新增</legend>
										<input type="hidden" name="id" value="${agent.id }">
										<div class="row-fluid">
											<div class="span6">
												<div class="control-group">
													<label class="control-label">姓名</label>
													<div class="controls">
														<input name="name" value="${agent.name }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">手机</label>
													<div class="controls">
														<input name="phone" value="${agent.phone }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">QQ</label>
													<div class="controls">
														<input name="qq" value="${agent.qq }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">合作商类别</label>
													<div class="controls">
														<select name="agent_type">
															<!-- <option value="0">普通代理</option> -->
															<option value="1">城市代理商</option>
															<option value="2">县区级代理商</option>
															<option value="3">城市合伙人</option>
															<option value="4">城市服务商</option>
															<option value="5">技术服务商</option>
														</select>
														<script type="text/javascript">
															var agentType = "${agent.agent_type}";
															$("select[name='agent_type']").children().each(function(i){
																if($(this).val() == agentType){
																	$(this).attr("selected","selected");
																}
															});
														</script>
													</div>
												</div>
												<div class="control-group" style="display: none;">
													<label class="control-label">授权证书编号</label>
													<div class="controls">
														<input name="auth_code" value="${agent.auth_code }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">公司名称</label>
													<div class="controls">
														<input name="company" value="${agent.company }" class="input-xlarge focused" type="text" style="height: 30px">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">详细地址</label>
													<div class="rows">
														<div class="controls">
															<div class="span4">
																<select id="add_province" name="add_province"></select>
															</div>
														</div>
														<div class="controls">
															<div class="span4">
																<select id="add_city" name="add_city"></select>
															</div>
														</div>
														<div class="controls">
															<div class="span4">
																<input name="add_area" value="${agent.add_area }" class="input-xlarge focused" type="text" style="height: 30px">
																<select style="display:none ;" id="add_area" name=""></select>
															</div>
														</div>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">合作区域</label>
													<div class="rows">
														<div class="controls">
															<div class="span4">
																<select id="coo_province" name="coo_province"></select>
															</div>
														</div>
														<div class="controls">
															<div class="span4">
																<select id="coo_city" name="coo_city"></select>
															</div>
														</div>
														<div class="controls">
															<div class="span4">
																<select id="coo_area" name="coo_area"></select>
															</div>
														</div>
													</div>
												</div>
												<div style="padding-left: 180px">
													<button type="button" class="btn btn-primary" id="saveId">保存</button>
													<a type="button" class="btn btn-default" href="javascript:gtView('jsp/manage/agent/index.jsp');">取消</a>
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
			region_init("add_province","add_city","add_area","${agent.add_province}","${agent.add_city}");
			region_init("coo_province","coo_city","coo_area","${agent.coo_province}","${agent.coo_city}","${agent.coo_area}");
			if("${agent.id}"!=null){
				$("#add_province").prepend("<option>请选择省份</option>");
			    $("#add_city").prepend("<option>请选择城市</option>");
			    $("#coo_province").prepend("<option>请选择省份</option>");
			    $("#coo_city").prepend("<option>请选择城市</option>");
			    $("#coo_area").prepend("<option>请选择区域</option>");
			}else{
				$("#add_province").prepend("<option selected='selected'>请选择省份</option>");
			    $("#add_city").prepend("<option selected='selected'>请选择城市</option>");
			    $("#coo_province").prepend("<option selected='selected'>请选择省份</option>");
			    $("#coo_city").prepend("<option selected='selected'>请选择城市</option>");
			    $("#coo_area").prepend("<option selected='selected'>请选择区域</option>");
			}
		})
	</script>
	<script type="text/javascript">
		$("#saveId").click(function(){
			var id = $("input[name='id']").val();
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
			var agent_type = $("select[name='agent_type']").val();
			var auth_code = $("input[name='auth_code']").val();
			$.ajax({
				url:'${pageContext.request.contextPath}/agent/html/edit.do',
				data:{
					id: id,
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
					agent_type:agent_type,
					auth_code:auth_code
				},
				type:'post',
				success:function(data){
					gtView("jsp/manage/agent/index.jsp");
				}
			}); 
		});
	</script>
</body>
</html>