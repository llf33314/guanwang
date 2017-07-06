<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/manage/common/taglibs.jsp"%>
<%@ include file="/jsp/manage/common/templatelibs.jsp"%>
<%@ include file="/jsp/manage/common/utils.jsp"%>
<!-- 导入素材库jsp -->
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE>
<html>
<head>
<title>素材库Demo</title>
</head>
<body>
	<span>&nbsp;&nbsp;&nbsp;</span>
	<!-- 按钮触发模态框 -->
	<!-- 后面的三个 data-toggle="modal" data-target="#materialModal" id="materialModalBtn" 属性必填 -->
	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#materialModal" id="materialModalBtn">
	   素材库
	</button>
	
	<button class="btn btn-primary btn-lg" onclick="getMaterialgg();">
		数据测试
	</button>
	
	<!-- 相关脚本 -->
	<script type="text/javascript">  
		function getMaterialgg(){
			var array = getMaterialArray(); // 得到结果的函数,结果为数组
			alert(array);
		};
	</script> 
		
</body>
</html>