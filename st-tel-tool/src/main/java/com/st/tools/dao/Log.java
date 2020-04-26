package com.st.tools.dao;

/**
 * @author shaotian
 * @create 2019-08-22 14:54
 */
public class Log {

    private String called;
    private String calling;
    private String date;
    private int callduration;

    public Log() {
        super();
    }

    public Log(String called, String calling, String date, int callduration) {
        this.called = called;
        this.calling = calling;
        this.date = date;
        this.callduration = callduration;
    }

    public String getCalled() {
        return called;
    }

    public void setCalled(String called) {
        this.called = called;
    }

    public String getCalling() {
        return calling;
    }

    public void setCalling(String calling) {
        this.calling = calling;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getCallduration() {
        return callduration;
    }

    public void setCallduration(int callduration) {
        this.callduration = callduration;
    }

    @Override
    public String toString() {
        return called + "\t" + calling + "\t" + date + "\t" + callduration;
    }
}
