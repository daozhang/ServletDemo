package com.boyue.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter{

    private FilterConfig filterConfig;
    private String encoding = null;
    @Override
    public void destroy() {
        this.encoding = null;
    }

    @Override
    public void doFilter(ServletRequest _request, ServletResponse _response,
            FilterChain _filterChain) throws IOException, ServletException {
        // 获取ServletContext 对象，用于记录日志 
        ServletContext context = this.filterConfig.getServletContext();
        context.log("开始设置编码格式");
        String encoding = getEncoding();
        if (encoding == null){
            encoding = "UTF-8";
        }
        // 在请求里设置上指定的编码
        _request.setCharacterEncoding(encoding);
        _filterChain.doFilter(_request, _response);
        context.log("成功设置了编码格式");
    }

    @Override
    public void init(FilterConfig _filterConfig) throws ServletException {
        this.filterConfig = _filterConfig;
        this.encoding = filterConfig.getInitParameter("encoding");
    }

    public String getEncoding() {
        return this.encoding;
    }
}
