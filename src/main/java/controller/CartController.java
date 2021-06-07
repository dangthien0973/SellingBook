package controller;

import dao.CartDao;
import model.Item;
import model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "cartController",urlPatterns = {"/cartController"})
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        try {
            HttpSession session = request.getSession();
            Order order= (Order)session.getAttribute("order");
//            CartDao cartDao=new CartDao();
//            Order order= cartDao.getCartByUserId("1");
            int total=order.getTotal()+30000;
            String totalString=String.valueOf(total);
            request.setAttribute("total",totalString);
            request.setAttribute("order",order);


            request.getRequestDispatcher("cart.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
