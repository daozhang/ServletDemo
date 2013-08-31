package com.boyue.sort.entity;

public class Sort {

    public String getSortId() {
        return sortId;
    }

    public void setSortId(String sortId) {
        this.sortId = sortId;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    /** 分类Id */
    private String sortId;
    
    /** 分类名 */
    private String sortName;
}
