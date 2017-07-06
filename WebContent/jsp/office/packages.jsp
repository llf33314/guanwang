<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.gt.entity.user.BusUser"%>   --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>多粉—连接粉丝，连接世界，广东谷通科技有限公司</title>
<meta http-equiv="X-UA-Compatible"content="IE=edge,chrome=1" />
<!--[if IE 8]>
<meta http-equiv="X-UA-Compatible" content="IE=8">
<![endif]-->
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<meta name="keywords" content="多粉、微营销、微信营销、微信推广、微信代运营、微信定制开发、微信营销软件、微信推广软件、微信推广平台" />
<meta name="description" content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微会员、微商城、微活动、微预约、微分销，助力企业全面开启微营销。" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<link rel="stylesheet" type="text/css" href="css/common.css?<%= System.currentTimeMillis()%>"/>
<link rel="stylesheet" type="text/css" href="css/office/packages.css?<%= System.currentTimeMillis()%>"/>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
<script>
$(function(){
     /**行变颜色**/
     $("#listTable2 tr").each(function(index){
    	 if(index !=0 && index %2 != 0){
    		 var arry = $(this).find("td");
    		 for(var i=arry.length-1;i>=0;i--){
    			 if(arry.length < 19){
    				 if(i < 5){
        				 $(this).find("td").eq(i).css("background","#eee"); 
        			 }
    			 }else{
    				 if(i < 6){
        				 $(this).find("td").eq(i).css("background","#eee"); 
        			 }
    			 }
    			 
    		 }
    	 }
     });
     
     /**列变颜色**/
     $("#listTable2 tr").each(function(){
    	 var arry = $(this).find("td");
    	 for(var i=arry.length-1;i>=0;i--){
    		 if(arry.length < 19){
    			 if(i > 4 && i % 2 ==0){
        			 $(this).find("td").eq(i).css("background","#f2fafd"); 
        		 }
    		 }else{
    			 if(i > 5 && i % 2 !=0){
    				 $(this).find("td").eq(i).css("background","#f2fafd"); 
    			 }
    		 }
    	 }
     });
     
     /****/
     
     $("#headTableTr th").each(function(index){
    	 if(index % 2 != 0){
    		 $(this).css("background","#f2fafd"); 
    	 }
     });
     
	});
  
</script>
</head>
<body>
		 <!--头部开始-->
			<div id="header">
				<div class="container clearfix">
				   	<div class="headerLeft fl">
				   		<img src="images/logoIndex.png" alt="logoImg" />
				   	</div>
				  	<div class="headerCent fr clearfix">
				   		<ul class="clearfix">
				   			<li class="items"><a href="jsp/office/index.jsp" class="white" >首页</a></li>
				   			<li class="items"><a href="jsp/office/product.jsp" class="white">产品服务</a></li>
				   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white">合作召集</a></li>
				   			<li class="items"><a href="jsp/office/example.jsp" class="white">案例中心</a></li>
				   			<li class="items"><a href="jsp/office/help.jsp" class="white">帮助中心</a></li>
					   		<li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   	    <li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
				   		</ul>
				 	</div>
			 	</div>
		   	</div>
		<!--头部结束-->
		<!-- 多粉套餐开始 -->
		  <div class="Packages" id="Packages">
		        <table id="listTable1" class="table table-bordered table-hover dataTable table-striped tableHead" style="position:fixed; width:1170px;padding-top:1px; border-bottom:2px solid #999; background-color: #fff">
					<tbody>
						<tr style="height: 0px">
							<td width="10%"></td>
							<td width="15%"></td>
							<td class="ok"></td>
							<td></td>
							<td></td>
							<td></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
						</tr>
						<tr style="background:; height: 40px">
							<th rowspan="2" >服务类别</th>
							<th rowspan="2" >功能明细</th>
							<th rowspan="2" >试<br>用<br>版</th>
							<th rowspan="2" >基<br>础<br>版</th>
							<th rowspan="2" >升<br>级<br>版</th>
							<th rowspan="2" >高<br>级<br>版</th>
							<th colspan="13" style="text-align:center;">至尊版(可选行业)</th>
						</tr>
						<tr style="height: 70px" id="headTableTr">
						    <th >微<br>餐<br>饮</th>
							<th >微<br>房<br>产</th>
							<th >微<br>汽<br>车</th>
							<th >微<br>花<br>店</th>
							<th >微<br>生<br>活</th>
							<th >微<br>旅<br>游</th>
							<th >微<br>教<br>育</th>
							<th >微<br>物<br>流</th>
							<th >微<br>零<br>售</th>
							<th >微<br>休<br>闲</th>
							<th >微<br>医<br>院</th>
							<th >微<br>制<br>造</th>
							<th >其<br>他</th>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="PackagesCon" id="PackagesCon" style="padding-top: 110px;width: 1170px;margin: 0 auto; padding-bottom: 50px">
				<table id="listTable2" class="table table-bordered" style=" width: 1170px;">
				    <tbody>
				       <tr style="height: 51px">
							<td width="10%">订阅号</td>
							<td width="15%"></td>
							<td class="ok">√</td>
							<td></td>
							<td></td>
							<td></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
						</tr>
				       <tr  style="height: 51px">
							<td >认证订阅号</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
							<td class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >服务号</td>
							<td ></td>
							<td  class="ok">√</td>
							<td class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >认证服务号</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="7" >素材中心</td>
							<td >默认回复</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >素材中心</td> -->
							<td >关注时回复</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >素材中心</td> -->
							<td >文本消息</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
					    <tr style="height: 51px">
							<!-- <td rowspan="5" >素材中心</td> -->
							<td >单图文消息</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >素材中心</td> -->
							<td >多图文消息</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >素材中心</td> -->
							<td >自定义菜单</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >素材中心</td> -->
							<td >素材库</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="3" >账户充值</td>
							<td >支付宝充值</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="3" >账户充值</td> -->
							<td >粉币充值</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="3" >账户充值</td> -->
							<td >流量充值</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >版权</td>
							<td >显示多粉版权</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td ></td>
						</tr>
						<tr style="height: 51px">
							<td >独享空间</td> 
							<td >图片、视频空间</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >公众账号</td>
							<td >绑定公共号个数</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
							<td  class="ok">1</td>
						</tr>
						<tr style="height: 51px">
							<td >多粉WiFi</td> 
							<td >吸粉神器</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >微客服</td> 
							<td >客服功能</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >自定义菜单</td> 
							<td >个性化设置</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td >微签到</td> 
							<td >粉丝签到</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="5" >微活动</td> 
							<td >刮刮乐</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微活动</td>  -->
							<td >大转盘</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微活动</td>  -->
							<td >投票</td>
							<td  class="ok">√</td>
							<td  ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微活动</td>  -->
							<td >微调研</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微活动</td>  -->
							<td >砸金蛋</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="4" >红包</td>
							<td >基础设置</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						<!-- 	<td rowspan="4" >红包</td> -->
							<td >红包发放</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="4" >红包</td> -->
							<td >红包提现</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="4" >红包</td> -->
							<td >让红包飞</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="2" >卡包/券</td>
							<td >卡包/券</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="2" >卡包/券</td> -->
							<td >门店</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="2" >场景</td>
							<td >场景管理</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						<!-- 	<td rowspan="2" >场景</td> -->
							<td >画面管理</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="5" >微官网</td>
							<td >个性化模板</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微官网</td> -->
							<td >个性化菜单</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微官网</td> -->
							<td >一键导航</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						<!-- 	<td rowspan="5" >微官网</td> -->
							<td >一键拨号</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="5" >微官网</td> -->
							<td >各类实用工具</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="7" >微信会员卡</td>
							<td >会员积分</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="7" >微信会员卡</td> -->
							<td >积分兑换</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="7" >微信会员卡</td> -->
							<td >会员等级</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="7" >微信会员卡</td> -->
							<td >权限管理</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="7" >微信会员卡</td> -->
							<td >优惠券管理</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="7" >微信会员卡</td> -->
							<td >消息推送</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="7" >微信会员卡</td> -->
							<td >数据统计</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="2" >多粉支付</td>
							<td >粉币</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<!-- <td rowspan="2" >多粉支付</td> -->
							<td >粉币兑换</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
							<td rowspan="4" >支付管理</td>
							<td >微信支付</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						<!-- 	<td rowspan="4" >支付管理</td> -->
							<td >财付通支付</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						<!-- 	<td rowspan="4" >支付管理</td> -->
							<td >支付宝支付</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						<!-- 	<td rowspan="4" >支付管理</td> -->
							<td >银联支付</td>
							<td  class="ok">√</td>
							<td ></td>
							<td ></td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						    <td rowspan="4" >粉丝管理</td>
							<td >粉丝筛选</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						   <!--  <td rowspan="4" >粉丝管理</td> -->
							<td >粉丝标签</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						 <!--    <td rowspan="4" >粉丝管理</td> -->
							<td >粉丝分组</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						  <!--   <td rowspan="4" >粉丝管理</td> -->
							<td >粉丝统计</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						    <td rowspan="3" >数据魔方</td>
							<td >关注数分析</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						 <!--    <td rowspan="3" >数据魔方</td> -->
							<td >用户地域及性别分析</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
						<tr style="height: 51px">
						    <!-- <td rowspan="3" >数据魔方</td> -->
							<td >自定义菜单点击统计</td>
							<td  class="ok">√</td>
							<td ></td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
							<td  class="ok">√</td>
						</tr>
				    </tbody>
				</table>
		  </div>
		<!-- 多粉套餐结束 -->
		<!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
</body>
</html>