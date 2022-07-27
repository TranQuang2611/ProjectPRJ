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
import model.Product;

/**
 *
 * @author admin
 */
@WebServlet(name = "CartChange", urlPatterns = {"/CartChange"})
public class CartChange extends HttpServlet {

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
        String current = request.getParameter("current");
        if (current == null) {
            current = "";
        }
        
        
       HttpSession session = request.getSession();
        boolean isLogin = session != null && session.getAttribute("logged") != null;
        if (!isLogin) {
            request.setAttribute("mess", "Bạn chưa đăng nhập, Đăng nhập để mua hàng");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            String action = request.getParameter("action");
            int pid = Integer.parseInt(request.getParameter("pid"));
            ArrayList<Product> list = new ArrayList<>();
            DAOproject dao = new DAOproject();
            Product p = dao.getProductById(pid);
            if (session.getAttribute("cart") != null) {
                list = (ArrayList<Product>) session.getAttribute("cart");
            }
            // kiem tra du lieu session 
            if (action.equals("add")) {
                boolean checkDuplicate = false;
                if (list.isEmpty()) {
                    list.add(p);
                } else {
                    for (Product product : list) {
                        if (product.getId() == pid) {
                            checkDuplicate = true;
                        }
                    }
                    if (!checkDuplicate) {
                        list.add(p);
                    }
                }
            }
            if (action.equals("delete")) {
                int i = 0;
                int indexRemove = 0;
                for (Product product : list) {
                    if (product.getId() == pid) {
                        indexRemove = i;
                    }
                    i++;
                }
                list.remove(indexRemove);
            }
            session.setAttribute("cart", list);
            if (current.equals("ShopPage")) {
                String []link = request.getQueryString().split("ShopPage") ;
                for (String string : link) {
                    System.out.println(string);
                }
                response.sendRedirect("ShopPage");
            } else if (current.equals("CartPage")) {
                response.sendRedirect("CartPage");
            } else {
                response.sendRedirect("DetailPage?pid=" + pid);
            }

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
