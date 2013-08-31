package com.boyue.money.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.boyue.common.PageForward;
import com.boyue.money.service.MoneyService;

public class MoneyViewInitServlet extends HttpServlet{

    private static final long serialVersionUID = -5573305328182503422L;

    @Override
    protected void doGet(HttpServletRequest _request, HttpServletResponse _response)
            throws ServletException, IOException {
        this.doPost(_request, _response);
    };

    @Override
    protected void doPost(HttpServletRequest _request,
            HttpServletResponse _response) {
        MoneyService service = new MoneyService();
        _request.setAttribute("moneyList", service.getMoneyByMonth());
        _request.setAttribute("resultList", service.getMoneyByYear());
        String url = "/demo/jsp/personal/money_view.jsp";
        PageForward.pageForward(_request, _response, url);
    }
}
