package st.tel.web.bean;


import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.RecordWriter;
import org.apache.hadoop.mapreduce.TaskAttemptContext;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import st.tel.web.jdbc.DBHelper;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author shaotian
 * @create 2019-08-26 13:03
 */
public class TelFileOutput extends FileOutputFormat<Text, Text> {

    private Connection conn = new DBHelper().getConn();
    private Statement stat;
    private PreparedStatement ps;

    protected class MysqlRecordWriter extends RecordWriter<Text, Text> {
        @Override
        public void write(Text key, Text value) throws IOException, InterruptedException {

            String[] keysplit = key.toString().split("\\|");
            String[] valuesplit = value.toString().split("\\|");

            String callee = keysplit[0];
            String calltime = keysplit[1];
            int duration = Integer.parseInt(valuesplit[0]);
            int conut = Integer.parseInt(valuesplit[1]);

            String sql = "INSERT INTO `st-tel`(phone,calling,conut,duration) VALUES(?,?,?,?);";

            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, callee);
                ps.setString( 2, calltime);
                ps.setInt(3, duration);
                ps.setInt(4, conut);
                ps.execute();
            } catch (SQLException e) {
                e.printStackTrace();
            }


        }

        @Override
        public void close(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
            if (conn != null) {
                try {
                    conn.close();
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

    }


    @Override
    public RecordWriter<Text, Text> getRecordWriter(TaskAttemptContext taskAttemptContext) throws IOException, InterruptedException {
        return new MysqlRecordWriter();
    }
}


