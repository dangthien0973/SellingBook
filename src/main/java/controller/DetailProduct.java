package controller;

import dao.ProductDao;
import model.Catory;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DetailProduct",urlPatterns = {"/detail1"})
public class DetailProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        try {

            ProductDao productDao=new ProductDao();
            String detailID=request.getParameter("pid");
            Product sp=productDao.getdetailProduct(detailID);
            String cateogory=sp.getCatoryId();
            ArrayList<Catory> listC=productDao.getAllCategory();
            ArrayList<Product> relative=productDao.listRelativeProduct(1,cateogory);
            Product product=productDao.getNewProduct();


            request.setAttribute("listdetail",sp);
            request.setAttribute("listCC", listC);
            request.setAttribute("newProduct",product);
            request.setAttribute("relativeProduct",relative);




            request.getRequestDispatcher("detailproduct.jsp").forward(request,response);
            System.out.println(sp.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
