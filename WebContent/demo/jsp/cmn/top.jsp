<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
        <div id="pg_top">
            <div class="wd998">
                <div id="pg_channels">
                    <ul>
                        <li class="item"><a class="home" href="<%=request.getContextPath()%>/index.jsp">首页</a></li>
                        <li class="item control_select">
                            <a class="project" href="http://www.oschina.net/project" >学习分类</a>
                            <ul class="cs_content">
                                <li><a href="http://www.oschina.net/project/lang/19/java">Java » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/194/csharp">Struts1 » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/22/php">Struts2 » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/21/c">Hibernate » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/26/ruby">MyBatis » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/25/python">Spring » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/358/go">MySQL » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/358/go">Oracle » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/28/javascript">JS&JQuery » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/28/javascript">Servlet&JSP » </a></li>
                                <li><a href="http://www.oschina.net/project/lang/28/javascript">HTML » </a></li>
                            </ul></li>
                        <li class="item control_select">
                            <a class="question" href="http://www.oschina.net/question">个人项目</a>
                            <ul class="cs_content" style="display: none;">
                                <li><a href="dispatch?sort=11">个人财务系统 » </a></li>
                                <li><a href="http://www.oschina.net/question?catalog=2">通讯录管理系统 » </a></li>
                                <li><a href="http://www.oschina.net/question?catalog=3">生日管理系统 » </a></li>
                                <li><a href="http://www.oschina.net/question?catalog=100">职业生涯 » </a></li>
                                <li><a href="http://www.oschina.net/question?catalog=4">站务/建议 » </a></li>
                                <li><a href="http://www.oschina.net/alipay"> 支付宝专区 » </a></li>
                                <li><a href="http://www.oschina.net/hardware"> 开源硬件专区 »</a></li>
                            </ul>
                        </li>
                        <li class="item"><a class="code" href="http://www.oschina.net/code/list">代码</a></li>
                        <li class="item"><a class="blog" href="http://www.oschina.net/blog">博客</a></li>
                        <li class="item"><a class="tran" href="http://www.oschina.net/translate">翻译</a></li>
                        <li class="item"><a class="news" href="http://www.oschina.net/news">资讯</a></li>
                        <li class="item control_select"><a class="mobile" href="http://www.oschina.net/android">移动开发</a>
                            <ul class="cs_content cs_mobile">
                                <li class="android_"><a href="http://www.oschina.net/android">Android开发专区</a></li>
                                <li class="ios_"><a href="http://www.oschina.net/ios/home">iOS开发专区</a></li>
                                <li class="ios_"><a href="http://www.oschina.net/ios/codingList">iOS代码库</a></li>
                                <li class="wp7_"><a href="http://www.oschina.net/wp7">WP7开发专区</a></li>
                            </ul>
                        </li>
                        <li class="item t_job"><a class="job" href="http://www.oschina.net/job">招聘</a></li>
                        <li class="item control_select"><a title="城市圈" id="MyCities" href="http://city.oschina.net/">城市圈</a></li>
                    </ul>
                </div>
                <div id="OSC_Userbar">
                <c:if test="${sessionScope.username == null}">当前访客身份：游客 [ <a href="<%=request.getContextPath()%>/demo/jsp/acount/login.jsp">登录</a>
                    | <a href="http://www.oschina.net/home/reg">加入开源中国</a> ]
                </c:if>
	            <c:if test="${sessionScope.username != null}">
	                <em>${sessionScope.username}</em>,您好 
	                <span class="control_select"> 
	                    <a href="http://my.oschina.net/u/248857" id="MySpace" title="我的空间">我的空间</a>
	                    <ul class="cs_content cs_myspace">
	                        <li class='msg_'><a href='http://www.oschina.net/home/go?page=admin%2Finbox'>站内留言</a></li>
	                        <li class='discuss_'><a href='http://my.oschina.net/u/248857/?ft=bbs&scope=2&showme=1'>我的讨论记录</a></li>
	                        <li class='code_'><a href='http://www.oschina.net/code/list_by_user?id=248857'>我分享的代码</a></li>
	                        <li class='blog_'><a href='http://www.oschina.net/home/go?page=blog'>我的博客</a></li>
	                        <li class='friends_'><a href='http://www.oschina.net/home/go?page=fellow'>我关注的人</a></li>
	                        <li class='favorites_'><a href='http://www.oschina.net/home/go?page=favorites'>我的收藏夹</a></li>
	                        <li class='profile_'><a href='http://www.oschina.net/home/go?page=admin%2Fprofile'>个人资料修改</a></li>
	                        <li class='portrait_'><a href='http://www.oschina.net/home/go?page=admin%2Fportrait'>更改我的头像</a></li>
	                    </ul>
	                </span>&nbsp;|&nbsp;
	                <a href="http://www.oschina.net/home/go?page=admin%2Fnew-project">添加软件</a>&nbsp;|&nbsp;
	                <a href="http://www.oschina.net/home/go?page=admin%2Fnew-release">投递新闻</a>&nbsp;|&nbsp;
	                <a href="logout">退出</a>
	            </c:if>
        </div>
        <div class="clear"></div>
    </div>
</div>