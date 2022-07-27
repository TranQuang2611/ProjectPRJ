/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAOproject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Product;

/**
 *
 * @author admin
 */
@WebServlet(name = "OrderProcess", urlPatterns = {"/OrderProcess"})
public class OrderProcess extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */  
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");   
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("logged");
        DAOproject dao = new DAOproject();
        Account a1 = dao.info(a.getId());
        ArrayList<Product> p = (ArrayList<Product>) session.getAttribute("cart");
         int total = 0;
         
        //SendMail.send(a1.getGmail(), "Danh sách account", p.toString(), "quangtranhhpt1@gmail.com", "01626736588");
        System.out.println(p.toString());
        System.out.println(a1.getGmail());
        try {
           total = Integer.parseInt(request.getParameter("total"));           
        } catch (Exception e) {
           
        }
        try {
            if (session.getAttribute("logged") != null && session.getAttribute("cart") != null) {
                int orderID = dao.insertOrder(a.getId());
                for (Product pro : p) {
                    dao.insertOrderDetail(orderID, pro.getId());                  
                    dao.updateStatus(pro.getId());
                }
                dao.updateAccountBalance(total, a.getId());
                session.removeAttribute("cart");
                request.getRequestDispatcher("success.jsp").forward(request, response);
            } else {
                response.sendRedirect("HomePage");
            }
        } catch (IOException | NumberFormatException e) {
          
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
