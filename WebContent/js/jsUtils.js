function initJsonTables(obj){
	var N_T = obj, html = "";
	var data = doJsonPost(obj.url, obj.param);
	if(obj.columns.length != 0){
		html += "<thead><tr>";
		for(var i=0;i<obj.columns.length;i++){
			html += "<th><center>"+obj.columns[i].name+"</center></th>";
		}
		html += "</tr></thead>";
	}
	if(data.length != 0){
		html += "<tbody>";
		for(var i=0;i<data.length;i++){
			html += "<tr class='gradeA'>";
			for(var j=0;j<obj.columns.length;j++){
				if(obj.columns[j].render != null && obj.columns[j].render != "undefined"){
					html += "<td><center>"+obj.columns[j].render(data[i])+"</center></td>";
				}else{
					html += "<td><center>"+data[i][obj.columns[j].col]+"</center></td>";
				}
			}
			html += "</tr>";
		}
		html += "</tbody>";
	}
	$("#"+obj.tableId).html(html);
	N_T.refresh = function(){
		initTables(N_T);
	};
	return N_T;
}

function msgBox(title, msg){
	$("body").append("<div id='msgBox' class='modal hide in' aria-hidden='false' style='display: block;'>" +
			"<div class='modal-header'>" +
			"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'>×</button>" +
			"<h3>"+title+"</h3>" +
			"</div>" +
			"<div class='modal-body'>" +
			"<p>"+msg+"</p>" +
			"</div>" +
			"<div class='modal-footer'>" +
			"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'>确认</a>" +
			"</div>" +
			"</div>");
	$("body").append("<div class='modal-backdrop  in' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'></div>");
}

function msgBox(msg){
	$("body").append("<div id='msgBox' class='modal hide in' aria-hidden='false' style='display: block;'>" +
			"<div class='modal-header'>" +
			"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'>×</button>" +
			"<h3>信息</h3>" +
			"</div>" +
			"<div class='modal-body'>" +
			"<p>"+msg+"</p>" +
			"</div>" +
			"<div class='modal-footer'>" +
			"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'>确认</a>" +
			"</div>" +
			"</div>");
	$("body").append("<div class='modal-backdrop  in' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'></div>");
}

function doJsonPost(url, param){
	var c = {};
	$.ajax({
		url: url, 
		type: "POST",
		async: false,
		data: param,
		success: function(data){
			//var d = eval("("+data+")");
			var d = data;
			if(d.status == 1){
				c = d.data;
			}else{
				msgBox("网络繁忙!");
			}
		},
		error: function(){
			msgBox("网络繁忙!");
		}
	});
	return c;
}