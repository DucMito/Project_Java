package controller;

import dao.MyDAO;
import entity.Customer;
import entity.OrderCustomer;
import entity.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class addPtoCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String ppid = request.getParameter("pid");
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        int cid = customer.getId();

        MyDAO dao = new MyDAO();
        OrderCustomer order = dao.getProductCart(cid, ppid);
        Product product = dao.getProductById(ppid);

//        if (order != null) {
//            if(order.getQuanity() <= 4 ){
//                int qty = order.getQuanity() + 2;
//                dao.updateQuanity(cid, ppid, qty);
//            }else if(order.getQuanity() <= 6 && order.getQuanity() > 4){
//                int qty = order.getQuanity() + 3;
//                dao.updateQuanity(cid, ppid, qty);
//            }else if(order.getQuanity() > 6){
//                int qty = order.getQuanity() + 4;
//                dao.updateQuanity(cid, ppid, qty);
//            }                       
//            response.sendRedirect("home");
//        } else {
//            int pid = product.getProductId();
//            double price = product.getPrice();
//            String name = product.getName();
//            String img = product.getImage();
//            dao.addPtoCart(cid, pid, img, name, price, 2);
//            response.sendRedirect("home");
//        }
        if (order != null) {
            int qty = order.getQuanity() + 1;
            dao.updateQuanity(cid, ppid, qty);
            response.sendRedirect("home");
        } else {
            int pid = product.getProductId();
            double price = product.getPrice();
            String name = product.getName();
            String img = product.getImage();
            dao.addPtoCart(cid, pid, img, name, price, 1);
            response.sendRedirect("home");
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
