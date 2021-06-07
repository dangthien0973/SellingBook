package controller;

import dao.CartDao;
import dao.ProductDao;

import model.Order;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "XoaGioHang",urlPatterns = {"/xoagiohang"})
public class DeleteCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productIDString = request.getParameter("productID");
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        int productID = Integer.parseInt(productIDString);
        String userId=String.valueOf(currentUser.getUserID());

        try {
            CartDao cartDao=new CartDao();
            ProductDao productDao=new ProductDao();
            int userID = currentUser.getUserID();
            cartDao.deleteProductFromCartItem(productID,currentUser.getUserID());
            Order order=cartDao.getCartByUserId(userId);
            order.setTotal(cartDao.gettotal(currentUser.getUserID()));
            int total=order.getTotal()+30000;
            String totalString=String.valueOf(total);
            request.setAttribute("total",totalString);
            session.setAttribute("order",order);
            request.getRequestDispatcher("cart.jsp").forward(request, response);

        }

     catch (Exception e) {
            e.printStackTrace();
        }
}

        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
