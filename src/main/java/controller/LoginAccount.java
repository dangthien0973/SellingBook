package controller;



import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/dangnhap"})
public class LoginAccount extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginAccount() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");


        User kh = null;
        try {
            kh = new UserDao().getIfUser(username);



            if (new UserDao().checkLogin(username, pass)) {

                HttpSession session = request.getSession();
                session.setAttribute("user", kh);
                User currentUser = (User) session.getAttribute("user");
                if (currentUser.getRole().equals("user")) {
                    response.sendRedirect("XuLySanPham");
                } else {
                    if (currentUser.getRole().equals("admin")) {
                        response.sendRedirect("XuLySanPham");
                    }
                }
            } else {
                request.setAttribute("mess", "Đăng nhập thất bại! ");
                request.getRequestDispatcher("login.jsp").forward(request, response);


            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
