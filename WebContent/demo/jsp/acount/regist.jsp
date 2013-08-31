<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language="javascript">
    var XMLHttpReq = false;
    function creatXMLHttpRequest() { //创建XMLHttpRequest 对象
        if (window.XMLHttpRequest) { //Mozilla 浏览器
            XMLHttpReq = new XMLHttpRequest();
        } else if (window.ActiveXObject) { //IE 浏览器
            try {
                XMLHttpReq = new ActiveXObject("Msxm12.XMLHTTP");
            } catch (e) {
                try {
                    XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {
                }
            }
        }
    }
    //发出请求
    function sendRequest(url) {
        creatXMLHttpRequest();
        XMLHttpReq.open("POST", url, true);
        XMLHttpReq.onreadystatechange = processResponse;//指定响应函数(状态改变的触发器)
        //或 XMLHttpReq.onreadystatechange = function(){};
        XMLHttpReq.send(null);//发送请求
    }
    //处理返回信息函数
    function processResponse() {
        if (XMLHttpReq.readyState == 4) {
            window.alert(XMLHttpReq);
        }
    }
    function checkUserName() {
        var username = document.getElementById("username").value;//获取要验证的名字
        if (username == "") {
            window.alert("用户姓名不能为空");
            return false;
        } else {
            sendRequest("regist?username=" + username);//将信息发送到后台进行验证
        }
        return true;
    }
</script>
<body>
    <form action="<%=request.getContextPath() %>/regist" method="post">
       <input type="text" id="username" name="username" onblur="checkUserName()"/><br/>
       <input type="submit" value="提交"/>
    </form>
</body>
</html>