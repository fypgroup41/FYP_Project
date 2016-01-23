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

    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUsername");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new DB_Select(dbUrl, dbUser, dbPassword);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        boolean editPw = false;
        boolean editMember = false;
        boolean editUser = false;
        if (action.equals("updateMember")) {
            try {
                String mid = request.getParameter("menID");
                String pw = request.getParameter("pw");
                String cfmpw = request.getParameter("cfmpw");
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
                    if (!pw.equals("") && !cfmpw.equals("")) {
                        editPw = db.editMemberRecordForPw(mid, pw);
                    } else {
                        editPw = true;
                    }
                    editMember = db.editMemberRecordForMember(mid, nickname, address, parent, relation, eTel, school);
                    editUser = db.editMemberRecordForUser(mid, tel, email);
                    if (editMember && editUser) {
                        if (editPw) {
                            out.println("Updated!");
                        } else {
                            out.println("Can not update Password! Please try again!");
                        }
                    } else {
                        out.println("Can not Update! Please try again!|"+editMember+"|"+ editUser);
                    }
                } else {
                    out.println("Update is FAIL");
                }

                RequestDispatcher rd;
                 rd = getServletContext().getRequestDispatcher("/main.jsp");
                 rd.forward(request, response);
            } catch (Exception ex) {
                RequestDispatcher rd;
                 rd = getServletContext().getRequestDispatcher("/login.jsp");
                 rd.forward(request, response);
                 out.println(ex.getMessage());
                out.println("Error !");
            }
        } else {
            out.println("Error using!!");
        }
    }
}
