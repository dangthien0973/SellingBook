package controller;

import dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Ad_editSp", urlPatterns = {"/editsp"})
public class Ad_editSp extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            ProductDao dao =  new ProductDao();
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            String pid = request.getParameter("id");
            int id = Integer.valueOf(pid);
            String pname = request.getParameter("name");
            String pcategory = request.getParameter("category");
            int category1 = Integer.valueOf(pcategory);


            String pprice = request.getParameter("gia");
            int price1 = Integer.valueOf(pprice);

            String pdescription = request.getParameter("mota");
            String pimg = request.getParameter("img");
            dao.editProduct(pname, category1, price1, pdescription,pimg, id );
            response.sendRedirect("dssp");


        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
