/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import db.handle.DB_Select;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kwok1
 */
@WebServlet(name = "memberSeting", urlPatterns = {"/memberSeting"})
public class memberSeting extends HttpServlet {

    private DB_Select db;

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
        String dbUser = this.getServletContext().getInitParameter("dbUsername");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new DB_Select(dbUrl, dbUser, dbPassword);
        PrintWriter out = response.getWriter();
        try {
            String mid = request.getParameter("menID");
            String pw = request.getParameter("pw");
            String nickname = request.getParameter("nickname");
            String tel = request.getParameter("tel");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String parent = request.getParameter("parent");
            String eTel = request.getParameter("eTel");
            String relation = request.getParameter("rel");
            String school = request.getParameter("school");
            if (mid != null && nickname != null 
                    && tel != null && email != null && address != null 
                    && parent != null && eTel != null && relation != null && school != null) {
                boolean editMemberRecord = db.editMemberRecord(mid, pw, nickname, tel, email, address, parent, eTel, relation, school);
                out.println(editMemberRecord);

            }

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/main.jsp");
            rd.forward(request, response);
        } catch (Exception ex) {
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
            out.println(ex.getMessage());
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
