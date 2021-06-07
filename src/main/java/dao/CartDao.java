package dao;

import model.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CartDao {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public CartDao() throws Exception {
        conn = MyConnectDB1.connect();
    }
    // them san pham vao cart


    //public  void insertoOrder(String productId,String UserId){
//        try {
//
//        }
//
//}
// lay ArrayListByItem

    public ArrayList<Item> getListCartItemByCartID(int idCart) throws Exception {
        ArrayList<Item> list = new ArrayList<Item>();
        try {
            pstmt = conn.prepareStatement("select * from item where item.OrderId = ?");
            pstmt.setInt(1, idCart);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt(1);
                int productId = rs.getInt(2);
                int orderId = rs.getInt(3);
                int amount = rs.getInt(4);
                String stringProduct_id = String.valueOf(productId);
                ProductDao productDao = new ProductDao();
                Product product = new ProductDao().getdetailProduct(stringProduct_id);
                int price = product.getPrice() * amount;
                Item cartItem = new Item(idCart, product, amount, price);
                list.add(cartItem);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    // tinh tong tien cua order
    public int totalOrders(int Card_ID) throws Exception {
        int total=0;
        ArrayList<Item> list=getListCartItemByCartID(Card_ID);
        for (Item item:list){
       total+=item.getPrice();
        }
        return total;
    }
// them san pham vao cart Controller
public void createNewCartWhenUserDontHave(int userID) {
    if (findCartByUserID(userID) == -1) {
        try {
            pstmt = conn.prepareStatement("INSERT INTO orders(OrderId) VALUES(?)");
            pstmt.setInt(1, userID);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    } else {
        return;
    }
}
// tim cartByUserId
    public int findCartByUserID(int idUser) {
        try {
            pstmt = conn.prepareStatement("select * from orders where OrderId = ?");
            pstmt.setInt(1, idUser);
            rs = pstmt.executeQuery();
            boolean more = rs.next();
            if (more) {
                return 1;
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return -1;
    }
    // Lay Gio hang bang tai khoan

    // them san pham vao gio hang
    // Lay gio hang bang User id
    public  Order getCartByUserId(String userId) {
        try {
            pstmt = conn.prepareStatement("SELECT *from `orders`WHERE orders.OrderId=?");
            pstmt.setString(1, userId);
            rs = pstmt.executeQuery();
            while (rs.next()){
                int id=rs.getInt(1);
                UserDao userDao=new UserDao();
                User user=userDao.getUserbyUserId(userId);
                ArrayList<Item> list=getListCartItemByCartID(id);
                int total=totalOrders(id);
                Order order=new Order(id,user,list,total);
return  order;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    // kiem tra san pham co trong Item chua


    public void insertProductIntoCartitem( int productID, int quantity, int cartID) {
        try {
            pstmt = conn.prepareStatement("insert into  item(product_Id,OrderId,amount) values (?,?,?)");
            pstmt.setInt(1, productID);
            pstmt.setInt(2, cartID);
            pstmt.setInt(3, quantity);

            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    // update Cart
    public void updateQuantityAboutProductInCartItem(int cartitemID, int quantity, int cartID) {
        try {
            pstmt = conn.prepareStatement("update item set amount = ? where ID_item = ? and OrderId=?");
            pstmt.setInt(1, quantity);
            pstmt.setInt(2, cartitemID);
            pstmt.setInt(3, cartID);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    // kiem tra xem san pham da co trong Item chuaw
    public int getIDitemByOrderandProduct( int orderID,int productId) {
        int idItem=0;
        try {
            pstmt = conn.prepareStatement("SELECT ID_item FROM item where product_Id = ? and OrderId=?");
            pstmt.setInt(1, productId);
            pstmt.setInt(2, orderID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int iDproductisselect = rs.getInt(1);
                   idItem=iDproductisselect;
            }

        }

        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return idItem;
    }

    // kiem tra trong list order da co san pham chua
    public boolean isProductInCart1(int orderID,int productID) throws Exception {
        ArrayList<Item> list=getListCartItemByCartID(orderID);
        for(Item item:list){
            if(item.getProduct().getID() == productID){
                return true;
            }
        }
        return false;
    }

    public int getAmountOfItem( int IDitem) {
        int quaility=0;
        try {
            pstmt = conn.prepareStatement("SELECT amount FROM item where ID_item=?");
            pstmt.setInt(1, IDitem);

            rs = pstmt.executeQuery();
            while (rs.next()) {
                int amount = rs.getInt(1);
                quaility=amount;
            }

        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return quaility;
    }
    public int gettotal( int orderId) throws Exception {
        int total=0;
        ArrayList<Item> list=getListCartItemByCartID(orderId);
        for (Item item:list){
            total+=item.getPrice();
        }
return  total;
    }
    public void deleteProductFromCartItem(int productID, int cartID) {
        try {
            pstmt = conn.prepareStatement("delete from item where product_Id = ? and OrderId = ?");
            pstmt.setInt(1, productID);
            pstmt.setInt(2, cartID);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


            public static void main(String[] args) throws Exception {

        CartDao cartDao = new CartDao();
        UserDao userDao=new UserDao();
//      cartDao.insertProductIntoCartitem(1,2,3);
        System.out.println(cartDao. gettotal(1));





    }
}
