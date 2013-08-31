<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WaTaShiWaKouDeSu!</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js"></script>
<link href="<%=request.getContextPath()%>/demo/css/head.css" type="text/css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/demo/css/login.css" type="text/css" rel="stylesheet" >
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/cmn.js"></script>
</head>
<body>
    <%@ include file="/demo/jsp/cmn/top.jsp" %>
    <div id="OSC_Screen">
    <div class="CenterDiv" id="OSC_Content">
        <div id="user_page">
            <form method="post" action="/ServletDemo/login">
                <div id="form_user">
                <h2>登录中国式码农</h2>
                <table>
                    <tbody>
                        <tr>
                            <th></th>
                            <td><div style="display: none;" class="error_msg"
                                    id="error_msg"></div></td>
                        </tr>
                        <tr>
                            <th nowrap="">邮箱：</th>
                            <td><input type="text" style="width: 200px;" value=""
                                placeholder="帐号/邮箱" class="TEXT" id="f_email" name="userName"></td>
                        </tr>
                        <tr>
                            <th>登录密码：</th>
                            <td><input type="password" style="width: 200px;"
                                class="TEXT" id="f_pwd" name="password"></td>
                        </tr>
                        <tr>
                            <th>&nbsp;</th>
                            <td><input type="checkbox" checked="checked" value="1"
                                name="save_login"> 记住我的登录信息<span style="color: #A00;">（请勿在公用电脑或者网吧内使用此项）</span></td>
                        </tr>
                        <tr class="buttons">
                            <th>&nbsp;</th>
                            <td><input type="submit" class="BUTTON SUBMIT" value="现在登录">&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="http://www.oschina.net/home/reset-pwd">忘记登录密码？</a></td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <div id="login_tip">没有帐号？ <a href="/home/reg">注册新会员</a>
                    <h3>登录后可以？</h3>
                    <ol>
                        <li>分享的开源软件和IT技术心得</li>
                        <li>参与开源软件/新闻的讨论和评论</li>
                        <li>与技术人士进行讨论和交流</li>
                        <li>发布招聘信息、找工作</li>
                    </ol>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>