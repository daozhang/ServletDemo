/**
 * 
 */
package com.boyue.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * DB连接共通方法
 * 
 * @author jiangdequan
 * 
 */
public class DBConnectionUtil {

    /**
     * DB连接处理
     * 
     * @return Connection
     * @throws Exception
     */
    public static Connection DBConnect() {

        Connection conn = null;
        // DB连接URL
        String url = "jdbc:mysql://localhost:3306/MyDemo";
        // 用户名
        String username = "root";
        // 密码
        String password = "root";

        // Class.forName("com.mysql.jdbc.Driver").newInstance();
        try {
            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
            // 取得连接
            conn = (Connection) DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 返回连接
        return conn;
    }

    /**
     * 资源释放
     * 
     * @param stmt 
     * @param rs 
     * @param conn DB连接
     * @throws SQLException
     */
    public static void DBClose(Statement stmt, ResultSet rs, Connection conn) {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
