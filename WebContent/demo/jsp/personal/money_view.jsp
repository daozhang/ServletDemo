<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/demo/css/common.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/cmn.js"></script>
<link href="<%=request.getContextPath()%>/demo/css/head.css" type="text/css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/demo/css/banner.css" type="text/css" rel="stylesheet" >
<style type="text/css">
    #pg_content {
        margin: auto auto;
    }
</style>
</head>
<body>
    <%@ include file="/demo/jsp/cmn/top.jsp"%>
    <%@ include file="/demo/jsp/cmn/banner.jsp"%>
    <div id="pg_content" style="width:998px">
        <table class="pg_table">
            <tr class="pg_tr">
                <td>查询月份<input type="text" size="2" maxlength="2" name="startMonth"/>～<input type="text" size="2" maxlength="2" name="endMonth"/></td>
                <td><input type="submit" value="检索"/></td>
            </tr>
        </table>
        <br>
	    <table width="150px" bgcolor="#4F94CD">
	        <tr>
	            <td align="center" nowrap="nowrap"
	                style="color: white; font-size: 12; font-weight: bolder;">收入支出明细</td>
	        </tr>
	    </table>
	    <table class="gridtable" cellspacing="0" border="1px solid"
	        width="600px">
	        <tr>
	            <th>月份</th>
	            <th>收入</th>
	            <th>支出</th>
	            <th>详细情况</th>
	        </tr>
	        <c:forEach var="money" items="${moneyList}">
	            <tr onmouseover="this.style.backgroundColor='#ffff66';"
	                onmouseout="this.style.backgroundColor='#d4e3e5';">
	                <td class="td_middle_class"><c:out value="${money.monthCd}"></c:out></td>
	                <td class="td_right_class"><c:out value="${money.inMoney}"></c:out></td>
	                <td class="td_right_class"><c:out value="${money.outMoney}"></c:out></td>
	                <td class="td_middle_class"><a
	                    href="/servlet/money_detail?month_cd=${money.monthCd}">明细</a></td>
	            </tr>
	        </c:forEach>
	        <c:forEach var="money" items="${resultList }">
	            <tr>
	                <td>合计</td>
	                <td><c:out value="${money.inMoney }"></c:out></td>
	                <td><c:out value="${money.outMoney }"></c:out></td>
	                <td><a href="/servlet/money_detail?month_cd=${money.monthCd}">明细</a></td>
	            </tr>
	        </c:forEach>
	    </table>
	</div>
</body>
</html>