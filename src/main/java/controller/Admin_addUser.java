package controller;


import dao.UserDaoAdmin;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

@WebServlet( urlPatterns ={ "/addUserad"})
public class Admin_addUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
//        Random rd=new Random();
//        int a= rd.nextInt(200);

        try {
            UserDaoAdmin user=new UserDaoAdmin();
//            int user_id = new UserDAO().countUserInDataBase()+a;
            String name = request.getParameter("fullname");
//            String sdt=request.getParameter("sdt");
//            int sdt1=Integer.parseInt(sdt);
            String email = request.getParameter("email");
            String UserName = request.getParameter("name");

            String password = request.getParameter("password");
            String dateBirth = request.getParameter("diachi");
            String role = request.getParameter("role");
//            User us = new User(user_id, name, UserName, password, email, dateBirth, role);
            user.insertProduct(name,UserName,password,email,dateBirth,role);
//			HttpSession session = request.getSession();
//			session.setAttribute("user", kh);
            response.sendRedirect("dsuser");
            }


         catch (Exception throwables) {
            throwables.printStackTrace();

        }
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
