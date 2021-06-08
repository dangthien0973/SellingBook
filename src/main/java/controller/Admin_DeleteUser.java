package controller;

//import dao.UserDaoAdmin;

import dao.UserDaoAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet( urlPatterns ={ "/deleteUser"})
public class Admin_DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String did = request.getParameter("did");
            UserDaoAdmin user = new UserDaoAdmin();
            user.deleteUser(did);
            response.sendRedirect("dsuser");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
