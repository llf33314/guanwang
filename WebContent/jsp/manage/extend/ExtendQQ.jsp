<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>素材库</title>
<link href="templatelibs/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="templatelibs/bootstrap/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="templatelibs/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
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
	                        <div class="muted pull-left">QQ信息列表（没有设置的时间段默认是营销QQ，时间有冲突时，以序列号在前的为准）</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="#myAlert" data-toggle="modal">
	                                 	<button id="import" class="btn btn-success" onclick="openModal();">新增  
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
	                                 </a>
	                              </div>
	                              <a id="excel"></a>
	                              <!-- 弹出框 -->
	                              <div id="myAlert" class="modal hide" aria-hidden="true" style="display: none;">
	                              <form action="${pageContext.request.contextPath }/extend/editQQ.do" 
									class="form-horizontal" enctype="multipart/form-data" method="post">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">×</button>
											<h3>QQ信息录入</h3>
										</div>
										<input type="hidden" name="id" value="">
										<div class="modal-body">
											<div class="row-fluid">
												<div>
													<div class="control-group">
													   <label>
													      <input type="radio" name="typeRadios" id="optionsRadios1" value="-1" checked> 
													      营销QQ
													   </label>
													</div>
													<div class="control-group">
													   <label>
													      <input type="radio" name="typeRadios" id="" value="1">
													       自定义QQ
													   </label>
													</div>
													<div class="control-group">
													   <label>
													      <input type="radio" name="typeRadios" id="" value="2">
													       售前咨询QQ
													   </label>
													</div>
													<div class="control-group">
													   <label>
													      <input type="radio" name="typeRadios" id="" value="3">
													       售后咨询QQ
													   </label>
													</div>
												<div id="qqNumDiv" class="control-group" style="display: none;">
													<label class="control-label">QQ号：</label>
													<div class="controls">
														<input name="qqNumber" value="" class="input-xlarge focused" type="text" style="height: 30px;">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">开始时间：</label>
													<div class="controls">
														<input id="datetimepickerStart" name="startTime" value="" class="input-xlarge focused" type="text" style="height: 30px;">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">结束时间：</label>
													<div class="controls">
														<input id="datetimepickerEnd" name="endTime" value="" class="input-xlarge focused" type="text" style="height: 30px;">
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<a data-dismiss="modal" class="btn btn-primary" href="javascript:void(0);"
												onclick="submitForm();">保存</a>
											<a data-dismiss="modal" class="btn" href="javascript:void(0);">返回</a>
										</div>
									</div>
								</form>
	                           </div>
	                            
	                            <table cellpadding="0" cellspacing="0" border="0" 
	                            	class="table table-striped table-bordered" id="example2">
	                            </table>
	                        </div>
	                    </div>
	                </div>
	                <!-- /block -->
	            </div>
	        </div>
	    </div>
	    
	</div>
<script type="text/javascript">
var list = [];
$(function () {
    initJsonTables({
		tableId: "example2",
		columns: [
		         {
		        	 name: "序列号",
		        	 col: "id"
		         }, 
		         {
		        	 name: "QQ号",
		        	 col: "extend_qq",
	        		 render: function(value){
		        		 if(value.extend_type == 1){
		        			return value.extend_qq;
		        		 }else if(value.extend_type == 2){
		        			 return "售前QQ"; 			 
		        		 }else if(value.extend_type == 3){
		        			 return "售后QQ"; 			 
		        		 }else{
		        			return "营销QQ";
		        			 
		        		 }
	        	 	  }
		         }, 
		         {
		        	 name: "开始时间",
		        	 col: "extend_start",
		         }, 
		         {
		        	 name: "结束时间",
		        	 col: "extend_end",
		         }, 
		         {
		        	 name: "状态",
		        	 col: "extend_status",
		        	 render: function(value){
		        		 if(value.extend_status == 1){
		        			 return "停用";
		        		 }else{
		        			 return "正常";
		        		 }
	        	 	  }
		         }, 
		         {
		        	 name: "操作",
		        	 col: "",
		        	 render: function(value){
		        		 list.push(value);
		        		 return "<a href='#myAlert' data-toggle='modal' class='btn btn-success' onclick='editQQ(" + value.id + ");'>修改</a>&nbsp;"+
		        		 	"<a class='btn btn-danger' onclick='delQQ("+value.id+");'>删除</a>";
		        	 }
		         }
		        ],
		url: "extend/list",
		param: {}
	});
  	//日历
    $('#datetimepickerStart').datetimepicker({
        format: 'hh:ii',
        language: 'zh-CN', //汉化
        startView:1
    });
	//日历
    $('#datetimepickerEnd').datetimepicker({
        format: 'hh:ii',
        language: 'zh-CN', //汉化
        startView:1
    });
	// 选择框事件
    $("input[name=typeRadios]").click(function(){
    	var typeRadios = $("input[name='typeRadios']:checked").val();
    	if(typeRadios > 0){
	 		$("#qqNumDiv").show();
    	} else{
	 		$("#qqNumDiv").hide();
    	}
	});
});

function submitForm(){
	var id = $("input[name='id']").val();
	var typeRadios = $("input[name='typeRadios']:checked").val();
	var qqNumber = $("input[name='qqNumber']").val();
	var startTime = $("input[name='startTime']").val();
	var endTime = $("input[name='endTime']").val();
	console.log(typeRadios);
	if(startTime == null || startTime == "" || endTime == null || endTime == ""){
		layer.msg("开始时间或结束时间不能为空!");
		return;
	}
	if(startTime > endTime){
		layer.msg("开始时间不可大于结束时间!");
		return;
	}
	if(typeRadios > 0){
		if(qqNumber == null || qqNumber == ""){
			layer.msg("QQ号码不能为空!");
			return;
		}
	}
	$.ajax({
		url:'${pageContext.request.contextPath}/extend/editQQ.do',
		data:{
			id: id,
			typeRadios:typeRadios,
			qqNumber:qqNumber,
			startTime:startTime,
			endTime:endTime
		},
		type:'post',
		success:function(data){
			layer.confirm('保存成功', {
				btn: ['确定']
			}, function(index){
				layer.closeAll();
				gtView("jsp/manage/extend/ExtendQQ.jsp");					  
			});
		}
	}); 
};

// 新增QQ
function openModal(){
	clearMaterial();
};

// 编辑QQ
function editQQ(valId){
	clearMaterial();
	/* console.log(list); */
	for(var i = 0; i < list.length; i++){
		if(list[i].id == valId){
			var data = list[i];
			$("input[name='id']").val(data.id);
			$("input[name='startTime']").val(data.extend_start);
			$("input[name='endTime']").val(data.extend_end);
			
			$("input[name='typeRadios']").attr("checked",false);
			if(data.extend_type == -1){
				$("#qqNumDiv").hide();
				$("#optionsRadios1").attr("checked","checked");
				$("#optionsRadios1").trigger('click');
			}else {
				$("input[name='typeRadios'][value='"+data.extend_type+"']").attr("checked","checked");
				$("input[name='typeRadios'][value='"+data.extend_type+"']").trigger('click');
				$("input[name='qqNumber']").val(data.extend_qq);				
				$("#qqNumDiv").show();
			}
		}
	}
};

// 删除QQ
function delQQ(value){
	clearMaterial();
	layer.confirm('确定删除？', {
		btn: ['确定','取消']
	}, function(index){
		$.ajax({
			url:'${pageContext.request.contextPath}/extend/delQQ.do',
			data:{
				id: value,
			},
			type:'post',
			success:function(data){
				layer.confirm('删除成功', {
					btn: ['确定']
				}, function(index){
					layer.closeAll();
					gtView("jsp/manage/extend/ExtendQQ.jsp");					  
				});
			}
		}); 
	}, function(index){
		return;
	});
};

function clearMaterial(){
	$("input[name='id']").val("");
	$("input[name='qqNumber']").val("");
	$("input[name='startTime']").val("");
	$("input[name='endTime']").val("");
	/* $("#optionsRadios1")[0].checked = true; */
	$("#qqNumDiv").hide();
};
</script>
</body>
</html>