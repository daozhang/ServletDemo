<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>菜单栏</title>
<link rel="stylesheet"
    href="<%=request.getContextPath()%>/demo/resources/css/reset.css"
    type="text/css" media="screen" />
<link rel="stylesheet"
    href="<%=request.getContextPath()%>/demo/resources/css/style.css"
    type="text/css" media="screen" />
<link rel="stylesheet"
    href="<%=request.getContextPath()%>/demo/resources/css/invalid.css"
    type="text/css" media="screen" />
<script type="text/javascript"
    src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js"></script>
<script type="text/javascript"
    src="<%=request.getContextPath()%>/demo/resources/scripts/jquery.wysiwyg.js"></script>
<script type="text/javascript"
    src="<%=request.getContextPath()%>/demo/resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript"
    src="<%=request.getContextPath()%>/demo/resources/scripts/facebox.js"></script>
</head>
<body id="body_left">
    <div id="body-wrapper">
        <div id="sidebar">
            <div id="sidebar-wrapper">
                <h1 id="sidebar-title">
                    <a href="#">Simpla Admin</a>
                </h1>
                <a href="#">
                    <img id="logo" src="<%=request.getContextPath()%>/demo/resources/images/logo.png" alt="Simpla Admin logo" />
                </a>
                <div id="profile-links">                    你好, <a href="#" title="Edit your profile">${sessionScope.username}</a>, 您有 
                    <a href="#messages" rel="modal" title="3 Messages">3 条短消息</a>
                    <br />
                    <br />
                    <a href="#" title="View the Site">查看网站</a> | <a href="#" title="Sign Out">注销</a>
                </div>
                <ul id="main-nav">
                    <li>
                        <a href="#/" class="nav-top-item no-submenu"> 主菜单 </a>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item current"> 文章 </a>
                        <ul>
                            <li><a href="#">撰写新文章</a></li>
                            <li><a class="current" href="#">管理文章</a></li>
                            <li><a href="#">管理文章内容</a></li>
                            <li><a href="#">管理文章类别</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"> 通讯录 </a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/demo/resources/contacts/contacts_add.jsp" target="main">Create a new Page</a></li>
                            <li><a href="#">Manage Pages</a></li>
                        </ul></li>
                    <li><a href="#" class="nav-top-item"> Image Gallery </a>
                        <ul>
                            <li><a href="#">Upload Images</a></li>
                            <li><a href="#">Manage Galleries</a></li>
                            <li><a href="#">Manage Albums</a></li>
                            <li><a href="#">Gallery Settings</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"> Events Calendar </a>
                        <ul>
                            <li><a href="#">Calendar Overview</a></li>
                            <li><a href="#">Add a new Event</a></li>
                            <li><a href="#">Calendar Settings</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"> Settings </a>
                        <ul>
                            <li><a href="#">General</a></li>
                            <li><a href="#">Design</a></li>
                            <li><a href="#">Your Profile</a></li>
                            <li><a href="#">Users and Permissions</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- End #main-nav -->
                <div id="messages" style="display: none">
                    <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
                    <h3>3 Messages</h3>
                    <p>
                        <strong>17th May 2009</strong> by Admin
                        <br />
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. 
                        <small>
                            <a href="#" class="remove-link" title="Remove message">Remove</a>
                        </small>
                    </p>
                    <p>
                        <strong>2nd May 2009</strong> by Jane Doe<br /> Ut a est eget
                        ligula molestie gravida. Curabitur massa. Donec eleifend, libero
                        at sagittis mollis, tellus est malesuada tellus, at luctus turpis
                        elit sit amet quam. Vivamus pretium ornare est. <small><a
                            href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <p>
                        <strong>25th April 2009</strong> by Admin<br /> Lorem ipsum dolor
                        sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi
                        at felis aliquet congue. <small><a href="#"
                            class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <form action="#" method="post">
                        <h4>New Message</h4>
                        <fieldset>
                            <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
                        </fieldset>
                        <fieldset>
                            <select name="dropdown" class="small-input">
                                <option value="option1">Send to...</option>
                                <option value="option2">Everyone</option>
                                <option value="option3">Admin</option>
                                <option value="option4">Jane Doe</option>
                            </select> <input class="button" type="submit" value="Send" />
                        </fieldset>
                    </form>
                </div>
                <!-- End #messages -->
            </div>
        </div>
        <!-- End #sidebar -->
    </div>
</body>
</html>
