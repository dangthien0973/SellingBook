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

@WebServlet(urlPatterns = {"/XuLySanPham"})
public class LoadProducts extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String index=request.getParameter("index");

        if(index==null){
           index="1";
        }
        int so=Integer.parseInt(index);

        try {
            ProductDao productDao = new ProductDao();
            ArrayList<Product> list= productDao.paggingtemplate(so-1);
            ArrayList<Catory> listC=productDao.getAllCategory();
            Product product=productDao.getNewProduct();
            int count=productDao.getCountofProduct();
            int page=20;
            int endpage=0;
            endpage=count/page;
            if(count%page!=0){
                endpage++;
            }
            request.setAttribute("endPage",endpage);
            request.setAttribute("list1", list);
            request.setAttribute("listCC", listC);
            request.setAttribute("newProduct",product);
         request.getRequestDispatcher("loadProduct.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    }

