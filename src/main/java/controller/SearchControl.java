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

@WebServlet(name = "SearchControl",urlPatterns = {"/SearchControl"})
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        try {
            ProductDao productDao=new ProductDao();

            String txtSearch=request.getParameter("search");
        String stringIndex=request.getParameter("index");
            if(stringIndex==null){
                stringIndex="1";
            }
            int so=Integer.parseInt(stringIndex);


            ArrayList<Product> list3=productDao.getListProductbyNamePage(txtSearch,so-1);
            ArrayList<Catory> listC=productDao.getAllCategory();
            int count=productDao.getCountofSearch(txtSearch);
            int page=20;
            int endpage=0;
            endpage=count/page;
            if(count%page!=0){
                endpage++;
            }

            for(Product s:list3){
                System.out.println(s);}
            System.out.println(so);
            System.out.println(count);
            request.setAttribute("list1", list3);
            request.setAttribute("listCC", listC);
            request.setAttribute("endPage",endpage);
            request.setAttribute("hi",txtSearch);

           request.getRequestDispatcher("loadProduct.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
