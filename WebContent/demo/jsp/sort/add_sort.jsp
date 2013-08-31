<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加分类</title>
</head>
<body>
    <form action="/servlet/add_sort">
        <table>
            <tr>
                <td class="pageTitle" height="25px" bgcolor="#AACDED" >添加一级分类</td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>NO</td>
                            <td>分类ID</td>
                            <td>分类名称</td>
                        </tr>
                        <c:forEach var="sort" items="${sortList}" varStatus="index">
                            <tr>
                                <td><c:out value="${index}"></c:out>
                                <td><c:out value="${sort.sortId }"></c:out></td>
                                <td><c:out value="${sort.sortName }"></c:out></td>
                            </tr>
                        </c:forEach>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>