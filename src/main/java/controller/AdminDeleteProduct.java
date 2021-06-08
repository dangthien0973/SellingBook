package controller;



import dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = { "/delete" })
public class AdminDeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String pid = request.getParameter("pid");
            ProductDao pd = new ProductDao();
            pd.deleteProduct(pid);
            response.sendRedirect("dssp");


        } catch (Exception e) {
            e.printStackTrace();
        }


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
