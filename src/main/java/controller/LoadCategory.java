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

@WebServlet(urlPatterns = {"/catory"})
public class LoadCategory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String cateID=request.getParameter("cid");
        String index=request.getParameter("index");
        if(index==null){
            index="1";
        }
        int so=Integer.parseInt(index);

        try {
            ProductDao productDao=new ProductDao();
            ArrayList<Product> list=productDao.loadProductCategory(so,cateID) ;
            ArrayList<Catory> listC=productDao.getAllCategory();
            int count=productDao.getCountofMenu(cateID);
            Product product=productDao.getNewProduct();
            int page=20;
            int endpage=0;
            endpage=count/page;
            if(count%page!=0){
                endpage++;
            }
            request.setAttribute("list1", list);
            request.setAttribute("listCC", listC);
            request.setAttribute("endPage",endpage);
            request.setAttribute("cateID1",cateID);
            request.setAttribute("newProduct",product);


            request.getRequestDispatcher("loadProduct.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
