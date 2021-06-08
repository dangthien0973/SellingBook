package controller;

import dao.ProductDao;
import model.Catory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "Adthemsp", urlPatterns = {"/addsp"})
public class Admin_addCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {

            ProductDao po = new ProductDao();

            ArrayList<Catory> list = po.getAllCategory();

            request.setAttribute("listCC", list);



            request.getRequestDispatcher("themsanpham.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
