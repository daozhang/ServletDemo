<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Koutokuzen Admin</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/demo/resources/css/reset.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/demo/resources/css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/demo/resources/css/invalid.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/resources/scripts/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/resources/scripts/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/demo/resources/scripts/facebox.js"></script>
</head>
<body id="body_right">
    <div id="body-wrapper">
        <div id="main-content">
            <!-- Main Content Section with everything -->
            <noscript>
                <!-- Show a notification if the user has disabled javascript -->
                <div class="notification error png_bg">
                    <div>
                        Javascript is disabled or is not supported by your browser. Please
                        <a href="http://browsehappy.com/"
                            title="Upgrade to a better browser">upgrade</a> your browser or <a
                            href="http://www.google.com/support/bin/answer.py?answer=23852"
                            title="Enable Javascript in your browser">enable</a> Javascript
                        to navigate the interface properly. Download From <a
                            href="http://www.exet.tk">exet.tk</a>
                    </div>
                </div>
            </noscript>
            <!-- Page Head -->
            <h2>Welcome</h2>
            <p id="page-intro">What would you like to do?</p>
            <ul class="shortcut-buttons-set">
                <li>
                    <a class="shortcut-button" href="#">
	                    <span> 
	                        <img src="<%=request.getContextPath()%>/demo/resources/images/icons/pencil_48.png" alt="icon" />
	                        <br /> Write an Article
	                    </span>
                    </a>
                </li>
                <li>
                    <a class="shortcut-button" href="#">
                        <span> 
                            <img src="<%=request.getContextPath()%>/demo/resources/images/icons/paper_content_pencil_48.png" alt="icon" />
                            <br /> Create a New Page
                        </span>
                    </a>
                </li>
                <li>
                    <a class="shortcut-button" href="#">
                        <span> 
                            <img src="<%=request.getContextPath()%>/demo/resources/images/icons/image_add_48.png" alt="icon" />
                            <br /> Upload an Image
                        </span>
                    </a>
                </li>
                <li>
                    <a class="shortcut-button" href="#">
                    <span> 
                        <img src="<%=request.getContextPath()%>/demo/resources/images/icons/clock_48.png" alt="icon" />
                        <br /> Add an Event
                    </span>
                    </a>
                </li>
                <li>
                    <a class="shortcut-button" href="#messages" rel="modal">
                    <span>
                        <img src="<%=request.getContextPath()%>/demo/resources/images/icons/comment_48.png" alt="icon" />
                        <br /> Open Modal
                    </span>
                    </a>
                 </li>
            </ul>
            <!-- End .shortcut-buttons-set -->
            <div class="clear"></div>
            <!-- End .clear -->
            <div class="content-box">
                <!-- Start Content Box -->
                <div class="content-box-header">
                    <h3>添加联系人</h3>
                    <ul class="content-box-tabs">
                        <li><a href="#tab1" class="default-tab">Forms</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <!-- End .content-box-header -->
                <div class="content-box-content">
                    <div class="tab-content default-tab" id="tab1">
                        <form action="<%=request.getContextPath() %>/servlet/addContacts" method="post">
                            <fieldset>
                                <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
                                <p>
                                    <a class="shortcut-button" href="#">
				                        <span> 
				                            <img src="<%=request.getContextPath()%>/demo/resources/images/icons/image_add_48.png" alt="icon" />
				                            <br /> 上传联系人头像
				                        </span>
				                    </a>
			                        <label>姓名</label> 
                                    <input class="text-input small-input" type="text" id="small-input" name="name" /> 
                                    <!-- Classes for input-notification: success, error, information, attention -->
                                    <br /> 
                                    <small>请输入联系人姓名</small>
                                </p>
                                <p>
                                    <label>性别</label> 
                                    <input type="radio" name="sex" value="1"/> 男
                                    <br /> 
                                    <input type="radio" name="sex" value="2"/> 女
                                    <br /> 
                                    <small>请选择联系人性别</small>
                                </p>
                                <p>
                                    <label>移动电话</label> 
                                    <select name="dropdown" class="small-input">
                                        <option value="1">手机</option>
                                        <option value="2">固定电话</option>
                                    </select>
                                    <input class="text-input small-input" type="text" id="small-input" name="honeNo" /> 
                                    <!-- Classes for input-notification: success, error, information, attention -->
                                    <br /> 
                                    <small>请输入联系人电话号码</small>
                                </p>
                                <p>
                                    <label>邮件</label> 
                                    <input class="text-input small-input" type="text" id="small-input" name="email" /> 
                                    <!-- Classes for input-notification: success, error, information, attention -->
                                    <br /> 
                                    <small>请输入联系人邮件地址</small>
                                </p>
                                <p>
                                    <label>地址</label> 
                                    <input class="text-input small-input" type="text" id="small-input" name="address" /> 
                                    <!-- Classes for input-notification: success, error, information, attention -->
                                    <br /> 
                                    <small>请输入联系人地址</small>
                                </p>
                                <p>
                                    <label>公司</label> 
                                    <input class="text-input small-input" type="text" id="small-input" name="company" /> 
                                    <!-- Classes for input-notification: success, error, information, attention -->
                                    <br /> 
                                    <small>请输入联系人公司地址</small>
                                </p>
                                <p>
                                    <label>生日</label> 
                                    <input type="checkbox" name="birthdaySort" value="1"/> 农历 
                                    <br /> 
                                    <input class="text-input small-input" type="text" id="small-input" name="birthday" /> 
                                    <!-- Classes for input-notification: success, error, information, attention -->
                                    <br /> 
                                    <small>请输入联系人生日</small>
                                </p>
                                <p>
                                    <input class="button" type="submit" value="提交" />
                                </p>
                            </fieldset>
                            <div class="clear"></div>
                            <!-- End .clear -->
                        </form>
                    </div>
                    <!-- End #tab2 -->
                </div>
            </div>
        </div>
    </div>
</body>
</html>
