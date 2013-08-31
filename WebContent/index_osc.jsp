<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WaTaShiWaKouDeSu!</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/demo/css/common.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/cmn.js"></script>
<link href="<%=request.getContextPath()%>/demo/css/head.css" type="text/css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/demo/css/banner.css" type="text/css" rel="stylesheet" >

</head>
<body>
    <form action="dispatch" method="post">
        <%@ include file="/demo/jsp/cmn/top.jsp" %>
        <%@ include file="/demo/jsp/cmn/banner.jsp" %>
    </form>
</body>
</html>