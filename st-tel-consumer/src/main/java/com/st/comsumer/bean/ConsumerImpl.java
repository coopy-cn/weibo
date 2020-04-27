package com.st.comsumer.bean;

import com.st.comsumer.tools.HbaseDao;
import com.st.tools.bean.Consumer;
import com.st.tools.bean.Contant;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.Arrays;
import java.util.Properties;

/**
 * @author shaotian
 * @create 2019-08-23 16:24
 */
public class ConsumerImpl implements Consumer {

    Logger logger = LoggerFactory.getLogger(ConsumerImpl.class);

    private HbaseDao hBaseTool;

    public ConsumerImpl() throws IOException {
        hBaseTool = new HbaseDao();
    }

    @Override
    public void consumer() throws IOException {
        hBaseTool.init();

        Properties properties = new Properties();
        Properties props = new Properties();

        props.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("kafka.properties"));

        KafkaConsumer<String, String> kafkaConsumer = new KafkaConsumer<String, String>(props);

        kafkaConsumer.subscribe(Arrays.asList("phone"));

        while (true) {
            ConsumerRecords<String, String> records = kafkaConsumer.poll(1000);
            for (ConsumerRecord<String, String> record : records) {
                //写HBase
                String value = record.value();

                logger.info("msg" + value);

                String[] split = value.split("\t");

                String caller = split[0];
                String calling = split[1];
                String callTime = split[2];
                String duration = split[3];

                //写hbase
                /**
                 * rowkey设计原则
                 * 0.唯一性
                 *
                 * 1.长度
                 *     10~100个字节,最好是8的倍数
                 * 2.散列
                 *     数据均匀的插入到所有分区中，不会出现某个分区的数据倾斜
                 * 3.聚合
                 *     相同类型的数据在一个分区中
                 *
                 *
                 *  根据业务:前端通过手机号码+时间查询（月）
                 *  同个手机号同月份的数据保存到同一个分区中
                 *
                 */
                String rokey = getRegionNo(caller, callTime) + "_" + caller + "_" + calling + "_" + callTime + "_" + duration;

                hBaseTool.addRowData(Contant.HBASE_TABLENAME, rokey, Contant.HBASE_TABLE_INFO, "caller", caller);
                hBaseTool.addRowData(Contant.HBASE_TABLENAME, rokey, Contant.HBASE_TABLE_INFO, "calling", calling);
                hBaseTool.addRowData(Contant.HBASE_TABLENAME, rokey, Contant.HBASE_TABLE_INFO, "callTime", callTime);
                hBaseTool.addRowData(Contant.HBASE_TABLENAME, rokey, Contant.HBASE_TABLE_INFO, "duration", duration);
            }

            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }

    public static int getRegionNo(String tel, String time) {
        //截取手机号后四位laoma
        tel = tel.substring(tel.length() - 4);

        //截取日期年月
        time = time.substring(0, 6);

        int code = Math.abs(tel.hashCode() ^ time.hashCode());

        return code % Contant.HBASE_TABLE_REGIONNUM;
    }

    @Override
    public void close() throws IOException {

    }

    public static void main(String[] args) {
        int regionNo = getRegionNo("18874480670", "201908231022");

        System.out.println(regionNo);
    }
}
