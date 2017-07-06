<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 导入素材库jsp -->
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增</title>
<script type="text/javascript" src="templatelibs/vendors/jquery.uniform.min.js"></script>
<script type="text/javascript">
	$(function(){
		var case_code = "${customerCase.case_code}";
		for(var i=0;i<customer_case.length;i++){
			$("#code").append("<option value='"+customer_case[i].name+"'>"+customer_case[i].name+"</option>");
		}
		if(case_code != "" && case_code != null){
			$("#code option[value='"+case_code+"']").attr("selected", true);
		}
	});
</script>
</head>
<body>

	<!-- morris stacked chart -->
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">案例</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal" id="form1"
						<%-- action="${pageContext.request.contextPath}/customercase/add.action"
						method="post" enctype="multipart/form-data" --%>
						>
						<fieldset>
							<input type="hidden" id="customercaseId" value="${customerCase.id}">
							<div class="control-group">
								<label class="control-label" for="code">编号</label>
								<div class="controls">
									<%-- <input value="${customerCase.case_code}" class="input-xlarge focused" name="code" id="code"
										type="text" placeholder="请输入编号" style="height: 30px"> --%>
									<select class="input-xlarge focused" name="code" id="code"></select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="name">名称</label>
								<div class="controls">
									<input value="${customerCase.case_name}" class="input-xlarge focused" name="name" id="name"
										type="text" placeholder="请输入名称" style="height: 30px">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="remark">备注</label>
								<div class="controls">
									<textarea class="input-xlarge textarea" name="remark"
										id="remark" placeholder="Enter text ..."
										style="width: 810px; height: 30px">${customerCase.case_remark}</textarea>
								</div>
							</div>
							<div style="padding-left: 180px">
								<button type="button" class="btn btn-primary" id="saveId"
									>保存</button>
								<!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h5 class="modal-title" id="myModalLabel">保存成功<br>
												</h5>
											</div>
											<div class="modal-body"><font size="5px">请添加案例图片</font></div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-dismiss="modal">确认</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>
								<%-- <a type="button" id="resetId"  class="btn"
									href="javascript:gtView('customercase/delete.action?id=${customerCase.id}');"
									data-toggle="modal" data-target="#myModal">删除</a> --%>
							</div>
							<hr>
							<div id="photoId"  style="padding-left: 150px">
								<c:forEach items="${detailList }" var="d" varStatus="s">
								<div id="photo-group${s.count }" style="padding-left: -200px;">
									<input type="hidden" id="detailId${s.count }" value="${d.id }">
									<div class="row">
										<div class="span6">
											<div class="control-group">
												<label class="control-label" for="name">案例名称${s.count }</label>
												<div class="controls">
													<input value="${d.detail_name }" class="input-xlarge focused" name="headName${s.count }"
														id="headNameId${s.count }" type="text" placeholder="请输入头像名称"
														style="width: 200px; height: 30px">
												</div>
											</div>
											<div class="control-group">
												<label class="control-label" for="fileInput">案例图片${s.count }</label>
												<div class="controls ">
													<input value="选择图片(建议尺寸为正方形)" class="btn btn-primary btn-lg" data-toggle="modal" onclick="selectHeadModel(${s.count})" >
												</div>
											</div>
											<div class="control-group">
												<label class="control-label" for="fileInput">二维码图片${s.count }</label>
												<div class="controls ">
													<input value="选择图片(建议尺寸为正方形)" class="btn btn-primary btn-lg" data-toggle="modal" onclick="selectQrModel(${s.count})">
												</div>
											</div>
										</div>
										<div class='span6'>
											<div class='row'>
												<div class='span2'>
													<center><h5>案例图片</h5></center>
													<img class="thumbnail" id="headImgId${s.count }" src='${imagesUrl }${d.detail_main_img}' width='120' height='100'>
												</div>
												<div class='span2'>
													<center><h5>二维码图片</h5></center>
													<img class="thumbnail" id="qrcodeImgId${s.count }" src='${imagesUrl}${d.detail_other_img }' width='120' height='100'>							
												</div> 
											</div> 
										</div>								
									</div>
									<div style="padding-left: 150px">
										<button type="button" class="btn btn-primary" id="photoSaveId${s.count }"
										onclick="savePhoto(${s.count })">保存</button>
										<button type="button" 
										<%-- href="javascript:gtView('customercaseDetail/delete.action?id=${customerCase.id}&detailId=${d.id }');"  --%>
										class="btn btn-danger" onclick="deleteClick(${d.id});">删除</button>
									</div>
									<hr>
									</div>
								</c:forEach>
							</div>
							<div align="center" id="addphotoDivId" style="visibility: hidden;">
								<button id="addphotoId" class="btn btn-primary" type="button">继续添加案例图片</button>
							</div>
							<hr>
							<div style="padding-left:180px ;visibility: hidden;" id="finDivId">
								<button id="finId" class="btn btn-primary" type="button">完成</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="savePhotoModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h5 class="modal-title" id="myModalLabel">
							提示<br>
						</h5>
					</div>
					<div class="modal-body">
						<font size="5px">保存成功</font>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">确认</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- /block -->
	</div>
	<script type="text/javascript">
		function changeFileBtn(){
			//修改控件初始化的值
			var $files = $(".filename");
			for (var i = 0; i < $files.length; i++) {
				var file = $files[i];
				
				if (file.innerHTML == "No file selected") {
					file.innerHTML = "无图片";
				}
			}
			var $files = $(".action");
			for (var i = 0; i < $files.length; i++) {
				var file = $files[i];
				if (file.innerHTML == "Choose File") {
					file.innerHTML = "选择图片";
				}
			}
		}
	</script>
	<script type="text/javascript">
		$(function(){
			if($("#customercaseId").val()!=null&&$("#customercaseId").val()!=""){
				$("#addphotoDivId").css({visibility:" visible"});
				$("#finDivId").css({visibility:" visible"});
			}
			if($("#customercaseId").val()!=null && $("#customercaseId").val()!=""){
				$("#code").attr("disabled",true);
			}
			/* $(".uniform_on").uniform();
			//修改控件初始化的值
			var $files = $(".filename");
			for (var i = 0; i < $files.length; i++) {
				var file = $files[i];
				
				if (file.innerHTML == "No file selected") {
					file.innerHTML = "有图片";
				}
			}
			var $files = $(".action");
			for (var i = 0; i < $files.length; i++) {
				var file = $files[i];
				if (file.innerHTML == "Choose File") {
					file.innerHTML = "选择图片";
				}
			} */
		});
	</script>
	<script type="text/javascript">
		function addPhoto(){
			var $photo = $("#photoId");
			//获得photoId下div数量
			var size = $photo.children("div").length+1;
			var c = "";
			c+="<div id='photo-group"+ size +"'>";
			c+=		"<input type='hidden' id='detailId"+ size +"' value=''>"
			c+=		"<div class='row'>"
			c+=			"<div class='span6'>"
			c+=			"<div class='control-group'>";
			c+=				"<label class='control-label' for='name'>案例名称"+ size +"</label>";
			c+=				"<div class='controls'>";
			c+=					"<input value='${d.detail_name}' class='input-xlarge focused' name='headName"+ size +"' id='headNameId"+ size +"' type='text' placeholder='请输入头像名称' style='width: 200px; height: 30px'>";
			c+=				"</div>";
			c+=			"</div>";
			c+=			"<div class='control-group'>";
			c+=				"<label class='control-label' for='fileInput'>案例图片"+ size +"</label>";
			c+=				"<div class='controls'>";
			c+=					"<input value='选择图片(建议尺寸为正方形)' class='btn btn-primary btn-lg' data-toggle='modal' onclick='selectHeadModel("+ size +")' >";
			c+=				"</div>";
			c+=			"</div>";
			c+=			"<div class='control-group'>";
			c+=				"<label class='control-label' for='fileInput'>二维码图片"+ size +"</label>";
			c+=				"<div class='controls'>";
			c+=					 "<input value='选择图片(建议尺寸为正方形)' class='btn btn-primary btn-lg' data-toggle='modal' onclick='selectQrModel("+ size +")' >";
			c+=				"</div>";
			c+=			"</div>";
			c+=			"</div>";
			c+=			"<div class='span6'>"
			c+=				"<div class='row'>"
			c+=					"<div class='span2'>"
			c+=						"<center><h5>案例图片</h5></center>"
			c+=						"<img class='thumbnail' id='headImgId"+ size +"' src='' width='120' height='100'>";
			c+=					"</div>"
			c+=					"<div class='span2'>"
			c+=						"<center><h5>二维码图片</h5></center>"
			c+=						"<img class='thumbnail' id='qrcodeImgId"+ size +"' src='' width='120' height='100'>";
			c+=					"</div>" 
			c+=				"</div>" 
			c+=			"</div>";
			c+=		"</div>"
			c+=		"<div style='padding-left: 150px'>";
			c+=			"<button type='button'  class='btn btn-primary' id='photoSaveId"+ size +"' onclick='savePhoto("+ size +")''>保存</button>"
			//c+=			"&nbsp;<button type='button' class='btn'>取消</button>";
			c+=		"</div>";
			c+=		"<hr>";
			c+="</div>";
			$("#photoId").append(c);
			changeFileBtn();
		}
	</script>
	
	<!-- 按钮点击事件 -->
	<script type="text/javascript">
		//点击继续添加案例图片按钮
		$("#addphotoId").click(
			function() {
				addPhoto();
			});
		//点击保存按钮
		$("#saveId").click(function() {
			var code = $("#code").val();
			var name = $("#name").val();
			var result = "";
			if(code == null || code ==""){
				result += " 编码不能为空 ";
			}
			if(name == null || name ==""){
				result += " 名称不能为空 ";
			}
			if(result==""){
				$.ajax({
					url:'${pageContext.request.contextPath}/customercase/add.action',
					data:{
						name: $("#name").val(),
						code: $("#code").val(),
						remark: $("#remark").val(),
						id:$("#customercaseId").val()
					},
					type:'post',
					success:function(data){
						if(data.success){
							if($("#customercaseId").val()==null || $("#customercaseId").val()==""){
								addPhoto();
								WSFUNCTION.msgBox("提示","保存成功，请添加图片");	
								$("#code").attr("disabled",true);
							}else{
								WSFUNCTION.msgBox("提示","保存成功");
							}
							$("#customercaseId").val(data.id);
							$("#addphotoDivId").css({visibility:" visible"});
							$("#finDivId").css({visibility:" visible"});
						}else{
							WSFUNCTION.msgBox("提示",data.error);
						}
					}
				});  
			}else{
				WSFUNCTION.msgBox("提示",result);
			}
		});
		$("#finId").click(function(){
				gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=1&pageSize=6');
		});
	</script>
	<script type="text/javascript">
		//上传头像图片
		function uploadHeadPhoto(num){
			//删除旧图片
			/* var headSrc = $("#headImgId"+num).attr("src");
			var headImgUrl = headSrc.substring(headSrc.lastIndexOf("images/")+7,headSrc.length);
			console.dir(headSrc);
			if(headSrc != null && headSrc != ""){
				var detailId = $("#detailId"+num).val();
				$.ajax({
					url:'${pageContext.request.contextPath}/customercaseDetail/deleteImages.action',	
					data:{
						detailId: detailId,
						headImgUrl:headImgUrl
					},
					type:'post',
					success:function(data){
						console.dir(data);
						
					}
				});
			} */
			var headPhotoId = $("#headPhotoId"+num).attr("id");
			ajaxFileUpload(headPhotoId,"#headImgId"+num);
		}
		//上传二维码图片
		function uploadQrcodePhoto(num){
			//var qrcodeSrc = $("#qrcodeImgId"+num).attr("src");
			//console.dir(qrcodeSrc);
			var qrcodePhotoId = $("#qrcodePhotoId"+num).attr("id");
			ajaxFileUpload(qrcodePhotoId,"#qrcodeImgId"+num);
		}
	</script>
	<script type="text/javascript">
		//保存案例图片信息
		function savePhoto(num){
			var flag = true;
			var detailId = $("#detailId"+num).val();
			var headName = $("#headNameId"+num).val();
			var headPhoto = $("#headPhotoId"+ num).next().text();
			var qrcodePhoto = $("#qrcodePhotoId"+ num).next().text();
			if(headName== "" || headName == undefined){
				//$("#headNameId"+num).after("<span for='name' class='help-inline ok'>名称不能为空</span>")
				flag = false;
				alert("名称不能为空");
			}
			if(headPhoto == "无图片"){
				flag = false;
				alert("头像不能为空"); 
			}
			if(qrcodePhoto == "无图片"){
				flag = false;
				alert("二维码不能为空");
			}
			if(flag){
				var headSrc = $("#headImgId"+num).attr("src");
				var headImgUrl = headSrc.substring(headSrc.lastIndexOf("/")+1,headSrc.length);
				var qrcodeSrc = $("#qrcodeImgId"+num).attr("src");
				var qrcodeImgUrl = qrcodeSrc.substring(qrcodeSrc.lastIndexOf("/")+1,qrcodeSrc.length);
				$.ajax({
					url:'${pageContext.request.contextPath}/customercaseDetail/add.action',
					data:{
						headName: headName,
						headImgUrl: headImgUrl,
						qrcodeImgUrl: qrcodeImgUrl,
						id:$("#customercaseId").val(),
						detailId:detailId
					},
					type:'post',
					success:function(data){
						//$("#photoSaveId"+num).attr("disabled","disabled");
						$('#savePhotoModal').modal('show');
						//gtView('customercase/editPre.action?id=${customerCase.id}');
					}
				});
			}
		}
		function ajaxFileUpload(id,imgId){
			//执行上传文件操作的函数
			var resultUrl = "";
			$.ajaxFileUpload({
				//处理文件上传操作的服务器端地址
				url:'${pageContext.request.contextPath}/customercase/fileUpload.action',
				secureuri:false,                       //是否启用安全提交,默认为false 
				//fileElementId:'headImagesId1',           //文件选择框的id属性
				fileElementId: id,           //文件选择框的id属性
				dataType:'text',                       //服务器返回的格式,可以是json或xml等
				success:function(data, status){        //服务器响应成功时的处理函数
					//回显图片
					resultUrl = data.substring(data.indexOf(">")+1,data.lastIndexOf("</pre>"));
					$(imgId).attr("src",resultUrl);
				},
				error:function(data, status, e){ //服务器响应失败时的处理函数
					//$('#result').html('图片上传失败，请重试！！');
					alert(e);
				}
			});
		}
	</script>
	<script type="text/javascript">
	function DelModel(url, id){
		$("body").append("<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>"+"" +
				"<div class='modal-header'>" + 
				"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>×</button>" + 
				"<h3>删除</h3>" + 
				"</div>" +
				"<div class='modal-body'>" +
				"<p>确认要删除吗？</p>" +
				"</div>" +
				"<div class='modal-footer'>" +
				"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();deleteCase(\""+url+"\", "+id+")'>确认</a>" +
				"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>取消</a>" +
				"</div>" +
				"</div>");
		$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
	}
	</script>
	<script type="text/javascript">
		function deleteClick(id){
			var url = "customercaseDetail/delete.action?id=${customerCase.id}&detailId="+id;
			DelModel(url,null);
		}
		function deleteCase(url,id){
			gtView(url);
		}
	</script>
	<script type="text/javascript">
		var headIndex = "";
		var qrIndex = "";
		function selectHeadModel(size){
			headIndex = size;
			$("#materialModal").modal('toggle');
			listCaseMaterial();
		}
		function selectQrModel(size){
			qrIndex = size;
			$("#materialModal").modal('toggle');
			listCaseMaterial();
		}
	</script> 
	<script>
   $(function () {
	   //素材库选择图片后获得路径并显示
	   $("#selectMaterial").bind("click", function(){
		   var array = getMaterialArray(); // 得到结果的函数,结果为数组
		   if(headIndex != ""){
				$("#headImgId"+headIndex).attr("src",array[0]);
		   }
		   if(qrIndex != ""){
				$("#qrcodeImgId"+qrIndex).attr("src",array[0]);
		   }
		   headIndex = "";
		   qrIndex = "";
		 });
   });
	</script>
	<script type="text/javascript">
		function listCaseMaterial(){
			initMaterial();
			materialParams.rows = materialDefulatRows;
			materialTabClick(1); // 默认加载图片
		}
	</script>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="templatelibs/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="js/manage/material/ajaxfileupload-v2.1.js"></script>
</body>
</html>