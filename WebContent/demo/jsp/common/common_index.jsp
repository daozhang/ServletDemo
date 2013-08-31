<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
</head>
<frameset rows="64,*" frameborder="NO" border="0" framespacing="0" >
    <frame src="<%=request.getContextPath()%>/demo/jsp/common/common_top.jsp" scrolling="no" noresize="noresize" marginwidth="0" marginheight="0"></frame>
        <frameset cols="220,*"  rows="800,*" id="frame" frameborder="NO" border="0" framespacing="0">
            <frame src="<%=request.getContextPath()%>/demo/jsp/common/common_left_menu.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" ></frame>
            <frame src="<%=request.getContextPath()%>/demo/jsp/common/common_context.jsp" name="main" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" ></frame>
        </frameset>
</frameset>
</html>