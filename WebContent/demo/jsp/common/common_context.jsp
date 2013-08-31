<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <style type="text/css">
body {
    background: url(<%=request.getContextPath()%>/demo/images/32.jpg);
}

#all {
    border: 1px solid #cccccc;
    height: 600px;
}
table {
    width: 400px;
    border: 1px solid #cccccc;
}

.welcome {
    text-align: center;
    padding-top: 100px;
}
</style>
    </head>
    <body>
        <div id="all">
            <div class="welcome">
                <img src="<%=request.getContextPath()%>/demo/images/bg-word.png">
            </div>
        </div>
    </body>
</html>