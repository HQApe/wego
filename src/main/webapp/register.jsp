<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ape.wego.web.handler.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<script type="text/javascript">

function getCode(){
	//创建XMLHttpRequest 请求的对象
    var request;
	if(window.XMLHttpRequest){
		request = new XMLHttpRequest();
	}else {
	    request = new ActiveXObject("MSXML2.XMLHTTP");
	}
    // 请求的方式
    var method = "GET";
    // 请求的连接地址
    var url = "http://localhost:8080/wego/getCode.do";
    // 初始化请求参数
    request.open(method, url,true);
    // 发送请求
    request.send(null);
    request.onreadystatechange = function(){
        // 如果响应请求
        if(request.readyState==4){
            // 如果请求成功
            if(request.status==200 || request.status==304){
                var text = request.responseText;
                var data = eval("("+text+")");
                var span = document.getElementsByTagName("span")[0];
                span.innerHTML = span.innerHTML+data.user.address.province;
            }
        }
    };
    
}
</script>
</head>
<body>

<strong>${message}</strong>
	
	<form name="registerForm" action="register.do" method="post" enctype=”multipart/form-data”>
   		<img alt="头像" src="#" width="100" height="100" >
		<p>
			<label>头&nbsp; &nbsp; 像:<input name="avatar" type="file" ></label>
		</p>
	
		<p>
			<label>账&nbsp; &nbsp; 号:<input name="account" id="account"></label>
		</p>
		<p>
			<label>昵&nbsp; &nbsp; 称:<input name="name"></label>
		</p>
		<p>
			<label>密&nbsp; &nbsp; 码:<input name="password"></label>
		</p>
		<p>
			<label>验证码:<input name="code"></label> <button type="button" onclick="getCode();">获取验证码</button>
		</p>
		<p>
			<button type="submit">注册</button>
		</p>
	</form>
	<%session.removeAttribute("message"); %>
</body>
</html>