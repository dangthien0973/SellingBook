package controller;

import dao.ProductDao;


import dao.UserDaoAdmin;
import model.Catory;
import model.Product;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "loadUser", urlPatterns = {"/dsuser"})
public class Admin_loadUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String index=request.getParameter("index");

        if(index==null){
            index="1";
        }
        int so=Integer.parseInt(index);
        try {
            UserDaoAdmin user=new UserDaoAdmin();
            ArrayList<User> listad = user.getListProductAbout10(so-1);
//            ArrayList<Catory> listC= pd.getAllCatory();
//            for (Product c:listad) {
//                System.out.println(c);
//            }
            int count=user.getAllCount();
            int page=5;
            int endpage=0;
            endpage=count/page;
            if(count%page!=0){
                endpage++;
            }
            request.setAttribute("endPage",endpage);
            request.setAttribute("listad", listad);
            request.getRequestDispatcher("Ad_dsUser.jsp").forward(request,response);
//            request.setAttribute("listCC", listC);

        } catch (Exception e) {
            e.printStackTrace();
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
