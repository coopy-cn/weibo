package com.st.tools.bean;

import java.io.Closeable;
import java.io.IOException;
import java.text.ParseException;

/**
 * @author shaotian
 * @create 2019-08-22 11:40
 */
public interface Producter extends Closeable {

    void setLogInput(LogInput in);

    void setLogOutput(LogOutput output);

    void produce() throws IOException, ParseException, InterruptedException;

}
