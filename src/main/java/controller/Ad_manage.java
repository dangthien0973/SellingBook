package controller;

import dao.ProductDao;
import model.Catory;
import model.Product;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "mangage", urlPatterns = {"/dssp"})
public class Ad_manage extends HttpServlet {
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
                ProductDao pd = new ProductDao();
                ArrayList<Product> listad = pd.paggingtemplate(so-1);
                ArrayList<Catory> listC= pd.getAllCategory();
                for (Product c:listad) {
                    System.out.println(c);
                }
                int count=pd.getCountofProduct();
                int page=20;
                int endpage=0;
                endpage=count/page;
                if(count%page!=0){
                    endpage++;
                }
                request.setAttribute("endPage",endpage);
                request.setAttribute("listad", listad);
                request.getRequestDispatcher("Ad_dssp.jsp").forward(request,response);
                request.setAttribute("listCC", listC);

            } catch (Exception e) {
                e.printStackTrace();
            }



    }

}
