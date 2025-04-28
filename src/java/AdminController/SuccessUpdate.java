package AdminController;

import dao.MyDAO;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class SuccessUpdate extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String pid = request.getParameter("pid");
        String pname = request.getParameter("name");
        String pimage = request.getParameter("image");
        String pprice = request.getParameter("price");
        String ptitle = request.getParameter("title");
        String pdes = request.getParameter("des");
        MyDAO dao = new MyDAO();
        dao.updateProducts(pid, pname, pimage, pprice, ptitle, pdes);
        response.sendRedirect("homeadmin");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
