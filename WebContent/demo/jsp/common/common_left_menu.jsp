<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>管理页面</title>
<style>
#all {
    padding-left: 8px;
}

.tab {
    width: 182px;
    height: 280px;
    border: 0px;
    cellpadding: 0px;
    cellspacing: 0px;
    margin: 10px;
}

body {
    font: 12px Arial, Helvetica, sans-serif;
    color: #000;
    margin: 0px;
    background: #EEF2FB;
}

#container {
    width: 182px;
}

.content {
    margin: 0px;
    padding: 0px;
    width: 182px;
}

#info {
    width: 182px;
    height: 80px;
    background: #AACDED;
    margin: 0px;
    padding: 0px;
}

.img {
    margin: 0px;
    padding: 0px;
}

h1 {
    display: block;
    font-size: 14px;
    text-align: center;
    color: #4169E1;
    height: 30px;
    widht: 182px;
    padding: 0px;
    margin: 0px;
}

.h1 {
    margin: 0px;
    padding: 0px;
    line-height: 30px;
    background: url("<%=request.getContextPath()%>/demo/images/menu_bgs.gif");
}

ul {
    padding-left: 0px;
    margin: 0px;
    list-style-type: none;
}

li {
    background: url("<%=request.getContextPath()%>/demo/images/menu_bg1.gif");
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    line-height: 26px;
    color: #333333;
    list-style-type: none;
    display: block;
    text-decoration: none;
    height: 26px;
    width: 182px;
    padding-left: 0px;
}

.MM {
    width: 182px;
    margin: 0px;
    padding: 0px;
    left: 0px;
    top: 0px;
    right: 0px;
    bottom: 0px;
    clip: rect(0px, 0px, 0px, 0px);
}

.MM li {
    background: url(<%=request.getContextPath()%>/demo/demo/images/menu_bg1.gif);
}

.MM a:link {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    line-height: 26px;
    color: #333333;
    background-image: url(<%=request.getContextPath()%>/demo/images/menu_bg1.gif);
    background-repeat: no-repeat;
    height: 26px;
    width: 182px;
    display: block;
    text-align: center;
    margin: 0px;
    padding: 0px;
    overflow: hidden;
    text-decoration: none;
}

.MM a:visited {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    line-height: 26px;
    color: #333333;
    background-image: url(<%=request.getContextPath()%>/demo/images/menu_bg1.gif);
    background-repeat: no-repeat;
    display: block;
    text-align: center;
    margin: 0px;
    padding: 0px;
    height: 26px;
    width: 182px;
    text-decoration: none;
}

.MM a:active {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    line-height: 26px;
    color: #333333;
    background-image: url(<%=request.getContextPath()%>/demo/images/menu_bg1.gif);
    background-repeat: no-repeat;
    height: 26px;
    width: 182px;
    display: block;
    text-align: center;
    margin: 0px;
    padding: 0px;
    overflow: hidden;
    text-decoration: none;
}

.MM li a:hover {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    line-height: 26px;
    font-weight: bold;
    color: #006600;
    background-image: url(<%=request.getContextPath()%>/demo/images/menu-bg3.gif);
    background-repeat: no-repeat;
    text-align: center;
    display: block;
    margin: 0px;
    padding: 0px;
    height: 26px;
    width: 182px;
    text-decoration: none;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js">
    
</script>
<script type="text/javascript">
    $(function() {
        $("#exit").click(function() {
            window.close();
        });
        $(".type").click(
                function() {
                    $(this).parent().next().children("img").show();
                    $(this).parent().next().slideDown(500);
                    $(this).parent().parent().siblings()
                            .children("div.content").slideUp(350);
                });
        $(function() {
            $(".content").hide();
            $(".content:first").show();
        });

    });
    function exitSystem() {
        if (confirm("温馨提示：请确定保存操作后退出，以免数据丢失！确定退出博游后台管理系统吗？")) {
            parent.window.location.href = "../servlet/exitAdminSystem";
        }
    }
</script>
</head>
<body>
    <div id="all">
        <table id="tab">
            <tr>
                <td>
                    <div></div>
                    <div id="info">
                        <p align="center">你好,感谢你登陆使用!</p>
                        <span>管理员：<%=request.getSession().getAttribute("username")%></span>
                        <p>
                            当前时间：
                            <%
                            Calendar c = Calendar.getInstance();
                        %>
                            <%=c.get(Calendar.YEAR)%>-<%=c.get(Calendar.MONTH)%>-<%=c.get(Calendar.DATE)%>
                            <%=c.get(Calendar.HOUR_OF_DAY)%>:<%=c.get(Calendar.MINUTE)%>:<%=c.get(Calendar.SECOND)%>
                        </p>
                    </div>
                </td>
            </tr>
            <tr>
                <td width="182" valign="middle">
                    <div class="container">
                        <div>
                            <div class="h1">
                                <h1 class="type">公告管理</h1>
                            </div>
                            <div class="content">
                                <div class="img">
                                    <img src="<%=request.getContextPath()%>/demo/images/menu_topline.gif" />
                                </div>
                                <ul class="MM">
                                    <li><a href="addBulletin.jsp" target="main">发布公告</a></li>
                                    <li><a href="">公告管理</a></li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <div class="h1">
                                <h1 class="type">文章管理</h1>
                            </div>
                            <div class="content">
                                <div class="img">
                                    <img src="<%=request.getContextPath()%>/demo/images/menu_topline.gif" />
                                </div>
                                <ul class="MM">
                                    <li><a href="<%=request.getContextPath() %>/servlet/addArticle" target="main">添加文章</a></li>
                                    <li><a href="../servlet/viewAllGoods?currentPageIndex=1"
                                        target="main">商品信息管理</a></li>
                                    <li><a href="addProductType.jsp" target="main">添加商品类型</a>
                                    </li>
                                    <li><a href="../servlet/viewAllGoodsType" target="main">商品类型管理</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <div class="h1">
                                <h1 class="type">个人系统管理</h1>
                            </div>
                            <div class="content">
                                <div class="img">
                                    <img src="<%=request.getContextPath()%>/demo/images/menu_topline.gif" />
                                </div>
                                <ul class="MM">
                                    <li><a
                                        href="<%=request.getContextPath() %>/servlet/money_view_init"
                                        target="main">财务明细</a></li>
                                    <li><a href="../servlet/viewAllOrder?currentPageIndex=1"
                                        target="main">备忘录</a></li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <div class="h1">
                                <h1 class="type">客户管理</h1>
                            </div>
                            <div class="content">
                                <div class="img">
                                    <img src="<%=request.getContextPath()%>/demo/images/menu_topline.gif" />
                                </div>
                                <ul class="MM">
                                    <li><a href="../servlet/viewAllUsers?currentPageIndex=1"
                                        target="main">客户信息管理</a></li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <div class="h1">
                                <h1 class="type">系统管理</h1>
                            </div>
                            <div class="content">
                                <div class="img">
                                    <img src="<%=request.getContextPath()%>/demo/images/menu_topline.gif" />
                                </div>
                                <ul class="MM">
                                    <li><a href="resetPassword.jsp" target="main">修改密码</a></li>
                                    <li><a href="resetAdminName.jsp" target="main">修改用户名</a></li>

                                    <li><a href="#" onclick="exitSystem()">退出系统</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
