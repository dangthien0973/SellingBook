package controller;

import dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet( urlPatterns ={ "/add"})
public class Admin_clickAddSp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            String pname = request.getParameter("name");
            String pcategory = request.getParameter("category");
            int category1 = Integer.valueOf(pcategory);


            String pprice = request.getParameter("gia");
            int price1 = Integer.valueOf(pprice);

            String pdescription = request.getParameter("mota");
            String pimg = request.getParameter("img");
            String pimg1 = "http://localhost:8080/FullDoAn_war_exploded/images/book-banchay/"+pimg;
            ProductDao dao =  new ProductDao();
            dao.insertProduct(pname, category1 , price1, pdescription, pimg1);
           response.sendRedirect("addsp");


        } catch (Exception exception) {
            exception.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
