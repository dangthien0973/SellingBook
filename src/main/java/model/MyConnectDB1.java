package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyConnectDB1 {
    public static String sqlDB;

    public MyConnectDB1() {
        super();
        sqlDB = "";
    }

    public static Connection connect() throws Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/websach?useUnicode=true&characterEncoding=utf-8", "root", "");
            return connect;

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void thucThiSQL(String sql) throws Exception {
        Connection connect = connect();
        Statement stmt = connect.createStatement();
        stmt.executeUpdate(sql);
    }

    public ResultSet chonDuLieu(String sql) throws Exception {
        Connection connect = connect();
        Statement stmt = connect.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        return rs;
    }

    public static void main(String[] args) throws Exception {
        System.out.println(connect());
    }
}

