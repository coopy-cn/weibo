package st.tel.web.jdbc;

import java.sql.*;

public class DBHelper {
    private String dbUrl = "jdbc:mysql://linux12:3306/company";
    private String dbUser = "root";
    private String dbPassword = "123456";
    private String jdbcName = "com.mysql.jdbc.Driver";

    //�������ݿ�
    public Connection getConn() {
        Connection conn = null;
        try {
            Class.forName(jdbcName);
        } catch (Exception e) {
        }
        try {
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
        } catch (SQLException ex) {
        }
        return conn;
    }

    /**
     * @param con
     * @param stmt
     * @param rs
     */
    public void closeResource(Connection con, PreparedStatement psment, Statement stmt,
                                     ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (psment != null) {
                psment.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void closeResource(Connection con, PreparedStatement psment, Statement stmt) {
        try {
            if (psment != null) {
                psment.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //    ����
    public static void main(String[] args) {
        String sql = "select * from staff";
        Statement stat = null;
        ResultSet rs = null;

        Connection conn = new DBHelper().getConn();
        try {
            stat = conn.createStatement();
            rs = stat.executeQuery(sql);
            while (rs.next()) {
                System.out.println(rs.getInt("id") + "," + rs.getString("NAME"));
            }
        } catch (SQLException ex) {
        }

    }

}
