$(function(){
	$("#materialModalBtn").click(function(){
		initMaterial();
		materialParams.rows = materialDefulatRows;
		materialTabClick(1); // 默认加载图片
	});
});


var materialDefulatRows = 12;
var materialParams = {}; // 分页
var materialTabType; // 类型
var materialOutputArray = []; // 输出数组
var materialSelIdArray = []; // 选中的ID

/**
 * 初始化空数据
 */
function initMaterial(){
	materialParams = {};
	materialTabType = 0;
	clearMaterial();
};

/**
 * 清除所有状态
 */
function clearMaterial(){
	if(materialSelIdArray.length > 0){
		$.each(materialSelIdArray, function(i, id){
			var thisJs = $("#" + id);
			thisJs.css("border-color","#ddd");
		});
		$(".myselectValue").css("color", "black");
		$(".myselectValue").children("span").html(0);
	}
	materialOutputArray = [];
	materialSelIdArray = [];
};


/**
 * 选项切换
 * @param type 类型
 */
function materialTabClick(type){
	if(materialTabType == type){
		return;
	}
	materialTabType = type;
	materialParams.page = 1;
	countMaterial(type);
	if(materialParams.count == 0){
		var nothingHtml = '<p class="text-center text-danger">素材库里什么也没有</p>';
		if(type == 1){
			$("#imgView").html(nothingHtml);
		}
		else if(type == 2){
			$("#audioView").html(nothingHtml);
		}
		else if(type == 3){
			$("#videoView").html(nothingHtml);
		}
		return;
	}
	listMaterial(type, materialParams);
};

/**
 * 选择素材
 */
function selectMaterial(){
	$("#materialModalVal").val(materialOutputArray);
};

/**
 * 获取素材
 */
function getMaterialArray(){
//	var materialOutputArray = $("#materialModalVal").val();
	return materialOutputArray;
};

/**
 * 关闭素材库
 */
function closeMaterial(){
	initMaterial(); // 返回init状态
};

/**
 * 取消所选择素材
 */
function cancelMaterial(){
	clearMaterial(); // 清除状态
};

/**
 * 删除所选素材
 */
function deleteMaterial(){
//	delMaterial(materialTabType, materialSelIdArray.serializeArray());
	if(materialSelIdArray.length <= 0){
		alert("请先选择要删除的素材!");
		return;
	}
	delMaterial(materialTabType, materialSelIdArray.join(","));
};

/**
 * 分页查询
 */
function getMaterialByPage(type, page){
	var tempPage = materialParams.page;
	if(page == -1){ // 上一页
		if(tempPage <= 1){
			// 已经是第一页
//			alert("已经是第一页啦");
			return;
		}
		tempPage--;
		materialParams.page = tempPage;
	}else if(page == -2){ // 下一页
		if(tempPage >= materialParams.pageAll){
//			alert("已经是最后一页啦");
			return;
		}
		tempPage++;
		materialParams.page = tempPage;
	}else if(page > 0){ // 页码选择
		materialParams.page = page;
	}
	listMaterial(type, materialParams);
	$(".pgntPageOnce").html(materialParams.page);
	materialCheckPageBtn();
};

function materialCheckPageBtn(){
	var status = 0;
	if(materialParams.page <= 1){ // 第一页
		status = -1;
	}
	if(materialParams.page >= materialParams.pageAll){ // 最后一页
		if(status == -1){
			status = -3;
		} else{
			status = -2;
		}
	}
	switch (status) {
	case 0:
		$(".pgntPageUpBtn").removeClass("disabled");
		$(".pgntPageDnBtn").removeClass("disabled");
		break;
	case -1:
		$(".pgntPageUpBtn").addClass("disabled");
		$(".pgntPageDnBtn").removeClass("disabled");
		break;
	case -2:
		$(".pgntPageUpBtn").removeClass("disabled");
		$(".pgntPageDnBtn").addClass("disabled");
		break;
	case -3:
		$(".pgntPageUpBtn").addClass("disabled");
		$(".pgntPageDnBtn").addClass("disabled");
		break;
	}
	
};

/**
 * 上传文件
 * @param type
 * @param thisJs
 */
function wsUpload(type,thisJs,fileId){
	thisJs.siblings(".filename").html(getFileName(thisJs.val()));
	$.ajaxFileUpload({  
        url : path + 'material/' + type + '/upload.do',  
        secureuri : false, //安全协议  
        fileElementId : fileId, //id  
        type : 'POST',  
        dataType : 'json',  
        data : {},  
        async : false,  
        error : function(data, status, e) {  
        	alert("上传文件错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");  
        }, 
        success : function(data) {
        	if(data.status == 0){
        		alert(data.msg);
        	}
			var typethis = materialTabType;
			initMaterial();
			materialParams.rows = materialDefulatRows;
			materialTabClick(typethis); // 默认加载
        }  
    });
};

/**
 * 获取总数
 */
function countMaterial(type){
	$.ajax({
		type: 'POST',
		url: path + 'material/' + type + '/countMaterial.do',
		dataType: 'json',
		async : false, 
		error: function(){
			alert("获取素材库信息错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
		},
		success: function(data){
			materialParams.count = data;
			if(data == 0){
				materialParams.pageAll = 1;
			}else if(data % materialParams.rows == 0){
				materialParams.pageAll = parseInt(data / materialParams.rows);
			} else{
				materialParams.pageAll = parseInt(data / materialParams.rows) + 1;
			}
			$(".pgntPageAll").html(materialParams.pageAll);
			$(".pgntPageOnce").html(materialParams.page);
			materialCheckPageBtn(); // 判断按钮状态
		}
	});
};

/**
 * 分页获取素材列表
 * @param type
 * @param materialParams page当前页 rows每页数量
 */
function listMaterial(type, materialParams){
	$.ajax({
		type: 'POST',
		url: path + 'material/' + type + '/listMaterial.do',
		data: $.param(materialParams),
		dataType: 'json',
		async : false, 
		error: function(){
			alert("获取素材库信息错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
		},
		success: function(data){
			switch (type) {
			case 1:
				var showHtml = '';
				$.each(data, function(i, item){
					if(i == 0){
						showHtml += '<div class="row-fluid padd-bottom">';
					}else if((i % 3) == 0){
						showHtml += '</div>';
						showHtml += '<div class="row-fluid padd-bottom">';
					}
					showHtml += '<div class="span4">' + 
									'<a id="' + item.id + '" href="javascript:imgClick(' + item.id + ');" class="thumbnail myimgstyle">' + 
										'<img src="' + item.materialSrc + '">' + 
									'</a>' + 
								'</div>';
					if(i == data.length){
						showHtml += '</div>';
					}
				});
				$("#imgView").html(showHtml);
				break;
			case 2:
				var showHtml = '';
				$.each(data, function(i, item){
					if(i == 0){
						showHtml += '<div class="row-fluid padd-bottom">';
					}else if((i % 2) == 0){
						showHtml += '</div>';
						showHtml += '<div class="row-fluid padd-bottom">';
					}
					showHtml += '<div class="span6">' + 
									'<a id="' + item.id + '" href="javascript:audioClick(' + item.id + ');" class="thumbnail myaudiostyle">' + 
										'<audio src="' + item.materialSrc + '" controls="controls"></audio>' + 
									'</a>' + 
								'</div>';
					if(i == data.length){
						showHtml += '</div>';
					}
				});
				$("#audioView").html(showHtml);
				break;
			case 3:
				var showHtml = '';
				$.each(data, function(i, item){
					if(i == 0){
						showHtml += '<div class="row-fluid padd-bottom">';
					}else if((i % 2) == 0){
						showHtml += '</div>';
						showHtml += '<div class="row-fluid padd-bottom">';
					}
					showHtml += '<div class="span6">' + 
									'<a id="' + item.id + '" href="javascript:videoClick(' + item.id + ');" class="thumbnail myvideotyle">' + 
										'<video src="' + item.materialSrc + '" controls="controls"></video>' + 
									'</a>' + 
								'</div>';
					if(i == data.length){
						showHtml += '</div>';
					}
				});
				$("#videoView").html(showHtml);
				break;
			default:
				alert("获取素材库信息错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
				break;
			}
			
		}
	});
};

/**
 * 删除素材
 * @param type
 * @param params 素材库id的集合
 */
function delMaterial(type, params){
	$.ajax({
		type: 'POST',
		url: path + 'material/' + type + '/deleteMaterial.do',
		data: {ids : params},
		dataType: 'json',
		async : false, 
		error: function(){
			alert("获取素材库信息错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
		},
		success: function(data){
			if(!data.status){
				alert("删除素材库信息失败，请检查网络，并重试。若问题还未解决，请联系技术人员！");
			}
			var typethis = materialTabType;
			initMaterial();
			materialParams.rows = materialDefulatRows;
			materialTabClick(typethis); // 默认加载
		}
	});
};

/**
 * 获取文件名
 * @param o
 * @returns
 */
function getFileName(o){
    var pos = o.lastIndexOf("\\");
    return o.substring(pos + 1);  
};

/**
 * 文件选择
 */
function imgClick(thisId){
	var thisJs = $("#" + thisId);
	var checkflag = false; // 是否选中
	var this_id = thisJs.attr("id");
	$.each(materialSelIdArray, function(i, val){
	      if(this_id == materialSelIdArray[i]){
	    	  checkflag = true;
	      }
	}); 
	if(checkflag){
		materialSelIdArray.splice($.inArray(this_id, materialSelIdArray), 1);
		var this_src = thisJs.children("img").attr("src");
		materialOutputArray.splice($.inArray(this_src, materialOutputArray), 1);
		thisJs.css("border-color","#ddd");
	}else{
		if(materialSelIdArray.length >= 7){
			thisJs.css("border-color","#ddd");
			$(".myselectValue").css("color", "red");
			return;
		}
		materialSelIdArray.push(this_id);
		var this_src = thisJs.children("img").attr("src");
		materialOutputArray.push(this_src);
		thisJs.css("border-color","#08c");
	}
	$(".myselectValue").css("color", "black");
	$(".myselectValue").children("span").html(materialSelIdArray.length);
};


function audioClick(thisId){
	var thisJs = $("#" + thisId);
	var checkflag = false; // 是否选中
	var this_id = thisJs.attr("id");
	$.each(materialSelIdArray, function(i, val){
		if(this_id == materialSelIdArray[i]){
			checkflag = true;
		}
	}); 
	if(checkflag){
		materialSelIdArray.splice($.inArray(this_id, materialSelIdArray), 1);
		var this_src = thisJs.children("audio").attr("src");
		materialOutputArray.splice($.inArray(this_src, materialOutputArray), 1);
		thisJs.css("border-color","#ddd");
	}else{
		if(materialSelIdArray.length >= 7){
			thisJs.css("border-color","#ddd");
			$(".myselectValue").css("color", "red");
			return;
		}
		materialSelIdArray.push(this_id);
		var this_src = thisJs.children("audio").attr("src");
		materialOutputArray.push(this_src);
		thisJs.css("border-color","#08c");
	}
	$(".myselectValue").css("color", "black");
	$(".myselectValue").children("span").html(materialSelIdArray.length);
};

function videoClick(thisId){
	var thisJs = $("#" + thisId);
	var checkflag = false; // 是否选中
	var this_id = thisJs.attr("id");
	$.each(materialSelIdArray, function(i, val){
		if(this_id == materialSelIdArray[i]){
			checkflag = true;
		}
	}); 
	if(checkflag){
		materialSelIdArray.splice($.inArray(this_id, materialSelIdArray), 1);
		var this_src = thisJs.children("video").attr("src");
		materialOutputArray.splice($.inArray(this_src, materialOutputArray), 1);
		thisJs.css("border-color","#ddd");
	}else{
		if(materialSelIdArray.length >= 7){
			thisJs.css("border-color","#ddd");
			$(".myselectValue").css("color", "red");
			return;
		}
		materialSelIdArray.push(this_id);
		var this_src = thisJs.children("video").attr("src");
		materialOutputArray.push(this_src);
		thisJs.css("border-color","#08c");
	}
	$(".myselectValue").css("color", "black");
	$(".myselectValue").children("span").html(materialSelIdArray.length);
};
