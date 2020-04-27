package com.st.bean;

import com.st.tools.bean.LogInput;
import com.st.tools.bean.LogOutput;
import com.st.tools.bean.Producter;
import com.st.tools.dao.User;
import com.st.tools.dao.Log;
import com.st.tools.utils.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Random;

/**
 * @author shaotian
 * @create 2019-08-22 11:56
 */
public class ProducterImpl implements Producter {

    Logger logger = LoggerFactory.getLogger(ProducterImpl.class);

    private LogInput logInput;

    private LogOutput logOutput;

    @Override
    public void setLogInput(LogInput in) {
        this.logInput = in;
    }

    @Override
    public void setLogOutput(LogOutput output) {
        this.logOutput = output;
    }

    @Override
    public void produce() throws IOException, ParseException, InterruptedException {
        //1.获取数据
        List<User> userList = (List<User>) logInput.read();

        while (true) {
            //2.生成号码
            int called = new Random(System.currentTimeMillis()).nextInt(userList.size());
            int calling = new Random(System.currentTimeMillis()).nextInt(userList.size());

            while (true) {
                if (called == calling) {
                    called = new Random(System.currentTimeMillis()).nextInt(userList.size());
                } else {
                    break;
                }
            }
            String calledLong = userList.get(called).getPhone();
            String callingLong = userList.get(calling).getPhone();
            //3.生成通话时长
            String starttime = "20190822142200";
            String endtime = "20200901000000";

            String pattern = "yyyyMMddHHmmss";

            DateTime dateTime = new DateTime();
            long demo = dateTime.Demo(starttime, pattern);
            long demo1 = dateTime.Demo(endtime, pattern);

            long date = demo + (long) (((demo1 - demo) * Math.random()));
            String Logdate = dateTime.date(date);
            //4.写出
            int callduration = new Random(System.currentTimeMillis()).nextInt(120 * 60);
            Log log = new Log(calledLong, callingLong, Logdate, callduration);
            logOutput.Output(log);

            Thread.sleep(2000);
        }

    }

    @Override
    public void close() throws IOException {
        if (logInput != null) {
            logInput.close();
        }
        if (logOutput != null) {
            logOutput.close();
        }
    }
}
