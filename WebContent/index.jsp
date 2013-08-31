<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Simpla Admin</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/demo/resources/css/reset.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/demo/resources/css/style.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/demo/resources/css/invalid.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="<%=request.getContextPath() %>/demo/js/jquery-1.4.1.min.js"></script>
</head>
<body id="login">
	<div id="login-wrapper" class="png_bg">
		<div id="login-top">
			<h1>Simpla Admin</h1>
			<a href="#"><img id="logo" src="<%=request.getContextPath() %>/demo/resources/images/logo.png" alt="Simpla Admin logo" /></a>
		</div>
		<div id="login-content">
			<form method="post" action="/ServletDemo/login">
				<div class="notification information png_bg">
					<div>Just click "Sign In". No password needed.</div>
				</div>
				<p>
					<label>Username</label> <input class="text-input" type="text" name="userName"/>
				</p>
				<div class="clear"></div>
				<p>
					<label>Password</label> <input class="text-input" type="password" name="password"/>
				</p>
				<div class="clear"></div>
				<p id="remember-password">
					<input type="checkbox" /> Remember me
				</p>
				<div class="clear"></div>
				<p>
					<input class="button" type="submit" value="Sign In" />
				</p>
			</form>
		</div>
	</div>
</body>
</html>
