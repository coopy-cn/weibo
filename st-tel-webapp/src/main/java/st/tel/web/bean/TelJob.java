package st.tel.web.bean;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.hbase.mapreduce.TableMapper;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

import java.io.IOException;
import java.util.Iterator;

/**
 * @author shaotian
 * @create 2019-03-29 13:22
 */
public class TelJob {


    public static class TelJobMapper extends TableMapper<Text, Text> {

        @Override
        protected void map(ImmutableBytesWritable key, Result value, Context context) throws IOException, InterruptedException {
            String line = Bytes.toString(key.get());
            String[] split = line.split("_");

            String callee = split[1];
            String calling = split[2];
            String callTime = split[3];
            String duration = split[4];

            context.write(new Text(callee + "|" + callTime.substring(0, 7)), new Text(duration));

            context.write(new Text(callee + "|" + callTime.substring(0, 4)), new Text(duration));
        }
    }


    public static class TelJobReduce extends Reducer<Text, Text, Text, Text> {
        @Override
        protected void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
            long i = 0;
            Text duration = null;
            Iterator<Text> iterator = values.iterator();
            while (iterator.hasNext()) {
                i++;
                Text next = iterator.next();
                duration = next;
            }
            context.write(key, new Text(duration + "|" + i));
        }
    }

    public static void main(String[] args) throws IOException, ClassNotFoundException, InterruptedException {
        //1.获取配置信息
        Configuration configuration = new Configuration();

        configuration.set("hbase.zookeeper.quorum", "192.168.244.10");
        configuration.set("hbase.zookeeper.property.clientPort", "2181");

        //2.获取Job
        Job job = Job.getInstance(configuration);
        //3.设置jar加载路径
        job.setJarByClass(TelJob.class);

        TableMapReduceUtil.initTableMapperJob("st:tel",
                new Scan(),
                TelJobMapper.class,
                Text.class,
                Text.class, job);

        job.setReducerClass(TelJobReduce.class);

        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputKeyClass(Text.class);

        job.setOutputFormatClass(TelFileOutput.class);

        FileOutputFormat.setOutputPath(job, new Path(args[0]));

//
//        TableMapReduceUtil.initTableReducerJob("student4", TelJobReduce.class, job);
        // 7 提交666666
        boolean result = job.waitForCompletion(true);
        System.exit(result ? 0 : 1);
    }
}
