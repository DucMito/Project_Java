
package controller;


import dao.MyDAO;
import entity.Categories;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class homeControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        MyDAO dao = new MyDAO();
        List<Product> list = dao.getAllProduct();
        List<Categories> listC = dao.getAllCategory();
        Product Last = dao.getLast();
        
        
        request.setAttribute("lastP", Last);
        request.setAttribute("listC", listC);
        request.setAttribute("listP", list);
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    
    
    
    
    
    
    
    
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();


    }
}

