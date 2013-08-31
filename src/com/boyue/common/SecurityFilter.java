package com.boyue.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SecurityFilter implements Filter {

    private FilterConfig flterConfig;
    /**
     * 实现销毁方法
     * 
     */
    @Override
    public void destroy() {
        this.flterConfig = null;
    }

    /**
     * 身份认证的过滤
     * 
     */
    @Override
    public void doFilter(ServletRequest _request, ServletResponse _response,
            FilterChain _filterChain) throws IOException, ServletException {
        ServletContext context = this.flterConfig.getServletContext();
        HttpServletRequest request = (HttpServletRequest) _request;
        HttpServletResponse response = (HttpServletResponse) _response;
        HttpSession session = request.getSession();
        if (session.getAttribute("username") != null) {
            context.log("身份认证通过，进入下一步处理 ");
            _filterChain.doFilter(request, response);
        } else {
            context.log("身份认证失败，直接返回");
            String url = request.getContextPath() + "/index.jsp";
            PageForward.pageForward(request, response, url);
        }
    }

    /**
     * 初始化
     * 
     */
    @Override
    public void init(FilterConfig _flterConfig) throws ServletException {
        this.flterConfig = _flterConfig;
    }

}
