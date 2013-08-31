package com.boyue.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 页面跳转
 * 
 * @author dequan
 *
 */
public class PageForward {
    /**
     * 跳转：redirect重定向跳转
     * 
     * @param _response 响应
     * @param _url 跳转地址
     */
    public static void pageForward(HttpServletResponse _response, String _url) {
        try {
            _response.sendRedirect(_url);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 跳转：forward跳转
     * 
     * @param _request 请求
     * @param _response 响应
     * @param _url 跳转地址
     */
    public static void pageForward(HttpServletRequest _request, HttpServletResponse _response, String _url) {
        try {
            _request.getRequestDispatcher(_url).forward(_request, _response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
