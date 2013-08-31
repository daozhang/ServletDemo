package com.boyue.money.entity;

public class Money {

    private float inMoney;

    private float outMoney;
    
    private String monthCd;

    public String getMonthCd() {
        return monthCd;
    }

    public void setMonthCd(String monthCd) {
        this.monthCd = monthCd;
    }

    private String remark;

    public float getInMoney() {
        return inMoney;
    }

    public void setInMoney(float inMoney) {
        this.inMoney = inMoney;
    }

    public float getOutMoney() {
        return outMoney;
    }

    public void setOutMoney(float outMoney) {
        this.outMoney = outMoney;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
