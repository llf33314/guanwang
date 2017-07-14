"use strict";
var WS_ob = "";
var WSFUNCTION = {
		
		initTables : function(obj){
			var N_T = obj, html = "";
			var data = WSFUNCTION.doPost(obj.url, obj.param);
			if(obj.columns.length != 0){
				html += "<thead><tr>";
				for(var i=0;i<obj.columns.length;i++){
					html += "<th>"+obj.columns[i].name+"</th>";
				}
				html += "</tr></thead>";
			}
			if(data.length != 0){
				html += "<tbody>";
				for(var i=0;i<data.length;i++){
					html += "<tr class='gradeA'>";
					for(var j=0;j<obj.columns.length;j++){
						if(obj.columns[j].render != null && obj.columns[j].render != "undefined"){
							html += "<td>"+obj.columns[j].render(data[i])+"</td>";
						}else{
							html += "<td>"+data[i][obj.columns[j].col]+"</td>";
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
		},
		
		doPost : function(url, param){
			var c = {};
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: param,
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						c = d.data;
					}else{
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
			return c;
		},

		doPostCallback: function(jsonParam){
			$.ajax({
				url: jsonParam.url, 
				type: "POST",
				async: false,
				data: jsonParam.param,
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						jsonParam.func(d.data);
					}else{
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
		},
		
		doPostReturnFull : function(url, param){
			var c = {};
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: param,
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						c = d;
					}else{
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
			return c;
		},
		
		del : function(url, param, backUrl){
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: param,
				success: function(data){
					var d = eval("("+data+")");
//					msgBox("信息", d.msg);
//					gtView(backUrl);
					WS_ob.parent().parent().remove();
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
		},
		
		sendDel : function(url, param, backUrl, ob){
			WS_ob = ob;
			$("body").append("<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>"+"" +
					"<div class='modal-header'>" + 
					"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>×</button>" + 
					"<h3>删除</h3>" + 
					"</div>" +
					"<div class='modal-body'>" +
					"<p>确认要删除吗？</p>" +
					"</div>" +
					"<div class='modal-footer'>" +
					"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();WSFUNCTION.del(\""+url+"\", {id:"+param.id+"}, \""+backUrl+"\")'>确认</a>" +
					"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>取消</a>" +
					"</div>" +
					"</div>");
			$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
		},
		
		msgBox : function(title, msg){
			$("body").append("<div id='msgBox' class='modal hide in' aria-hidden='false' style='display: block;'>" +
					"<div class='modal-header'>" +
					"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'>×</button>" +
					"<h3>"+title+"</h3>" +
					"</div>" +
					"<div class='modal-body'>" +
					"<p>"+msg+"</p>" +
					"</div>" +
					"</div>");
			$("body").append("<div class='modal-backdrop  in' onclick='$(\"#msgBox\").remove();$(\".modal-backdrop\").remove();'></div>");
		},
		
		videoFrame : function(url){
			$("body").append('<div id="inlineBox"><div class="inlineBox"><div class="inlineBox-til">'
					+'<div onclick="$(\'#inlineBox\').remove();">X</div></div>'
					+'<div class="inlineBox-ifr"><iframe src="'+url+'"></iframe></div></div></div>');
		},
		
};








