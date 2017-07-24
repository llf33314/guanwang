<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>技术支持</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>

    <div class="containt wrap1200 tach_support clearfix">
        <div class="rightbox">
             <div class="search">多粉技术支持<input type="text" class="base_iptxt" id="keyword" placeholder="请输入查询内容..." /></div>
             <div class="aq_main">
             </div>
        </div>
        <div class="leftbox" ts-data="leftbox">
        </div>
    </div>


    <%@include file="/html/common/footer.jsp" %>
</div>
</body>
<script type="text/javascript">
	$(function(){
		initMenu();
		QandABox({
			tsMenuId:$($("div[ts-data='leftbox'] li")[0]).attr("ts-data-li")
		});
		
		$("div .navitem").click(function(){
			$(this).addClass("selected");
			$(this).siblings().removeClass("selected");
		});
		
		$("div[ts-data='leftbox'] li").click(function(){
			$("#keyword").val("");
			var i = $(this).attr("ts-data-li");
			QandABox({tsMenuId:i});
		});
		
		$("#keyword").keypress(function(e) {
			if(e.which == 13) {
				QandABox({keyword:$("#keyword").val()});
			}
		}); 
	});
</script>
<script type="text/javascript">
	function initMenu(){
		var menu = WSFUNCTION.doPost("/technicalSupport/html/menuList", {});
		var lv1Menu = new Array(), lv2Menu = new Array(), html = "";
		for(var i=0;i<menu.length;i++){
			if(menu[i].parentId == 0) lv1Menu.push(menu[i]);
			else lv2Menu.push(menu[i]);
		}
		for(var i=0;i<lv1Menu.length;i++){
			var sel = "";
			if(i == 0) sel = "selected";
			html += "<div class='navitem "+sel+"'>"
				+"<a href='javascript:void(0);'>"+(i+1)+"、"+lv1Menu[i].tsName+"</a>"
				+"<div class='subcat' ts-data='"+lv1Menu[i].id+"'></div></div>";
		}
		$("div[ts-data='leftbox']").html(html);
		var LVM = $("div .navitem");
		for(var i=0;i<LVM.length;i++){
			var pid = $(LVM[i]).find("div").attr("ts-data"), childHtml = "<ul>";
			for(var j=0;j<lv2Menu.length;j++){
				if(lv2Menu[j].parentId == pid)
					childHtml += "<li ts-data-li='"+lv2Menu[j].id+"'><a href='javascript:void(0);'>"+
						lv2Menu[j].tsName+"</a></li>"
			}
			childHtml += "</ul>";
			$(LVM[i]).find("div").html(childHtml);
		}
	}
	function QandABox(json){
		var QA = WSFUNCTION.doPost("/technicalSupport/html/QandAList", json);
		var html = "";
		for(var i=0;i<QA.length;i++){
			html += "<dl>"
				+"<dt><span class='icon'>问</span>"+QA[i].question+"</dt>"
				+"<dd><span class='icon'>答</span><p>"+QA[i].answer+"</p></dd>"
				+"</dl>";
		}
		$("div .aq_main").html(html);
	}
</script>
</html>

