package com.st.comsumer;

import com.st.comsumer.bean.ConsumerImpl;

import java.io.IOException;

/**
 * @author shaotian
 * @create 2019-08-23 16:25
 */
public class ComsumerStart {

    public static void main(String[] args) throws IOException {
        ConsumerImpl consumer = new ConsumerImpl();

        consumer.consumer();

        consumer.close();
    }

}
