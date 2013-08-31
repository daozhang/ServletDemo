package com.boyue.money.service;

import java.util.List;
import java.util.Map;

import com.boyue.constants.Constants;
import com.boyue.money.dao.MoneyDAO;
import com.boyue.money.entity.Money;
import com.boyue.utils.DateUtilsEx;

public class MoneyService {
    MoneyDAO moneyDao = new MoneyDAO();
    public List<Money> getMoneyByMonth() {
        Map<String, String> map = DateUtilsEx.getYear();
        return moneyDao.getInOutMoneyByMonth(map.get("thisYear"), map.get("nextYear"));
    }
    public List<Money> getMoneyByYear() {
        Map<String, String> map = DateUtilsEx.getYear();
        return moneyDao.getYearInOutMoney(map.get("thisYear"), map.get("nextYear"), Constants.QUERY_ALL_BY_YEAR_TRUE);
    }
}
