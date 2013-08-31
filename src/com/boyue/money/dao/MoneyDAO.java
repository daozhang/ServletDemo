package com.boyue.money.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.boyue.constants.Constants;
import com.boyue.money.entity.Money;
import com.boyue.utils.DBConnectionUtil;
import com.boyue.utils.StringUtilsEx;

public class MoneyDAO {

    public List<Money> getYearInOutMoney(String thisYear, String nextYear, String isQueryByYear) {
        String sql = "SELECT SUM(IN_MONEY) AS all_in_money, SUM(OUT_MONEY) AS all_out_money FROM T_MONEY";
        Connection conn = null;
        List<Money> resultList = new ArrayList<Money>();
        ResultSet resultSet = null;
        PreparedStatement psmt = null;
        Money money = null;
        if (StringUtilsEx.equals(isQueryByYear, Constants.QUERY_ALL_BY_YEAR_TRUE)) {
            sql = sql.concat("where insert_time >= ? and insert_time < ?");
        }
        try {
            conn = DBConnectionUtil.DBConnect();
            psmt = conn.prepareStatement(sql);
            if (StringUtilsEx.equals(isQueryByYear, Constants.QUERY_ALL_BY_YEAR_TRUE)) {
                psmt.setString(1, thisYear);
                psmt.setString(2, nextYear);
            }
            resultSet = psmt.executeQuery();
            while (resultSet.next()) {
                money = new Money();
                money.setInMoney(resultSet.getFloat("all_in_money"));
                money.setOutMoney(resultSet.getFloat("all_out_money"));
                resultList.add(money);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultList;
    }
    
    public List<Money> getInOutMoneyByMonth(String thisYear, String nextYear) {
        String sql = "SELECT SUM(in_money) AS in_money, SUM(out_money) AS out_money, month_cd FROM t_money WHERE insert_time >= ? AND insert_time < ? GROUP BY month_cd";
        List<Money> resultList = new ArrayList<Money>();
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        Money money = null;
        try {
            conn = DBConnectionUtil.DBConnect();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, thisYear);
            psmt.setString(2, nextYear);
            rs = psmt.executeQuery();
            while (rs.next()) {
                money = new Money();
                money.setInMoney(rs.getFloat("in_money"));
                money.setOutMoney(rs.getFloat("out_money"));
                money.setMonthCd(rs.getString("month_cd"));
                resultList.add(money);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultList;
    }
}
