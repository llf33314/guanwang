<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户案例</title>
<style type="text/css">
.table th, .table td {
	text-align: center;
}

.row {
	padding-right: 20px;
	padding-left: 20px;
	*zoom: 1;
}

#addBtnId {
	margin: 0 0 10px 0;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted">客户案例</div>
				<!-- <legend>Form Horizontal</legend> -->
			</div>
			<div class="block-content collapse in">
				<a id="addBtnId" class="btn btn-primary"
					href="javascript:gtView('customercase/addPre.action');"
					role="button">新增 <i class="icon-plus icon-white"></i>
				</a>
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>编号</th>
							<th>名称</th>
							<th>备注</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerCasePagination.currData }" var="c">
							<tr>
								<td>${c.case_code }</td>
								<td>${c.case_name }</td>
								<td>${c.case_remark }</td>
								<td width="120px">
									<a class="btn btn-primary"
									href="javascript:gtView('customercase/editPre.action?id=${c.id}');"
									role="button">编辑</a>
									<button class="btn btn-danger"
									onclick="deleteClick(${c.id});"
									>删除</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<!-- 分页 -->
				<center>
					<div class="dataTables_paginate paging_bootstrap pagination">
						<ul>
							<c:if test="${isFirst }">
								<li class="disabled"><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=1&pageSize=${customerCasePagination.pageSize}');">首页</a>
								</li>
							</c:if>
							<c:if test="${not isFirst }">
								<li><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=1&pageSize=${customerCasePagination.pageSize}');">首页</a>
								</li>
							</c:if>
							<c:if test="${isFirst }">
								<li class="disabled"><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${customerCasePagination.previousIndex }&pageSize=${customerCasePagination.pageSize}');"
									aria-label="Previous"> <span aria-hidden="true">←
											上一页</span>
								</a></li>
							</c:if>
							<c:if test="${not isFirst }">
								<li><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${customerCasePagination.previousIndex }&pageSize=${customerCasePagination.pageSize}');"
									aria-label="Previous"> <span aria-hidden="true">←
											上一页</span>
								</a></li>
							</c:if>
							<c:if test="${customerCasePagination.pageLinkNumber gt 0}">
								<c:set var="betweenIndex"
									value="${customerCasePagination.betweenIndex}"></c:set>
								<c:forEach var="linkIndex" begin="${betweenIndex.beginIndex}"
									end="${betweenIndex.endIndex}">
									<c:if test="${linkIndex eq  customerCasePagination.pageIndex}"
										var="isCurr">
										<li class="active"><a
											href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${linkIndex}&pageSize=${customerCasePagination.pageSize}')">${linkIndex}</a></li>
									</c:if>
									<c:if test="${not isCurr}">
										<li><a
											href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${linkIndex}&pageSize=${customerCasePagination.pageSize}')">${linkIndex}</a></li>
									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${isLast }">
								<li class="disabled"><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${customerCasePagination.nextIndex }&pageSize=${customerCasePagination.pageSize}')"
									aria-label="Next"> <span aria-hidden="true">下一页 → </span>
								</a></li>
							</c:if>
							<c:if test="${not isLast }">
								<li><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${customerCasePagination.nextIndex }&pageSize=${customerCasePagination.pageSize}')"
									aria-label="Next"> <span aria-hidden="true">下一页 → </span>
								</a></li>
							</c:if>
							<c:if test="${isLast }">
								<li class="disabled"><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${customerCasePagination.totalPages }&pageSize=${customerCasePagination.pageSize}');">尾页</a>
								</li>
							</c:if>
							<c:if test="${not isLast }">
								<li><a
									href="javascript:gtView('${pageContext.request.contextPath}/customercase/list.action?pageIndex=${customerCasePagination.totalPages }&pageSize=${customerCasePagination.pageSize}');">尾页</a>
								</li>
							</c:if>
						</ul>
					</div>
				</center>
			</div>
		</div>
	</div>
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
				"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();deleteCase(\""+url+"\", {id:"+id+"})'>确认</a>" +
				"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>取消</a>" +
				"</div>" +
				"</div>");
		$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
	}
	</script>
	<script type="text/javascript">
		function deleteClick(id){
			var url = '${pageContext.request.contextPath}/customercase/delete.action';
			DelModel(url,id);
		}
		function deleteCase(url,id){
			$.ajax({
				url: url,
				type: "POST",
				async: false,
				data: id,
				success: function(data){
					//var d = eval("("+data+")");
					gtView("${pageContext.request.contextPath}/customercase/list.action?pageIndex=1&pageSize=6");
				},
				error: function(){
					msgBox("网络繁忙!");
				}
			});
		}
	</script>
</body>
</html>