package com.boyue.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.boyue.user.entity.UserBean;
import com.boyue.utils.DBConnectionUtil;

public class UserDao {
    /**
     * 用户登陆，验证用户名和密码是否存在
     * 
     * @param user
     * @return
     */
    public boolean userLogin(UserBean user) {
        boolean flg = false;
        String sql = "SELECT 1 FROM T_USER WHERE USERNAME = ? AND PASSWORD = ?";
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        try {
        	// 取得连接
            conn = DBConnectionUtil.DBConnect();
            // 预编译SQL
            psmt = conn.prepareStatement(sql);
            // 参数传值
            psmt.setString(1, user.getUserName());
            psmt.setString(2, user.getPassword());
            rs = psmt.executeQuery();
            // 登陆成功
            if(rs.next()) {
                flg = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 资源释放
            DBConnectionUtil.DBClose(psmt, rs, conn);
        }
        return flg;
    }
}
