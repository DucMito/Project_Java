package controller;

import dao.MyDAO;
import entity.account;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class registerControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String first = request.getParameter("first");
        String last = request.getParameter("last");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        MyDAO dao = new MyDAO();
        account check = dao.checkPhoneExits(phone);

        if (!pass.equals(repass)) {
            request.setAttribute("mess", "Nhập lại mật khẩu sai, nhập lại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else if (check != null) {
            request.setAttribute("mess", "Số điện thoại này đã tồn tại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            dao.registerlogin(phone, pass);
            dao.register(first, last, phone, address);
            response.sendRedirect("home");
        }
    }
}
