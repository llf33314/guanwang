<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="/jsp/manage/common/taglibs.jsp"%>
<%@ include file="/jsp/manage/common/templatelibs.jsp"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合作加盟</title>
<style type="text/css">
.table th, .table td {
	text-align: center;
}
.row {
    *zoom: 1;
    margin:10px 0 5px 0;
}
.pagination {
    margin: 0px 0;
    float:right;
}
#example2_info{
	line-height: 30px;
}
#addBtnId {
	margin: 0 0 10px 0;
}
</style>
</head>
<body>
	

	<div class="container-fluid">
		<div class="row-fluid">
			<!--/span-->
			<div class="row-fluid">
				<!-- block -->
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">合作代理</div>
					</div>
					<div class="block-content collapse in">
						<div class="span12">
							<div class="table-toolbar">
								<div class="btn-group">
									<a href="#"><button id="addBtnId" class="btn btn-primary">
											新增 <i class="icon-plus icon-white"></i>
										</button></a>
								</div>
								<!-- <div class="btn-group pull-right">
									<button data-toggle="dropdown" class="btn dropdown-toggle">
										Tools <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">Print</a></li>
										<li><a href="#">Save as PDF</a></li>
										<li><a href="#">Export to Excel</a></li>
									</ul>
								</div> -->
							</div>

							<div id="example2_wrapper" class="dataTables_wrapper form-inline"
								role="grid">
								<!-- <div class="row">
									<div class="span6">
										<div class="dataTables_length" id="example2_length">
											<label><select aria-controls="example2" size="1"
												name="example2_length"><option selected="selected"
														value="10">10</option>
													<option value="25">25</option>
													<option value="50">50</option>
													<option value="100">100</option></select> records per page</label>
										</div>
									</div>
									<div class="span6">
										<div id="example2_filter" class="dataTables_filter">
											<label>Search: <input aria-controls="example2"
												type="text"></label>
										</div>
									</div>
								</div> -->
								<table aria-describedby="example2_info"
									class="table table-striped table-bordered dataTable"
									id="example2" border="0" cellpadding="0" cellspacing="0">
									<thead>
										<tr role="row">
											<th
												aria-label="Rendering engine: activate to sort column descending"
												aria-sort="ascending" style="width: 202px;" colspan="1"
												rowspan="1" aria-controls="example2" tabindex="0"
												role="columnheader" class="sorting_asc">Rendering
												engine</th>
											<th aria-label="Browser: activate to sort column ascending"
												style="width: 280px;" colspan="1" rowspan="1"
												aria-controls="example2" tabindex="0" role="columnheader"
												class="sorting">Browser</th>
											<th
												aria-label="Platform(s): activate to sort column ascending"
												style="width: 257px;" colspan="1" rowspan="1"
												aria-controls="example2" tabindex="0" role="columnheader"
												class="sorting">Platform(s)</th>
											<th
												aria-label="Engine version: activate to sort column ascending"
												style="width: 172px;" colspan="1" rowspan="1"
												aria-controls="example2" tabindex="0" role="columnheader"
												class="sorting">Engine version</th>
											<th aria-label="CSS grade: activate to sort column ascending"
												style="width: 120px;" colspan="1" rowspan="1"
												aria-controls="example2" tabindex="0" role="columnheader"
												class="sorting">CSS grade</th>
										</tr>
									</thead>

									<tbody aria-relevant="all" aria-live="polite" role="alert">
										<tr class="gradeA odd">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Firefox 1.0</td>
											<td class=" ">Win 98+ / OSX.2+</td>
											<td class="center ">1.7</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA even">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Firefox 1.5</td>
											<td class=" ">Win 98+ / OSX.2+</td>
											<td class="center ">1.8</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA odd">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Firefox 2.0</td>
											<td class=" ">Win 98+ / OSX.2+</td>
											<td class="center ">1.8</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA even">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Firefox 3.0</td>
											<td class=" ">Win 2k+ / OSX.3+</td>
											<td class="center ">1.9</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA odd">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Camino 1.0</td>
											<td class=" ">OSX.2+</td>
											<td class="center ">1.8</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA even">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Camino 1.5</td>
											<td class=" ">OSX.3+</td>
											<td class="center ">1.8</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA odd">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Netscape 7.2</td>
											<td class=" ">Win 95+ / Mac OS 8.6-9.2</td>
											<td class="center ">1.7</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA even">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Netscape Browser 8</td>
											<td class=" ">Win 98SE+</td>
											<td class="center ">1.7</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA odd">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Netscape Navigator 9</td>
											<td class=" ">Win 98+ / OSX.2+</td>
											<td class="center ">1.8</td>
											<td class="center ">A</td>
										</tr>
										<tr class="gradeA even">
											<td class="  sorting_1">Gecko</td>
											<td class=" ">Mozilla 1.0</td>
											<td class=" ">Win 95+ / OSX.1+</td>
											<td class="center ">1</td>
											<td class="center ">A</td>
										</tr>
									</tbody>
								</table>
								<div class="row">
									<div class="span6">
										<div id="example2_info" class="dataTables_info">Showing
											1 to 10 of 57 entries</div>
									</div>
									<div class="span6">
										<div class="dataTables_paginate paging_bootstrap pagination">
											<ul>
												<li class="prev disabled"><a href="#">← Previous</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li class="next"><a href="#">Next → </a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /block -->
			</div>
		</div>
	</div>
	<hr>
</body>
</html>