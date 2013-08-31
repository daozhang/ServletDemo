<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <style type="text/css">
body {
    height: 150px;
    background: url(<%=request.getContextPath()%>/demo/images/top-right.gif) repeat-x;
}

.logo {
    position: absolute;
    top: 0px;
    left: 10px;
}

.out {
    position: absolute;
    top: 12px;
    right: 10px;
}
</style>
        <script src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js">
</script>
<script type="text/javascript">
$(function() {
    $("#exit").click(function() {
        parent.window.close();
    });
});
</script>
    </head>
    <body>
        <div id="all">
            <div id="top">
                <img src="<%=request.getContextPath()%>/demo/images/logo1.png" class="logo" />
                <img src="<%=request.getContextPath()%>/demo/images/out.gif" id="exit" class="out" />
            </div>
        </div>
    </body>
</html>