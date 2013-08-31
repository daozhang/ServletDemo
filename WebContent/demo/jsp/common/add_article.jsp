<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章录入</title>
<script src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
<script>
    function wordCal() {
    	var i = 0;
    	var title = document.getElementById("title").value;
    	for(var j = 0;j < title.length;j++) {
    		if(title[j].charCodeAt(0)<299) {
    			i ++;
    		}else{
    			i += 2;
    		}
    	}
    	return i;
    }
    function setTips() {
    	var wordCount = wordCal();
    	var leftWords = 0;
    	if(wordCount <= 100) {
    		leftWords = 100 - wordCount;
    		document.getElementById("tips").innerText = leftWords;
    	}
    }
</script>
</head>
<body>
    <form action="/servlet/add_Article">
        <table>
            <tr>
                <td class="pageTitle" height="25px" bgcolor="#AACDED" >添加文章</td>
            </tr>
            <tr>
                <td><input type="radio" name="sort" value="1"/>学习<input type="radio" name="sort" value="2"/>其他</td>
            </tr>
            <tr>
                <td>
                    <select name="type" style="width:120px">
                        <option>请选择文章分类</option>
                        <c:forEach var="sort" items="${sortList}">
                            <option ><c:out value="${sort.sortName }"></c:out></option>
                        </c:forEach>
                    </select>
                    <input type="text" name="titile" id="title" size="60" onkeyup="setTips();"/><font id="tip">还可输入<font id="tips">100</font>个字符</font></td>
            </tr>
            <tr>
                <td><textarea class="ckeditor" name="text" id="editor1" rows="20" cols="87"></textarea></td>
            </tr>
            <tr>
                <td><input type="text" name="keywords" size="80"/></td>
            </tr>
            <tr>
                <td><input type="text" name="url" size="80"/></td>
            </tr>
            <tr>
                <td><input type="text" name="url" size="80"/></td>
            </tr>
        </table>
    </form>
    <ckeditor:replace replace="editor1" basePath="/ckeditor/" />
</body>
</html>


