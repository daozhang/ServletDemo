package com.boyue.article.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.boyue.article.service.ArticleService;
import com.boyue.common.PageForward;

public class ArticleAddServlet extends HttpServlet {

    private static final long serialVersionUID = 8073319760057438033L;

    @Override
    protected void doGet(HttpServletRequest _request, HttpServletResponse _response)
            throws ServletException, IOException {
        this.doPost(_request, _response);
    };

    @Override
    protected void doPost(HttpServletRequest _request,
            HttpServletResponse _response) {
        ArticleService articleService = new ArticleService();
        _request.setAttribute("sortList", articleService.getSort());
        String url = "/demo/jsp/common/add_article.jsp";
        PageForward.pageForward(_request, _response, url);
    }
}
