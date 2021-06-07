package controller;



import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = {"/XuLyDangKy"})
public class RegisterAccount extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public RegisterAccount() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String name = request.getParameter("name");

        String email = request.getParameter("email");
        String userName = request.getParameter("User");
        String repass = request.getParameter("repass");
        String password = request.getParameter("Password");
        String address = request.getParameter("address");

        String role = "user";


        try {
            UserDao userDao=new UserDao();
            int idAccount=userDao.countUser()+1;

            if (new UserDao().getIfUser(userName) == null) {
                if (repass.equals(password)) {
                    userDao.addAccount(idAccount,name,userName,password,email,address,role);
                    response.sendRedirect("login.jsp");
                } else {
                    request.setAttribute("mess", "Mật khẩu nhập lại không đúng !");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("mess", "Tài khoản đã tồn tại !");
                request.getRequestDispatcher("register.jsp").forward(request, response);


            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
