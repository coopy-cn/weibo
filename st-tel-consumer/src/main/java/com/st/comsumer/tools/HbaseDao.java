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

/**
 * @Classname HBaseDao
 * @Description TODO
 * @Date 2019/8/23 9:20
 * @Created by linhs
 */
public class HbaseDao {
    private Logger logger = LoggerFactory.getLogger(HbaseDao.class);

    private Connection connection;

    private Admin admin;

    public HbaseDao() throws IOException {
        Configuration configuration = HBaseConfiguration.create();
        configuration.set("hbase.zookeeper.quorum", "linux12,linux15,linux18");
        configuration.set("hbase.zookeeper.property.clientPort", "2181");
        connection = ConnectionFactory.createConnection(configuration);
        admin = connection.getAdmin();
    }

    /**
     * 创建表空间
     *
     * @param name
     * @throws IOException
     */
    public void createNamespaceNX(String name) throws IOException {
        NamespaceDescriptor namespaceDescriptor = null;
        try {
            admin.getNamespaceDescriptor(name);
        } catch (NamespaceNotFoundException e) {
            //当没有找到这个命名空间的时候，进行创建
            namespaceDescriptor = NamespaceDescriptor.create(name).build();

            //通过admin对象调用方法，然后传入命名空间描述器来创建命名空间
            admin.createNamespace(namespaceDescriptor);

        }
    }


    /**
     * 创建表
     *
     * @param name
     * @param regionNum
     * @param cfs
     */
    public void createTableXX(String name, Integer regionNum, String... cfs) throws IOException {
        TableName tableName = TableName.valueOf(name);
        if (admin.tableExists(tableName)) {
            admin.disableTable(tableName);
            admin.deleteTable(tableName);
            //创建表
            createTable(tableName, regionNum, cfs);
        } else {
            //创建表
            createTable(tableName, regionNum, cfs);
        }
    }

    private void createTable(TableName name, Integer regionNum, String... cfs) throws IOException {
        HTableDescriptor hTableDescriptor = new HTableDescriptor(name);
        for (String cf : cfs) {
            hTableDescriptor.addFamily(new HColumnDescriptor(cf));
        }
        if (regionNum == null || regionNum <= 1) {
            admin.createTable(hTableDescriptor);
        } else {
            /**
             * 01010101010
             * 109880980
             * 负无穷~0|,0|~1|,1|~2|,2|~正无穷大
             */
            byte[][] splitKeys = genSplitKyes(regionNum);
            admin.createTable(hTableDescriptor, splitKeys);
        }
    }


    /**
     * 生成分区keys
     *
     * @param regionNum
     * @return
     */
    public byte[][] genSplitKyes(Integer regionNum) {
        int splitKeysNum = regionNum - 1;
        byte[][] bs = new byte[splitKeysNum][];
        ArrayList<byte[]> list = new ArrayList<>();
        for (int i = 0; i < splitKeysNum; i++) {
            String splitKey = i + "|";
            list.add(splitKey.getBytes());
        }
        list.toArray(bs);
        return bs;
    }

    /**
     * 初始化
     *
     * @throws IOException
     */
    public void init() throws IOException {
        createNamespaceNX(Contant.HBASE_NAMESPACE);
        createTableXX(Contant.HBASE_TABLENAME, Contant.HBASE_TABLE_REGIONNUM, Contant.HBASE_TABLE_INFO);
    }

    /**
     * 插入数据
     *
     * @param name
     * @param rowkey
     * @param family
     * @param col
     * @param val
     */
    public void addRowData(String name, String rowkey, String family, String col, String val) throws IOException {
        Put put = new Put(Bytes.toBytes(rowkey));
        put.addColumn(Bytes.toBytes(family), Bytes.toBytes(col), Bytes.toBytes(val));

        TableName tableName = TableName.valueOf(name);
        Table table = connection.getTable(tableName);
        table.put(put);

        table.close();
    }


}
