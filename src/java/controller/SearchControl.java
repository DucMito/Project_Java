/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.MyDAO;
import entity.Categories;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class SearchControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        request.setCharacterEncoding("UTF-8");
        String searchP = request.getParameter("search");        
        MyDAO dao = new MyDAO();       
        List<Product> list = dao.getAllProductBySearch(searchP);
        List<Categories> listC = dao.getAllCategory();
        Product Last = dao.getLast();
        
        
        request.setAttribute("lastP", Last);
        request.setAttribute("listC", listC);  
        request.setAttribute("listP", list);
        request.setAttribute("txtS", searchP);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}