/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAOproject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author admin
 */
@WebServlet(name = "ChangePass", urlPatterns = {"/ChangePass"})
public class ChangePass extends HttpServlet {

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
        request.getRequestDispatcher("change.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        DAOproject dao = new DAOproject();
        Account a = (Account) session.getAttribute("logged");
        String currentPass = "";
        String newPass = "";
        String rePass = "";
        try {

            if (session.getAttribute("logged") != null) {
                if (!request.getParameter("currentPass").equals("") && !request.getParameter("newPass").equals("") && !request.getParameter("rePass").equals("")) {
                    currentPass = request.getParameter("currentPass");
                    newPass = request.getParameter("newPass");
                    rePass = request.getParameter("rePass");
                }else{
                    request.setAttribute("mess", "Kh??ng ???????c ????? tr???ng !!! ");
                    processRequest(request, response);
                    return;
                }
                
                if (currentPass.equals(a.getPass()) && newPass.equals(rePass)) {
                    dao.changepass(a.getId(), newPass);
                    request.setAttribute("mess", "?????i m???t kh???u th??nh c??ng !!!");
                } else if (!currentPass.equals(a.getPass())) {
                    request.setAttribute("mess", "M???t kh???u hi???n t???i kh??ng ????ng !!!");
                } else {
                    request.setAttribute("mess", "Nh???p l???i m???t kh???u sai !!!");
                }
            }else{
                response.sendRedirect("LoginPage");
                return;
            }
        } catch (Exception e) {

        }
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
