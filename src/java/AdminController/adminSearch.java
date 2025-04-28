
package AdminController;

import dao.MyDAO;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class adminSearch extends HttpServlet {

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
       
        request.setAttribute("listP", list);
        request.setAttribute("txtS", searchP);
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }
}