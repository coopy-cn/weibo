package com.st.produce;

import com.st.bean.LogInputImpl;
import com.st.bean.LogOutputImpl;
import com.st.bean.ProducterImpl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.ParseException;

/**
 * @author shaotian
 * @create 2019-08-22 15:09
 */
public class ProducerStart {

    public static void main(String[] args) throws IOException, ParseException, InterruptedException {

        ProducterImpl producterImpl = new ProducterImpl();

        producterImpl.setLogInput(new LogInputImpl(args[0]));

        producterImpl.setLogOutput(new LogOutputImpl(args[1]));

        producterImpl.produce();

        producterImpl.close();

    }

}
