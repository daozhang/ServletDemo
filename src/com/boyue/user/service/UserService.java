package com.boyue.user.service;

import com.boyue.user.dao.UserDao;
import com.boyue.user.entity.UserBean;

public class UserService {
    /**
     * 验证用户是否登陆
     * 
     * @param user
     * @return
     */
    public boolean isUserLogin(UserBean user) {
        UserDao dao = new UserDao();
        boolean flg = false;
        // 用户正常登陆
        if(dao.userLogin(user)){
            flg = true;
        }
        return flg;
    }
}
