package st.tel.web.flink;

import org.apache.flink.api.java.DataSet;
import org.apache.flink.api.java.ExecutionEnvironment;
import org.apache.flink.api.java.utils.ParameterTool;
import org.apache.flink.configuration.Configuration;

/**
 * @author shaotian
 * @create 2020-04-25 20:47
 */
public class SourceFlinkApp {

    public static void main(String[] args) throws Exception {
        ParameterTool parameterTool = ParameterTool.fromArgs(args);
        String source = parameterTool.get("source", "D:\\linux\\spython\\weibo\\weibo");

        ExecutionEnvironment env = ExecutionEnvironment.getExecutionEnvironment();
        Configuration configuration = new Configuration();
        configuration.setBoolean("recursive.file.enumeration", true);
        env.setParallelism(1);

        DataSet<String> dataSource = env.readTextFile(source).withParameters(configuration);

        dataSource
                .filter(i -> !i.contains("用户昵称"))
                .setParallelism(1)
                .print();

    }

}
