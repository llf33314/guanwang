<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 修改密码 -->
<div id="modifyPWDModal" class="modal hide" aria-hidden="true" style="display: none;" data-backdrop="static">
	<div class="modal-header">
		<button data-dismiss="modal" class="close" type="button">×</button>
		<h3>修改密码</h3>
	</div>
	<div class="modal-body text-center">
		<div class="alert alert-danger hidden" id="modifyErrorMsg">修改失败</div>
		<div>原始密码：<input type="password" placeholder="请输入当前密码" id="oldPassword"/></div>
		<div>新的密码：<input type="password" placeholder="请输入新密码" id="newPassword"/></div>
		<div>重复密码：<input type="password" placeholder="请再次输入新密码" id="repeatPassword"/></div>
	</div>
	<div class="modal-footer">
		<a class="btn btn-primary" href="javascript:;" onclick="modifyPwd();">确认修改</a>
		<a id="modifyClose" data-dismiss="modal" class="btn" href="javascript:;" onclick="modifyCanel();">取消</a>
	</div>
</div>

<script type="text/javascript">
	function modifyVer(){
		var oldPassword = $("#oldPassword").val();
		var newPassword = $("#newPassword").val();
		var repeatPassword = $("#repeatPassword").val();
		if(oldPassword == newPassword){
			$("#modifyErrorMsg").html("新密码不能和原始密码相同");
			$("#modifyErrorMsg").removeClass("hidden");
			return false;
		}
		if(newPassword != repeatPassword){
			$("#modifyErrorMsg").html("两次输入的新密码不一致");
			$("#modifyErrorMsg").removeClass("hidden");
			return false;
		}
		return true;
	};

	function modifyPwd(){
		$("#modifyErrorMsg").addClass("hidden");
		var oldPassword = $("#oldPassword").val();
		var newPassword = $("#newPassword").val();
		if(!modifyVer()){
			return;
		}
		$.ajax({
			type: 'POST',
			url: path + "user/modifyPwd.do",
			data: {oldPassword : oldPassword, newPassword : newPassword},
			dataType: 'json',
			async : false, 
			error: function(){
				alert("修改用户密码错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
			},
			success: function(data){
				if(data.status <= 0){
					// 失败
					$("#modifyErrorMsg").html(data.msg);
					$("#modifyErrorMsg").removeClass("hidden");
				}else{
					alert("修改成功，请使用新密码登录!");
					window.location = path + "user/loginOut.do";
				}
			}
		});
	};
	
	function modifyCanel(){
		// 取消
		$("#oldPassword").val("");
		$("#newPassword").val("");
		$("#repeatPassword").val("");
	};
</script>
