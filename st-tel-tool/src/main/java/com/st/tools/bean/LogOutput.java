package com.st.tools.bean;

import java.io.Closeable;

/**
 * @author shaotian
 * @create 2019-08-22 11:40
 */
public interface LogOutput extends Closeable {

    void Output(Object o);

}
