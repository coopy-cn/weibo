package com.st.bean;

import com.st.tools.dao.User;
import com.st.tools.bean.LogInput;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author shaotian
 * @create 2019-08-22 11:51
 */
public class LogInputImpl implements LogInput {

    private BufferedReader bufferedReader;

    public LogInputImpl(String path) throws FileNotFoundException {
        bufferedReader = new BufferedReader(new FileReader(path));
    }

    public LogInputImpl(){

    }

    @Override
    public Object read() throws IOException {
        String readLine = bufferedReader.readLine();
        List<User> list = new ArrayList<>();
        while ((readLine = bufferedReader.readLine()) != null) {
            String[] split = readLine.split(",");
            User user = new User(split[0], split[1]);
            list.add(user);
        }

        return list;
    }

    @Override
    public void close() throws IOException {
        if (bufferedReader != null) {
            bufferedReader.close();
        }
    }


}
