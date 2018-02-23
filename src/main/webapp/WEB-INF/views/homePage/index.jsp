<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WeGo主页</title>

<style type="text/css">
	
	menu,h1,ul{
		margin:0;
	}

	html,body{
		margin:0;
		height:100%;
		font-size:14px;
	}
	
	body>header{
		line-height:80px;
		text-align:center;
		background:#999;
	}
	
	body>header>h1{
		display:inline;
		text-align:center;
	}
	.body{
		position:absolute;
		top:80px;
		bottom:0;
		width:100%;
	}
	.body>menu{
		position:absolute;
		left:0;
		width:200px;
		height:100%;
		background:#eee;
		box-sizing:border-box;
	}
	.body>main{
		margin-left:200px;
		height:100%;
		width:100%
		dispaly:block;
	}
	main>iframe{
		height:100%;
		width:100%;
		border:0;
		display:block;
	}
</style>
</head>
<body>
	<header>
		<h1>WeGo管理后台系统</h1>
		<span>
			<b>你好 ${sessionScope.currentUser.userName}!</b>
			<a href="logout.do">退出登录</a>
		</span>
	</header>
	<section class="body">
		<menu>
			<ul>
				<li>
					<a href="vip/qry.do" target="mainFrame">VIP客户查询</a>
				</li>
				<li>
					<a href="vip/add.do" target="mainFrame">录入VIP客户</a>
				</li>
				<li>
					<a href="#" target="mainFrame">VIP客户管理</a>
				</li>
				<li>
					<a href="#" target="mainFrame">查看VIP消费记录</a>
				</li>
				<li>
					<a href="#" target="mainFrame">录入VIP消费记录</a>
				</li>
				<li>
					<a href="vip/allvip.do" target="mainFrame">VIP消费记录管理</a>
				</li>
				<li>
					<a href="updatepassword.do" target="mainFrame">修改密码</a>
				</li>
			</ul>
		</menu>
		<main>
			<iframe name="mainFrame" src="welcome.do"></iframe>
		</main>
	</section>
</body>
</html>