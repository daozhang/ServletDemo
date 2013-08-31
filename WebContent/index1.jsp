<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WaTaShiWaKouDeSu!</title>
<style type="text/css">
body {
    background-image: url(demo/images/bg-login.gif);
    background-repeat: repeat;
}
#div_center {
    width: 250px;
    height: 100px;
    margin: 0 auto;
}
td {
    height: 25px;
    align:center;
    valign:middle;
}
.button{
    color: white;
    border: 0px;
    width: 60px;
    background-image: url(demo/images/bg-button-green.gif);
    background-repeat: repeat-x;
}
#inputUsername{
    background-image: url(demo/images/username.gif);
    background-position: 1px 1px;
    background-repeat:no-repeat;
    padding-left: 21px;
}
#inputPassword{
    background-image: url(demo/images/password.gif);
    background-position: 1px 1px;
    background-repeat:no-repeat;
    padding-left: 21px;
}
.titleName{
    color: white;
    font-family: verdana, tahoma, sans-serif;
    FONT-SIZE: 14px;
    font-weight:bold;
}
a:link{
    font-color: white;
}
a:hover {
    color: #0066CC;
    text-decoration: none;
}
</style>
<script>
    function autoMiddle() {
        var div = document.getElementById("div_center");
        var divHeight = div.offsetHeight;
        var windowHeight = document.body.scrollHeight;
        div.style.marginTop = (windowHeight - divHeight) / 2 + "px";
    }
</script>
</head>

<body onload="autoMiddle();">
    <form action="login" method="post">
    <div id="div_center" >
        <table width="250px" height="100px" cellpadding="0" cellspacing="0">
            <tr>
                <td><font class="titleName">Username</font></td>
            </tr>
            <tr>
                <td><input id="inputUsername" type="text" name="userName"/></td>
            </tr>
            <tr>
                <td><font class="titleName">Password</font></td>
            </tr>
            <tr>
                <td><input id="inputPassword" type="password" name="password"/></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="登 录" class="button"/>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;font-size:10px;font-color:white;">
                    <a href="<%=request.getContextPath()%>/demo/acount/regist.jsp">点击注册新用户</a>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>