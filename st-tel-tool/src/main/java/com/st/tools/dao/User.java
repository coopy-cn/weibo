package com.st.tools.dao;

/**
 * @author shaotian
 * @create 2019-08-22 12:04
 */
public class User {

    private String phone;
    private String name;

    public User() {
        super();
    }

    public User(String phone, String name) {
        this.phone = phone;
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
