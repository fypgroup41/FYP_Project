/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import db.bean.UserBean;
import db.handle.DB_Select;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author user
 */
@WebServlet(name = "Login", urlPatterns = {"/register"})
public class Register extends HttpServlet {

    private DB_Select db;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dbUser = this.getServletContext().getInitParameter("dbUsername");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new DB_Select(dbUrl, dbUser, dbPassword);
        PrintWriter out = response.getWriter();
        try {
            String uname = request.getParameter("uname");
            String passwd = request.getParameter("passwd");
            String re_passwd = request.getParameter("re_passwd");
            String surname = request.getParameter("surname");
            String givenname = request.getParameter("givenname");
            String gender = request.getParameter("gender");
            String tel = request.getParameter("tel");
            String email = request.getParameter("email");
            String add_room = request.getParameter("add_room");
            String location = request.getParameter("location");
            String parent = request.getParameter("parent");
            String relation = request.getParameter("relation");
            String chiname = request.getParameter("chiname");
            String dob = request.getParameter("dob");
            if (uname != null && passwd != null && re_passwd != null && surname != null && givenname != null && gender != null && tel != null && email != null) {
                String availMemberID = db.getAvailMemberID();
                boolean isSuccessMember = db.addGeneralUser_Member(availMemberID, "2", "nickname", "2016-01-01", add_room, location, parent + relation, tel, "school");
                boolean isSuccessMember2 = db.addGeneralUser_User(db.getAvailUserID(), uname, passwd, availMemberID, givenname, surname, "F", tel, "chiname", email, 0);
                
                out.println(isSuccessMember2);
                
            }

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/main.jsp");
            rd.forward(request, response);
        } catch (Exception ex) {

            out.println(ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String dbUser = this.getServletContext().getInitParameter("dbUsername");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new DB_Select(dbUrl, dbUser, dbPassword);
        PrintWriter out = response.getWriter();
        try {
            String uname = request.getParameter("uname");
            String passwd = request.getParameter("passwd");
            String re_passwd = request.getParameter("re_passwd");
            String surname = request.getParameter("surname");
            String givenname = request.getParameter("givenname");
            String gender = request.getParameter("gender");
            String tel = request.getParameter("tel");
            String email = request.getParameter("email");
            String add_room = request.getParameter("add_room");
            String location = request.getParameter("location");
            String parent = request.getParameter("parent");
            String relation = request.getParameter("relation");
            String chiname = request.getParameter("chiname");
            String dob = request.getParameter("dob");
            out.println(uname);
            out.println(passwd);
            out.println(re_passwd);
            out.println(surname);
            out.println(givenname);
            out.println(gender);
            out.println(tel);
            out.println(email);
            out.println(add_room);
            out.println(location);
            out.println(parent);
            out.println(relation);
            out.println(chiname);
            out.println(dob);
            //    
            /*     if (uname != null && passwd != null && re_passwd != null && surname != null && givenname != null && gender != null && tel != null && email != null) {
               
           }*/
        } catch (Exception ex) {

            out.println(ex.getMessage());
        }
    }

}
