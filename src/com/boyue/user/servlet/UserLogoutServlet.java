package com.boyue.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.boyue.common.PageForward;

/**
 * 用户退出处理
 * 
 * @author dequan
 * 
 */
public class UserLogoutServlet extends HttpServlet {

    private static final long serialVersionUID = 8073319760057438033L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }

    /**
     * 用户退出处理
     * 
     */
    @Override
    protected void doPost(HttpServletRequest _request,
            HttpServletResponse _response) {
        HttpSession session = _request.getSession();
        session.removeAttribute("username");
        session.invalidate();

        String url = "index.jsp";
        PageForward.pageForward(_request, _response, url);
    }
}
