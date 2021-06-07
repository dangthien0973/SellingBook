package controller;

import dao.CartDao;
import dao.ProductDao;
import model.Item;
import model.Order;
import model.Product;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "addtoCart",urlPatterns = {"/addtoCart"})
public class addtoCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        String productIDString = request.getParameter("productID");
        int productID = Integer.parseInt(productIDString);


        try {
            CartDao cartDao=new CartDao();
            ProductDao productDao=new ProductDao();

        if (currentUser == null) {
            response.sendRedirect("login.jsp");

        } else if (currentUser != null) {
            String userId=String.valueOf(currentUser.getUserID());
            if(cartDao.findCartByUserID(currentUser.getUserID())==1) {
                Product product = productDao.getdetailProduct(productIDString);
                ArrayList<Item> list = cartDao.getListCartItemByCartID(currentUser.getUserID());

                if (cartDao.isProductInCart1(currentUser.getUserID(), productID)) {

                    int carID = cartDao.getIDitemByOrderandProduct(currentUser.getUserID(), productID);
                    int quailty =cartDao. getAmountOfItem(carID)+1;
                    cartDao.updateQuantityAboutProductInCartItem(carID, quailty, currentUser.getUserID());
                    Order order = cartDao.getCartByUserId(userId);
                    order.setTotal(cartDao.gettotal(currentUser.getUserID()));
                    int total=order.getTotal()+30000;
                    String totalString=String.valueOf(total);
                    request.setAttribute("total",totalString);
                    session.setAttribute("order", order);

                    request.getRequestDispatcher("cart.jsp").forward(request, response);
                } else {
                    cartDao.insertProductIntoCartitem(productID, 1, currentUser.getUserID());
                    Order order = cartDao.getCartByUserId(userId);
                    order.setTotal(cartDao.gettotal(currentUser.getUserID()));
                    int total=order.getTotal()+30000;
                    String totalString=String.valueOf(total);
                    request.setAttribute("total",totalString);
                    session.setAttribute("order", order);
                    request.getRequestDispatcher("cart.jsp").forward(request, response);


                }
            }


            else {
                cartDao.createNewCartWhenUserDontHave(currentUser.getUserID());

                cartDao.insertProductIntoCartitem(productID,1,currentUser.getUserID());
                Order order=cartDao.getCartByUserId(userId);
                order.setTotal(cartDao.gettotal(currentUser.getUserID()));
                int total=order.getTotal()+30000;
                String totalString=String.valueOf(total);
                request.setAttribute("total",totalString);
                session.setAttribute("order",order);
                request.getRequestDispatcher("cart.jsp").forward(request, response);



            }
                }
        else {
            response.sendRedirect("login.jsp");
        }






        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
