package controller;

import dao.MyDAO;
import entity.Customer;
import entity.account;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class LoginControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        MyDAO dao = new MyDAO();
        account a = dao.login(user, pass);
        Customer c = dao.getCustomer(user);
        HttpSession session = request.getSession();
        if (a == null) {
            request.setAttribute("mess", "Sai tài khoản hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else if(a.getRole() == 1){
            session.setAttribute("acc", a);
            session.setAttribute("customer", c);
            response.sendRedirect("homeadmin");
        }                 
        else {            
            session.setAttribute("acc", a);
            session.setAttribute("customer", c);
            response.sendRedirect("home");
        }
        

    }
}
