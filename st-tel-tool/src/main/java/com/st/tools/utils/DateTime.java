package com.st.tools.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author shaotian
 * @create 2019-08-22 14:39
 */
public class DateTime {

    public long Demo(String date, String pattern) throws ParseException {

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

        long data = simpleDateFormat.parse(date).getTime();

        return data;
    }

    public String date(long date) throws ParseException {


        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

        String format = simpleDateFormat.format(date);

        return format;
    }


}
