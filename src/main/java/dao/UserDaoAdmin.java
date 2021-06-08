package dao;
import java.sql.SQLException;
import model.MyConnectDB1;
import model.Product;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

public class UserDaoAdmin {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public UserDaoAdmin() throws Exception {
        super();
        conn = MyConnectDB1.connect();
    }
    public ArrayList<User> getListProductAbout10(int index) throws Exception {
        ArrayList<User> listProduct = new ArrayList<User>();
        try {
            pstmt = conn.prepareStatement("SELECT * FROM user  limit ? , 5" );
//            pstmt.setString(1,"%"+txt+"%");// truyền cid vào dấu chấm hỏi
            pstmt.setInt(1,index*5);// truyền cid vào dấu chấm hỏi
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int iD = rs.getInt("userID");
                String name = rs.getString(2);
                String user_name = rs.getString(3);

                String password = rs.getString("password");
                String email=rs.getString("email");
                String address=rs.getString("address");
                String role=rs.getString("role");
              User user1=new User(iD,name,user_name,password,email,address,role);
                listProduct.add(user1);
            }
        } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();

        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return listProduct;
    }
    public ArrayList<User> getListProduct() throws Exception {
        ArrayList<User> listProduct = new ArrayList<User>();
        try {
            pstmt = conn.prepareStatement("SELECT * FROM user");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int iD = rs.getInt("userID");
                String name = rs.getString(2);
                String user_name = rs.getString(3);

                String password = rs.getString("password");
                String email=rs.getString("email");
                String address=rs.getString("address");
                String role=rs.getString("role");
                User user1=new User(iD,name,user_name,password,email,address,role);
                listProduct.add(user1);
            }
        } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();

        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return listProduct;
    }

    public int getAllCount() throws Exception{
        int count=0;
        ArrayList<User> list=new UserDaoAdmin().getListProduct();
        for(int i=0;i<list.size();i++){
            count++;
        }

        return count;
    }
    public void deleteUser(String pid) throws Exception {

        try {
            pstmt = conn.prepareStatement("DELETE FROM user WHERE userID like ?");
            pstmt.setString(1, pid);
            pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void insertProduct(String name, String  username, String password,String email, String addrress, String role) throws Exception {


        try {
            UserDaoAdmin dao = new UserDaoAdmin();

            pstmt = conn.prepareStatement("INSERT INTO user ( name, user_name, password,email, address, role) VALUES (?,?,?,?,?,?)  ");


            pstmt.setString(1, name);
            pstmt.setString(2, username);
            pstmt.setString(3,  password);
            pstmt.setString(4,  email);
            pstmt.setString(5, addrress);
            pstmt.setString(6, role);


            pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }


    }
    public static void main(String[] args) throws Exception {
        UserDaoAdmin p=new UserDaoAdmin();
    p.insertProduct("asd","asd","123","sad","user","qwe");

    }
}
