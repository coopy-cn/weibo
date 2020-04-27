package com.st.test;

import com.st.bean.LogInputImpl;
import com.st.tools.bean.LogInput;

/**
 * @author shaotian
 * @create 2019-09-07 10:26
 */
public class Test {


    public static class Person {

    }

    public static class Man extends Person {

    }


    public static void main(String[] args) {
        Person p1 = new Person();
        Person p2 = new Man();
        Man m1 = new Man();

        LogInputImpl logInputImpl = new LogInputImpl();

        System.out.println(logInputImpl instanceof LogInput);
        System.out.println(p1 instanceof Man);
        System.out.println(p2 instanceof Man);
        System.out.println(m1 instanceof Man);
    }

}
