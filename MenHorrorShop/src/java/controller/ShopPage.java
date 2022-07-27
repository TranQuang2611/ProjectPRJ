/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAOproject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author admin
 */
@WebServlet(name = "ShopPage", urlPatterns = {"/ShopPage"})
public class ShopPage extends HttpServlet {

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
        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
//        ArrayList<Product> p = new ArrayList<>();
//        DAOproject dao = new DAOproject();
//        
//        try {
//            p = dao.getAllProduct();
//        } catch (Exception e) {
//            
//        }
//        request.setAttribute("p", p);

        ArrayList<Product> p = new ArrayList<>();
        DAOproject dao = new DAOproject();
        int cid = 0;
        String sort = "";
        String rankdd = "";
        String rankdtcl = "";
        int championfrom = 0;
        int championto = 0;
        int rpfrom = 0;
        int rpto = 0;
        int skinfrom = 0;
        int skinto = 0;
        int littlefrom = 0;
        int littleto = 0;
        int pricefrom = 0;
        int priceto = 0;
        int currentPage = 1;
        int totalPage = 0;
        String link = "ShopPage?";
        try {
            if (request.getParameter("sort") != null) {
                if (request.getParameter("sort").equals("")) {
                    sort = "increase";
                    link += "sort=" + sort;
                } else {
                    sort = request.getParameter("sort");
                    link += "sort=" + sort;
                }
            }
            if (request.getParameter("cid") != null) {
                if (request.getParameter("cid").equals("")) {
                    cid = 0;
                    link += "&cid=" + cid;
                } else {
                    cid = Integer.parseInt(request.getParameter("cid"));
                    link += "&cid=" + cid;
                }
            }

            if (request.getParameter("rankdd") != null) {
                if (request.getParameter("rankdd").equals("")) {
                    rankdd = "";
                    link += "&rankdd=" + rankdd;
                } else {
                    rankdd = request.getParameter("rankdd");
                    link += "&rankdd=" + rankdd;
                }
            }

            if (request.getParameter("rankdtcl") != null) {
                if (request.getParameter("rankdtcl").equals("")) {
                    rankdtcl = "";
                    link += "&rankdtcl=" + rankdtcl;
                } else {
                    rankdtcl = request.getParameter("rankdtcl");
                    link += "&rankdtcl=" + rankdtcl;
                }
            }

            if (request.getParameter("championfrom") != null) {
                if (request.getParameter("championfrom").equals("")) {
                    championfrom = 0;
                    link += "&championfrom=" + championfrom;
                } else {
                    championfrom = Integer.parseInt(request.getParameter("championfrom"));
                    link += "&championfrom=" + championfrom;
                }
            }

            if (request.getParameter("championto") != null) {
                if (request.getParameter("championto").equals("")) {
                    championto = 0;
                    link += "&championto=" + championto;
                } else {
                    championto = Integer.parseInt(request.getParameter("championto"));
                    link += "&championto=" + championto;
                }
            }

            if (request.getParameter("rpfrom") != null) {
                if (request.getParameter("rpfrom").equals("")) {
                    rpfrom = 0;
                    link += "&rpfrom=" + rpfrom;
                } else {
                    rpfrom = Integer.parseInt(request.getParameter("rpfrom"));
                    link += "&rpfrom=" + rpfrom;
                }
            }

            if (request.getParameter("rpto") != null) {
                if (request.getParameter("rpto").equals("")) {
                    rpto = 0;
                    link += "&rpto=" + rpto;

                } else {
                    rpto = Integer.parseInt(request.getParameter("rpto"));
                    link += "&rpto=" + rpto;
                }
            }

            if (request.getParameter("skinfrom") != null) {
                if (request.getParameter("skinfrom").equals("")) {
                    skinfrom = 0;
                    link += "&skinfrom=" + skinfrom;
                } else {
                    skinfrom = Integer.parseInt(request.getParameter("skinfrom"));
                    link += "&skinfrom=" + skinfrom;
                }
            }

            if (request.getParameter("skinto") != null) {
                if (request.getParameter("skinto").equals("")) {
                    skinto = 0;
                    link += "&skinto=" + skinto;
                } else {
                    skinto = Integer.parseInt(request.getParameter("skinto"));
                    link += "&skinto=" + skinto;
                }
            }

            if (request.getParameter("littlefrom") != null) {
                if (request.getParameter("littlefrom").equals("")) {
                    littlefrom = 0;
                    link += "&littlefrom=" + littlefrom;
                } else {
                    littlefrom = Integer.parseInt(request.getParameter("littlefrom"));
                    link += "&littlefrom=" + littlefrom;
                }
            }

            if (request.getParameter("littleto") != null) {
                if (request.getParameter("littleto").equals("")) {
                    littleto = 0;
                    link += "&littleto=" + littleto;
                } else {
                    littleto = Integer.parseInt(request.getParameter("littleto"));
                    link += "&littleto=" + littleto;
                }
            }

            if (request.getParameter("pricefrom") != null) {
                if (request.getParameter("pricefrom").equals("")) {
                    pricefrom = 0;
                    link += "&pricefrom=" + pricefrom;
                } else {
                    pricefrom = Integer.parseInt(request.getParameter("pricefrom"));
                    link += "&pricefrom=" + pricefrom;
                }
            }

            if (request.getParameter("priceto") != null) {
                if (request.getParameter("priceto").equals("")) {
                    priceto = 0;
                    link += "&priceto=" + priceto;
                } else {
                    priceto = Integer.parseInt(request.getParameter("priceto"));
                    link += "&priceto=" + priceto;
                }
            }

            if (request.getParameter("currentPage") != null) {
                currentPage = Integer.parseInt(request.getParameter("currentPage"));
            }

            p = dao.getProductFilter(cid, rankdd, rankdtcl, championfrom, championto, rpfrom, rpto, skinfrom, skinto, littlefrom, littleto, pricefrom, priceto, sort, currentPage);
            totalPage = dao.countProductFilter(cid, rankdd, rankdtcl, championfrom, championto, rpfrom, rpto, skinfrom, skinto, littlefrom, littleto, pricefrom, priceto) / 12;
            if (dao.countProductFilter(cid, rankdd, rankdtcl, championfrom, championto, rpfrom, rpto, skinfrom, skinto, littlefrom, littleto, pricefrom, priceto) % 12 != 0) {
                totalPage++;
            }
            if(p.size()==0){
                request.setAttribute("mess", "Không có sản phẩm nào");
            }
        } catch (NumberFormatException e) {

        }
        request.setAttribute("link", link);
        request.setAttribute("p", p);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("cid", cid);
        request.setAttribute("sort", sort);
        request.setAttribute("rankdd", rankdd);
        request.setAttribute("rankdtcl", rankdtcl);
        request.setAttribute("championfrom", championfrom);
        request.setAttribute("championto", championto);
        request.setAttribute("rpfrom", rpfrom);
        request.setAttribute("rpto", rpto);
        request.setAttribute("skinfrom", skinfrom);
        request.setAttribute("skinto", skinto);
        request.setAttribute("littlefrom", littlefrom);
        request.setAttribute("littleto", littleto);
        request.setAttribute("pricefrom", pricefrom);
        request.setAttribute("priceto", priceto);

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
