package com.boyue.contacts.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.boyue.common.PageForward;
import com.boyue.contacts.entity.ContactsEntity;

public class ContactsAddServlet extends HttpServlet {

    private static final long serialVersionUID = 1491626333157691362L;

    @Override
    protected void doGet(HttpServletRequest _request, HttpServletResponse _response)
            throws ServletException, IOException {
        this.doPost(_request, _response);
    };

    @Override
    protected void doPost(HttpServletRequest _request,
            HttpServletResponse _response) {
        ContactsEntity entity = this.getInputValue(_request);
        String url = "/demo/jsp/common/add_article.jsp";
        PageForward.pageForward(_request, _response, url);
    }
    
    private ContactsEntity getInputValue(HttpServletRequest _request) {
        ContactsEntity entity = new ContactsEntity();
        // 姓名
        entity.setName(_request.getParameter("name"));
        // 地址
        entity.setAddress(_request.getParameter("address"));
        // 生日
        entity.setBirthday(_request.getParameter("birthday"));
        // 1：农历
        entity.setBirthdaySort(_request.getParameter("birthdaySort"));
        // 公司
        entity.setCompany(_request.getParameter("company"));
        // 电话种类
        entity.setDropdown(_request.getParameter("dropdown"));
        // 移动电话
        entity.setPhone(_request.getParameter("phoneNo"));
        // 固话
        entity.setTel(_request.getParameter("tel"));
        // 电子邮件
        entity.setEmail(_request.getParameter("email"));
        // 1:男,2:女
        entity.setSex(_request.getParameter("sex"));
        return entity;
    }
}
