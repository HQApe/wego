<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeGo登录</title>
</head>
<script type="text/javascript">
	if(window.top!=window)
	{
		window.top.location.href=window.location.href;
	}
	
	function reloadCode() {
		var time = new Date().getTime();
		document.getElementById("imageCode").src="${pageScope.request.contextPath}/vip/getCode.do?d="+time;
	}
</script>
<body>
	<strong>${message}</strong>
	
	<form id="login_form" action="login.do" method="post" class="longin-form">
		<div class="form-group">
			<label class="sr-only" for="userName">账&nbsp; &nbsp; 号:</label><input type="text" name="accountNo" placeholder="用户名" class="form-username form-control" id="userName" maxlength="20" required>
		</div>
		<div class="form-group">
			<label class="sr-only" for="password">密&nbsp; &nbsp; 码:</label><input type="password" name="password" placeholder="密码" required
			class="form-password form-control" id="password" maxlength="16">
		</div>
		
		<%-- action="${pageScope.request.contextPath}/vip/vip/add.do" --%>
		<div class="form-group code_div">
			<label class="sr-only" for="verifyCode">验证码:</label><input type="text" name="verifyCode" placeholder="验证码" maxlength="4"
			class="form-password form-control" id="code">
			<%-- <img alt="验证码" class="pull-right" src="${pageScope.request.contextPath}/vip/getCode.do" id="imageCode"/> --%>
			<a href="javascript:reloadCode();">看不清</a>
		</div>
		
		<div class="checkbox">
			<label> <input name="rememberPwd" type="checkbox"> 记住我</label>
		</div>
		
		<div class="form-group">
			<button id="login_btn" type="submit" class="btn">登录</button>
			<button id="register_btn" type="button" onclick="javascript:window.location.href='register.jsp';">注册</button>
		</div>
		<!-- <a href="register.do">注册新用户</a> -->
	</form>
	<%session.removeAttribute("message"); %>
</body>
</html>
