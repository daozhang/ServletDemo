<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
<style type="text/css">
	body {
	background: #EEF2FB;
}

#tabTitle {
	font-family: 隶书;
	font-size: 30px;
	color: #3995d3;
	font-weight: bold;
	text-align: center;
}

#tab {
	width: 100%;
	text-align: left;
	border-collapse: collapse;
	font-size: 12px;
}

table {
	width: 60%;
	margin: 0px auto;
	background-color: white;
}
#tab td{
	border: 1px solid #AACDED;
	padding: 3px;
}
</style>
	</head>
	<body>
		<div id="all">
			<div id="tabTitle">
				用户名修改
			</div>
			<div id="tab">
				<form action="../servlet/resetAdminName" method="post">
					<table>
						<tr>
							<td class="word">
								新用户名：
							</td>
							<td>
								<input type="text" name="newName" />
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="提 交" />
								<input type="reset" value="取 消" />
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>