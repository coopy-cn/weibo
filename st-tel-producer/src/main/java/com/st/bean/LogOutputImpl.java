package com.st.bean;

import com.st.tools.bean.LogOutput;
import sun.rmi.log.LogOutputStream;

import java.io.*;

/**
 * @author shaotian
 * @create 2019-08-22 11:56
 */
public class LogOutputImpl implements LogOutput {

    private PrintStream printStream;

    public LogOutputImpl(String path) throws FileNotFoundException, UnsupportedEncodingException {
        printStream = new PrintStream(new FileOutputStream(path), true, "utf-8");
    }

    @Override
    public void Output(Object o) {
        printStream.println(o);
    }

    @Override
    public void close() throws IOException {
        if (printStream != null) {
            printStream.close();
        }
    }
}
