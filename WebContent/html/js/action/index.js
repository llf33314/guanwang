;$(function(){
	getCustomCaseAjax();
});

function getCustomCaseAjax(){
	$.ajax({
		type: 'POST',
		url: path + "test/getCustomCase.do",
		data: {code:"1"},
		success: function(data){
			var res = eval('('+data+')');
		},
		error: function(){
			
		}
	});
};

