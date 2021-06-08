package controller;

import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/Login"})
public class LoginFb extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String name=request.getParameter("Face&name");
            String email=request.getParameter("email");
            String id=request.getParameter("id");

 HttpSession session = request.getSession();
        User user=new User(1000,name,null,null,email,null,"user");
        session.setAttribute("user", user);
        response.sendRedirect("XuLySanPham");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
