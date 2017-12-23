<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>代理申请</title>
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
	                        <div class="muted pull-left">代理申请信息</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('agent/addPre.action')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
	                                 </a>
	                              </div>
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
	<div class="tipsbox" style="display: none;">
	<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>
				<div class='modal-header'>
				<button data-dismiss='modal' class='close' type='button' onclick='close_tipsbox();'>×</button>
				<h3>信息</h3>
				</div>
				<div class='modal-body' style='text-align:center'>
				<p>确认要通过申请吗？</p>
				<p>请填写授权证书编号：<input type='text' id='auth_code' name='auth_code' style='vertical-align:0' />
				<span id="error_msg" style='color:red'> *必填</span>
				</p>
				<input type="hidden" name="id" value="" id="hiddenId">
				</div>
				<div class='modal-footer'>
				<a data-dismiss='modal' class='btn btn-primary' onclick='confirm();'>确认</a>
				<a data-dismiss='modal' class='btn' onclick='close_tipsbox();'>取消</a>
				</div>
	</div>
	<div class='modal-backdrop  in' onclick='close_tipsbox();'></div>
	</div>
	<script>
        Date.prototype.format = function(format)
        {
            var o = {
                "M+" : this.getMonth()+1, //month
                "d+" : this.getDate(),    //day
                "h+" : this.getHours(),   //hour
                "m+" : this.getMinutes(), //minute
                "s+" : this.getSeconds(), //second
                "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
                "S" : this.getMilliseconds() //millisecond
            }
            if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
                (this.getFullYear()+"").substr(4 - RegExp.$1.length));
            for(var k in o)if(new RegExp("("+ k +")").test(format))
                format = format.replace(RegExp.$1,
                    RegExp.$1.length==1 ? o[k] :
                        ("00"+ o[k]).substr((""+ o[k]).length));
            return format;
        }
	$(function() {
		initJsonTables({
			tableId: "example2",
			columns: [
			         {
			        	 name: "姓名",
			        	 col: "name"
			         }, 
			         {
			        	 name: "手机",
			        	 col: "phone"
			         }, 
			         {
			        	 name: "QQ",
			        	 col: "qq"
			         }, 
			         {
			        	 name: "代理类型",
			        	 col: "agent_type",
			        	 render:function(value){
			        		 var agentType = "";
			        		 switch(value.agent_type){
			        		 case 0:
			        			 agentType = "普通代理";
			        			 break;
			        		 case 1:
			        			 agentType = "城市代理商";
			        			 break;
			        		 case 2:
			        			 agentType = "县区级代理商";
			        			 break;
			        		 case 3:
			        			 agentType = "城市合伙人";
			        			 break;
			        		 case 4:
			        			 agentType = "城市服务商";
			        			 break;
			        		 case 5:
			        			 agentType = "技术服务商";
			        			 break;
			        		 }
			        		 return agentType;
			        	 }
			         },
			         {
			        	 name: "公司名称",
			        	 col: "company"
			         }, 
			         {
			        	 name: "详细地址",
			        	 col: "address",
			        	 render:function(value){
			        		 return value.add_province+value.add_city+value.add_area;
			        	 }
			         }, 
			         {
			        	 name: "合作区域",
			        	 col: "area",
			        	 render:function(value){
			        		 return value.coo_province+value.coo_city+value.coo_area;
			        	 }
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "createtime",
			        	 render: function(value){
			        		 var d = new Date(value.createtime);
			        		 return d.format('yyyy-MM-dd hh:mm:ss');
			        	 }
			         }, 
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 return "<a class='btn btn-success' onclick='open_tipsbox("+value.id+");'>确认</a>&nbsp;"
			        		 /* +"<a class='btn btn-danger' >删除</a>" */;
			        	 }
			         }
			        ],
			url: "agent/list",
			param: {}
		});
	});
	</script>
	<script type="text/javascript">
	var open_tipsbox = function(id){
		$("#error_msg").text(" *必填");
		$("#auth_code").val("");
		$("#hiddenId").val(id);
		$(".tipsbox").show();
		
	}
    var close_tipsbox = function(){$(".tipsbox").hide();}
    /*function confirmModel(id){
		 $("body").append("<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>"+"" +
				"<div class='modal-header'>" + 
				"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>×</button>" + 
				"<h3>信息</h3>" + 
				"</div>" +
				"<div class='modal-body' style='text-align:center'>" +
				"<p>确认要通过申请吗？</p>" +
				"<p>请填写授权证书编号：<input type='text' id='auth_code1' name='auth_code' style='vertical-align:0' /></p>" +
				"</div>" +
				"<div class='modal-footer'>" +
				"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();confirm("+id+")'>确认</a>" +
				"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>取消</a>" +
				"</div>" +
				"</div>");
		$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
		 
	}*/
	</script>
	<script type="text/javascript">
		function confirm(){
			var data = {
					id:$("#hiddenId").val(),
					status:1,
					auth_code:$("#auth_code").val()
			};
			$.ajax({
				url:"${pageContext.request.contextPath}/agent/editStatus.action",
				data:data,
				type:"post",
				beforeSend:function(){
					//校验授权证书编号是否为空
					var authCode = $("#auth_code").val();
					if(authCode == "" || authCode == null || authCode == undefined){
						$("#error_msg").text(" *编号不能为空");
						return false;
					}
					return true;
				},
				success:function(data){
					gtView("jsp/manage/agent/index.jsp");
				}
			});
		}
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<script src="templatelibs/vendors/datatables/js/jquery.dataTables.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
	<script src="templatelibs/assets/DT_bootstrap.js"></script>
</body>
</html>