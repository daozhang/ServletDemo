package com.boyue.utils;

import com.mysql.jdbc.StringUtils;

public class StringUtilsEx extends StringUtils{

    public static boolean equals(String first, String second) {
        if (first != null) {
            return first.equals(second);
        } 
        if (second == null) {
            return true;
        } else {
            return false;
        }
    }
    
}
