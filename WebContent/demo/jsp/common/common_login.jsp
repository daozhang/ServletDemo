<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title>管理员登陆</title>
		<link href="css/" type="text/css" rel="Stylesheet" />
		<style>

body {
	background:url(images/bg-login.gif);
}
#mid {
	width: 600px;
	height: 400px;
	margin: 0px auto;
	margin-top:100px;
	background: url(images/admin_bg.png);
}
#tab{
	padding-top:100px;
}
table {
	width: 300px;
	height: 180px;
	border: 1px solid white;
}

input {
	width: 120px;
	height: 18px;
	border: 1px solid white;
}
#userName,#pwd {
	background-position: 1px 1px;
	background-repeat:no-repeat;
	FONT-SIZE: 12px;
	padding-left:21px;
	height:20px;
	width:150px;
}
#name,#pd {
	color: white;
	font-family: verdana, tahoma, sans-serif;
	FONT-SIZE: 11px;
	font-weight:bold;

}
#userName {
	background-image:url(images/username.gif);
}
#pwd {
	background-image:url(images/password.gif);
}

td {
	padding-left: 55px;
}

.loggin {
	width: 60px;
	height: 20px;
	color: white;
	font-family: verdana, tahoma, sans-serif;
	FONT-SIZE: 11px;
	font-weight: bold;
	border: 1px solid #459300;
	background: url(images/bg-button-green.gif);
}

#btn {
	padding-left:168px;
}
.foot {
	height: 200px;
}
.foot img {
	border:none;
	margin-top:180px;
}
</style>
		<script src="../js/jquery-1.4.1.min.js">
</script>
		<script type="text/javascript">
$(function() {
	$("#exit").click(function(){
		window.close();
	});
});
</script>
	</head>
	<body>
		<div id="mid">
			<div id="tab">
				<form action="../servlet/doAdminLogin" method="post">
				<table align="center">
					<tr>
						<td id="name">
							Username
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" id="userName" name="adminName" size="30"/>
						</td>
					</tr>
					<tr>
						<td id="pd">
							Password
						</td>
					</tr>
					<tr>
						<td>
							<input type="password" id="pwd" name="adminPassword" size="30"/>
						</td>
					</tr>
					<tr>
						<td id="btn">
							<br/>
							<input type="submit" value="Login" class="loggin" />
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
		<div class="foot">
			<img src="images/Green-011.png" alt="安全退出" width="60px" height="70px" id="exit"/>
			<a href="#">
				<img src="images/Green-045.png" alt="密码丢失" width="60px" height="70px" id="resetPwd"/>
			</a>
		</div>
	</body>
</html>
