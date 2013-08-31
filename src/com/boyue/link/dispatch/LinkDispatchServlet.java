package com.boyue.link.dispatch;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.boyue.common.PageForward;

public class LinkDispatchServlet extends HttpServlet {

    private static final long serialVersionUID = -5573305328182503422L;

    @Override
    protected void doGet(HttpServletRequest _request,
            HttpServletResponse _response) throws ServletException, IOException {
        this.doPost(_request, _response);
    };

    @Override
    protected void doPost(HttpServletRequest _request,
            HttpServletResponse _response) {
        String sort = _request.getParameter("sort");
        if ("11".equals(sort)) {
            PageForward.pageForward(_request, _response, "servlet/money_view_init");
        }
    }
}
