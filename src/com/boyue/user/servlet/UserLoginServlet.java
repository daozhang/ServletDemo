package com.boyue.user.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boyue.common.PageForward;
import com.boyue.user.entity.UserBean;
import com.boyue.user.service.UserService;

/**
 * 用户登陆处理
 * 
 * @author dequan
 * 
 */
public class UserLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 8073319760057438033L;

    /**
     * 用户登陆处理
     * 
     */
    @Override
    protected void doPost(HttpServletRequest _request,
            HttpServletResponse _response) {
        // 用户名
        String userName = _request.getParameter("userName");
        // 密码
        String password = _request.getParameter("password");
        UserBean user = new UserBean();
        user.setPassword(password);
        user.setUserName(userName);
        UserService userService = new UserService();
        // 用户名密码吻合的情况
        if (userService.isUserLogin(user)) {
            HttpSession session = _request.getSession();
            session.setAttribute("username", userName);
            String url = "/demo/resources/main.jsp";
            PageForward.pageForward(_request, _response, url);
        } else {
            String url = "index.jsp";
            PageForward.pageForward(_request, _response, url);
        }
    }
}
