package com.st.comsumer.test;

import org.apache.commons.lang.WordUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @author shaotian
 * @create 2019-08-23 21:38
 */
public class TestList {

    public static void main(String[] args) {
        String[] strings = new String[0];
        List<String> list = new ArrayList<>();
        list.add("st");
        list.add("hehe");
        String[] array = list.toArray(strings);

        for (String string : array) {
            System.out.println(string);
        }

        String s = "18874470670";

        String s1 = s.substring(s.length()-4);
        System.out.println("s1:" + s1);

    }

}


