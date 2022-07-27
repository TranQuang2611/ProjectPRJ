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
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.OrderDetail;

/**
 *
 * @author admin
 */
@WebServlet(name = "ViewOrder", urlPatterns = {"/ViewOrder"})
public class ViewOrder extends HttpServlet {

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
        request.getRequestDispatcher("historyorder.jsp").forward(request, response);

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
        ArrayList<OrderDetail> od = new ArrayList<>();
        DAOproject dao = new DAOproject();
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("logged");
        String datefrom = request.getParameter("datefrom");
        String dateto = request.getParameter("dateto");
        int currentPage = 1;
        int totaoPage = 0;
        String link = "ViewOrder?";
        try {
            if (session.getAttribute("logged") != null) {
                if (datefrom != null && dateto != null) {
                    link += "datefrom=" + datefrom + "&dateto=" + dateto;
                }
                if (request.getParameter("currentPage") != null) {
                    currentPage = Integer.parseInt(request.getParameter("currentPage"));
                }
                od = dao.historyOrder(a.getId(), datefrom, dateto, currentPage);
                totaoPage = dao.countOrderByUser(a.getId(), datefrom, dateto) / 7;
                if (dao.countOrderByUser(a.getId(), datefrom, dateto) % 7 != 0) {
                    totaoPage++;
                }
            } else {
                response.sendRedirect("LoginPage");
                return;
            }

        } catch (Exception e) {
        }
        System.out.println(datefrom + "and" + dateto);
        System.out.println(totaoPage);
        request.setAttribute("od", od);
        request.setAttribute("link", link);
        request.setAttribute("datefrom", datefrom);
        request.setAttribute("dateto", dateto);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPage", totaoPage);
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
