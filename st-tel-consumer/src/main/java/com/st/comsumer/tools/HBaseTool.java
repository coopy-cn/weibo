package com.st.comsumer.tools;

import com.st.tools.bean.Contant;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.*;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.util.Bytes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author shaotian
 * @create 2019-08-23 16:42
 */
public class HBaseTool {

    Logger logger = LoggerFactory.getLogger(HBaseTool.class);

    private static Connection connection;

    private static Configuration configuration;

    private static Admin admin;


    public HBaseTool() {
        configuration = HBaseConfiguration.create();

        configuration.set("hbase.zookeeper.quorum", "linux12,linux15,linux18");
        configuration.set("hbase.zookeeper.property.clientPort", "2181");
        try {
            connection = ConnectionFactory.createConnection(configuration);
            admin = connection.getAdmin();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 创建表空间
     *
     * @param name
     * @throws IOException
     */
    public void TableExist(String name) throws IOException {
        NamespaceDescriptor namespaceDescriptor = null;
        try {
            namespaceDescriptor = admin.getNamespaceDescriptor(name);
        } catch (NamespaceNotFoundException e) {
            admin.createNamespace(namespaceDescriptor);
        }
    }

    public void createTableNx(String name, Integer reageNum, String... info) throws IOException {
        TableName tableName = TableName.valueOf(name);
        //检测表名是否存在
        if (admin.tableExists(tableName)) {
            //如果存在先删除表
            admin.disableTable(tableName);
            admin.deleteTable(tableName);
            //创建表
            createTable(tableName, reageNum, info);
        } else {
            //创建表
            createTable(tableName, reageNum, info);
        }
    }

    public void createTable(TableName tableName, Integer reateNum, String... info) throws IOException {
        //创建表属性对象,表名需要转字节
        HTableDescriptor descriptor = new HTableDescriptor(tableName);

        for (String s : info) {
            descriptor.addFamily(new HColumnDescriptor(s));
        }

        if (reateNum == null || reateNum < -1) {
            admin.createTable(descriptor);
        } else {
            /**
             * 01010101010
             * 109880980
             * 负无穷~0|,0|~1|,1|~2|,2|~正无穷大
             */
            byte[][] bytes = null;
            admin.createTable(descriptor, bytes);
        }
    }

    /**
     * 生成分区keys
     *
     * @param key
     * @return
     */
    public byte[][] getKey(Integer key) {
        int splitKeyNum = key - 1;
        byte[][] bytes = new byte[splitKeyNum][];
        List<byte[]> list = new ArrayList<>();

        for (int i = 0; i < splitKeyNum; i++) {
            String splitKey = i + "|";
            list.add(splitKey.getBytes());
        }
        list.toArray(bytes);

        return bytes;
    }

    /**
     * 初始化
     *
     * @throws IOException
     */
    public void init() throws IOException {
        TableExist(Contant.HBASE_NAMESPACE);
        createTableNx(Contant.HBASE_TABLENAME, Contant.HBASE_TABLE_REGIONNUM, Contant.HBASE_TABLE_INFO);
    }

    /**
     * 向表中添加数据
     *
     * @param tableName
     * @param rowKey
     * @param columnFamily
     * @param column
     * @param value
     * @throws IOException
     */
    public void addRowData(String tableName, String rowKey, String columnFamily, String
            column, String value) throws IOException {

        Table table = connection.getTable(TableName.valueOf(tableName));
        Put put = new Put(Bytes.toBytes(rowKey));
        put.addColumn(Bytes.toBytes(columnFamily), Bytes.toBytes(column), Bytes.toBytes(value));

        table.put(put);
        table.close();

    }

    public void close(Admin admin, Connection connection) {
        if (admin != null) {
            try {
                admin.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}
