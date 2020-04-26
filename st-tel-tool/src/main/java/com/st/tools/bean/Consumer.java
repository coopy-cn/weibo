package com.st.tools.bean;

import java.io.Closeable;
import java.io.IOException;

/**
 * @author shaotian
 * @create 2019-08-23 16:23
 */
public interface Consumer extends Closeable {

    void consumer() throws IOException, InterruptedException;

}
