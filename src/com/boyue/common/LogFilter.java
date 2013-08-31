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

public class LogFilter implements Filter {

    private FilterConfig filterConfig;

    @Override
    public void destroy() {
        this.filterConfig = null;
    }

    @Override
    public void doFilter(ServletRequest _request, ServletResponse _response,
            FilterChain _filterChain) throws IOException, ServletException {
        // 获取ServletContext 对象，用于记录日志
        ServletContext context = this.filterConfig.getServletContext();
        long before = System.currentTimeMillis();
        System.out.println("开始过滤... ");
        // 将请求转换成HttpServletRequest 请求
        HttpServletRequest hrequest = (HttpServletRequest) _request;
        // 记录日志
        context.log("Filter已经截获到用户的请求的地址: " + hrequest.getServletPath());
        try {
            // Filter 只是链式处理，请求依然转发到目的地址。
            _filterChain.doFilter(_request, _response);
        } catch (Exception e) {
            e.printStackTrace();
        }
        long after = System.currentTimeMillis();
        // 记录日志
        context.log("过滤结束");
        // 再次记录日志
        context.log(" 请求被定位到" + ((HttpServletRequest) _request).getRequestURI()
                + "所花的时间为: " + (after - before));

    }

    @Override
    public void init(FilterConfig _filterConfig) throws ServletException {
        this.filterConfig = _filterConfig;
    }

}
