package dao;

import model.Catory;
import model.MyConnectDB1;
import model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public ProductDao() throws Exception {
        super();
        conn = MyConnectDB1.connect();
    }
    // phan trang moi trang 20 san pham
public ArrayList<Product> paggingtemplate(int index) throws  Exception{
        ArrayList<Product> list=new ArrayList<Product>();
        try {
            pstmt = conn.prepareStatement("SELECT * FROM product  limit ? , 20");
            pstmt.setInt(1, index * 20);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int iD = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String CatoryId = rs.getString("CategoryId");
                String description = rs.getString("description");
                String img = rs.getString("Img");
                Product product = new Product(iD, name, price, CatoryId, description, img);
                list.add(product);
            }
        }
            catch (SQLException e) {
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
            return list;

        }
// lay so luong san pham trong database
    public int getCountofProduct(){
        int count=0;
        try{
            pstmt= conn.prepareStatement("SELECT Count(*) FROM product");
            rs = pstmt.executeQuery();
            while (rs.next()){
                int numberOflist= rs.getInt(1);
                count=numberOflist;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return count;
    }
    // lay danh muc san pham
public ArrayList<Catory> getAllCategory() {
    ArrayList<Catory> list = new ArrayList<>();
    try {
        pstmt = conn.prepareStatement("SELECT * FROM category");
        rs = pstmt.executeQuery();
        while (rs.next()) {
            int cateogryId = rs.getInt(1);
            String name = rs.getString(2);
            Catory catory = new Catory(cateogryId, name);
            list.add(catory);
        }

    } catch (SQLException throwables) {
        throwables.printStackTrace();
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
    return list;
}
// Lay ra san pham moi nhat
public  Product getNewProduct(){
        int count=getCountofProduct();

    try {
        pstmt = conn.prepareStatement("select * from product where id=?");
        pstmt.setInt(1, count);

        rs = pstmt.executeQuery();
        while (rs.next()) {
            int id = rs.getInt(1);
            String name = rs.getString(2);
            int price = rs.getInt(3);
            String category = rs.getString(4);
            String description = rs.getString(5);
            String img = rs.getString(6);
            Product product = new Product(id, name, price, category, description, img);
            return product;


        }
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    finally {
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
    return null;
};
// Xu ly chi chi tiet san pham
public Product getdetailProduct(String detailId){

    try {
        pstmt=conn.prepareStatement("SELECT * FROM product WHERE id=?");
        pstmt.setString(1,detailId);
        rs=pstmt.executeQuery();
        while (rs.next()){
            int id = rs.getInt(1);
            String name = rs.getString(2);
            int price = rs.getInt(3);
            String category = rs.getString(4);
            String description = rs.getString(5);
            String img = rs.getString(6);
            Product product = new Product(id, name, price, category, description, img);
            return product;
        }

    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    finally {
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
    return null;
}
//Xu Ly San Pham Lien Quan
public ArrayList<Product> listRelativeProduct(int index,String category) throws  Exception{
    ArrayList<Product> list=new ArrayList<Product>();
    try {
        pstmt = conn.prepareStatement("SELECT * FROM product WHERE CategoryId= ?  limit ? , 6 ");
        pstmt.setString(1,category);
        pstmt.setInt(2, index * 6);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            int iD = rs.getInt("id");
            String name = rs.getString("name");
            int price = rs.getInt("price");
            String CatoryId = rs.getString("CategoryId");
            String description = rs.getString("description");
            String img = rs.getString("Img");
            Product product = new Product(iD, name, price, CatoryId, description, img);
            list.add(product);
        }
    }
    catch (SQLException e) {
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
    return list;

}
// load san pham theo category
public ArrayList<Product> loadProductCategory(int index,String category) throws  Exception{
    ArrayList<Product> list=new ArrayList<Product>();
    try {
        pstmt = conn.prepareStatement("SELECT * FROM product WHERE CategoryId= ?  limit ? , 20 ");
        pstmt.setString(1,category);
        pstmt.setInt(2, index * 20);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            int iD = rs.getInt("id");
            String name = rs.getString("name");
            int price = rs.getInt("price");
            String CatoryId = rs.getString("CategoryId");
            String description = rs.getString("description");
            String img = rs.getString("Img");
            Product product = new Product(iD, name, price, CatoryId, description, img);
            list.add(product);
        }
    }
    catch (SQLException e) {
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
    return list;

};
    public int getCountofMenu(String idcategory){
        int count=0;
        try{
            pstmt= conn.prepareStatement("SELECT Count(*) FROM product where CategoryId=?");
            pstmt.setString(1,idcategory);
            rs = pstmt.executeQuery();
            while (rs.next()){
                int numberOflist= rs.getInt(1);
                count=numberOflist;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return count;
    }
    // laay 10 san pham moi nha
    public ArrayList<Product> loadAllnewProduct() throws  Exception {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            pstmt = conn.prepareStatement("SELECT * FROM product ORDER BY id DESC  limit 1 , 10");

            rs = pstmt.executeQuery();
            while (rs.next()) {
                int iD = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                String CatoryId = rs.getString("CategoryId");
                String description = rs.getString("description");
                String img = rs.getString("Img");
                Product product = new Product(iD, name, price, CatoryId, description, img);
                list.add(product);
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
        return list;
    }
    public ArrayList<Product> getListProductbyNamePage(String txt, int index) throws Exception {
        ArrayList<Product> listProduct = new ArrayList<Product>();
        try {
            pstmt = conn.prepareStatement("SELECT * FROM product  WHERE  `name` like ?  limit ? , 20" );
            pstmt.setString(1,"%"+txt+"%");// truyền cid vào dấu chấm hỏi
            pstmt.setInt(2,index*20);// truyền cid vào dấu chấm hỏi
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int iD = rs.getInt(1);
                String name = rs.getString(2);
                int price = rs.getInt(3);

                String CatoryId = rs.getString(4);
                String description=rs.getString(5);
                String img=rs.getString(6);
                Product product = new Product(iD, name, price, CatoryId,description,img);
                listProduct.add(product);
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
    public int getCountofSearch(String txt) throws  Exception {
        try {
            pstmt = conn.prepareStatement("SELECT count(*) FROM product where name like ?");
            pstmt.setString(1, "%" + txt + "%");// truyền cid vào dấu chấm hỏi
            rs = pstmt.executeQuery();

            while (rs.next()) {
                return    rs.getInt(1);

            }
        }
        catch (Exception e){

        }
        return 0;
    }

    public void editProduct( String name, int categoryId, int price, String img, String description, int pid) throws Exception {


        try {
            ProductDao dao = new ProductDao();

            pstmt = conn.prepareStatement("UPDATE product SET name = ?, price = ?, CategoryId =?, description =  ? , img = ? WHERE id = ?  ");


            pstmt.setString(1, name);
            pstmt.setInt(2,price);
            pstmt.setInt(3, categoryId);
            pstmt.setString(4, description);
            pstmt.setString(5, img);
            pstmt.setInt(6, pid);


            pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }


    }
    // them san pham tu admin
    public void insertProduct(String name, int categoryId, int price, String img, String description) throws Exception {


        try {
            ProductDao dao = new ProductDao();

            pstmt = conn.prepareStatement("INSERT INTO product ( name, price, CategoryId, description, img) VALUES (?,?,?,?,?)  ");


            pstmt.setString(1, name);
            pstmt.setInt(2,price);
            pstmt.setInt(3, categoryId);

            pstmt.setString(4, description);
            pstmt.setString(5, img);


            pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }


    }
    public void deleteProduct(String pid) throws Exception {

        try {
            pstmt = conn.prepareStatement("DELETE FROM product WHERE id like ?");
            pstmt.setString(1, pid);
            pstmt.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
        public static void main(String[] args)  throws  Exception{

        ProductDao productDao=new ProductDao();
        System.out.println(productDao.getListProductbyNamePage("t",2));
    }
}



