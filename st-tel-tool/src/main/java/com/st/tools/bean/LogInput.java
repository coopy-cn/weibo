package com.st.tools.bean;

import java.io.Closeable;
import java.io.IOException;

/**
 * @author shaotian
 * @create 2019-08-22 11:40
 */
public interface LogInput extends Closeable {

    Object read() throws IOException;

}
