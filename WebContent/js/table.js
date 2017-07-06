$(function() {

// 手机号栏失去焦点
$("#cooPhone").blur(function() {
	phone();
});

//邮箱失去焦点
$("#cooEmail").blur(function() {
	validEmail();
});

//姓名失焦
//邮箱失去焦点
$("#cooName").blur(function() {
	validName(this);
});

});

/**
 * 邮箱姓名
 * @returns {Boolean}
 */
function validName(obj){
	if($(obj).val() == ""){
		$("#userNamePrompt").addClass("errorTextColor");
		$("#userNamePrompt").html("姓名不能为空！");
	}else{
		$("#userNamePrompt").html("");
	}
}

/**
 * 邮箱验证
 * @returns {Boolean}
 */
function validEmail() {
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	var flag = false;
	if($("#cooEmail").val() == ""){
		$("#emailPrompt").addClass("errorTextColor");
		$("#emailPrompt").html("邮箱不能为空！");
		flag = false;
	}else if(!reg.test($("#cooEmail").val())){
		$("#emailPrompt").addClass("errorTextColor");
		$("#emailPrompt").html("邮箱格式错误！");
		flag = false;
	}else{
		$("#emailPrompt").html("");
	}
	return flag;
}

//手机号码的验证方法
function phone() {
	var reg =  /^0?(13[0-9]|15[012356789]|17[0678]|18[0123456789]|14[57])[0-9]{8}$/;
	if ($("#cooPhone").val() == "") {
		$("#phonePrompt").addClass("errorTextColor");
		$("#phonePrompt").html("手机号码不能为空！");
		return false;
	} else if ($("#cooPhone").val().length < 11) {
		$("#phonePrompt").addClass("errorTextColor");
		$("#phonePrompt").html("手机号码长度有误！");
		return false;
	} else if (!reg.test($("#cooPhone").val())) {
		$("#phonePrompt").addClass("errorTextColor");
		$("#phonePrompt").html("手机号码格式错误！");
		return false;
	} else {
		$("#phonePrompt").html("");
	}
}

