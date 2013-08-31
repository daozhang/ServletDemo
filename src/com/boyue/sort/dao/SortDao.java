package com.boyue.sort.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.boyue.sort.entity.Sort;
import com.boyue.utils.DBConnectionUtil;

public class SortDao {

    /**
     * 取得分类信息
     * 
     * @return List<Sort>
     */
    public List<Sort> getSort() {
        List<Sort> resultList = new ArrayList<Sort>();
        String sql = "SELECT * FROM t_sort WHERE LENGTH(SORT_ID) = 2";
        PreparedStatement psmt = null;
        ResultSet rs = null;
        Connection conn = null;
        Sort sort = null;
        conn = DBConnectionUtil.DBConnect();
        try {
            psmt = conn.prepareStatement(sql);
            rs = psmt.executeQuery();
            while (rs.next()) {
                sort = new Sort();
                sort.setSortId(rs.getString("SORT_ID"));
                sort.setSortName(rs.getString("SORT_NAME"));
                resultList.add(sort);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultList;
    }
}
