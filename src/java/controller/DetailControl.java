package controller;

import dao.MyDAO;
import entity.Categories;

import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class DetailControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String proID = request.getParameter("pid");
        MyDAO dao = new MyDAO();
        
        Product detail = dao.getProductById(proID);
        
        List<Categories> list = dao.getAllCategory();

        request.setAttribute("detail", detail);
        request.setAttribute("listC", list);
        request.getRequestDispatcher("product-detail.jsp").forward(request, response);
    }   
 
}
