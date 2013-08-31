package com.boyue.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.boyue.constants.Constants;

public class DateUtilsEx {

    public static int getMonth() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(Calendar.MONTH);
    }
    
    public static String getDate() {
        SimpleDateFormat format = new SimpleDateFormat(Constants.DATE_FORMAT);
        Date date = new Date();
        return format.format(date);
    }
    
    public static Map<String, String> getYear() {
        Calendar calendar = Calendar.getInstance();
        String temp = "-01-01 00:00:00";
        int year = calendar.get(Calendar.YEAR);
        Map<String, String> map = new HashMap<String, String>();
        map.put("thisYear", String.valueOf(year).concat(temp));
        map.put("nextYear", String.valueOf(year+1).concat(temp));
        return map;
    }
}
