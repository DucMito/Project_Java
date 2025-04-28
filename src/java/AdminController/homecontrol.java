
package AdminController;


import dao.MyDAO;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class homecontrol extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        MyDAO dao = new MyDAO();
        List<Product> list = dao.getAllProduct();     
        
        request.setAttribute("listP", list);        
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }
}