/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import db.handle.DB_Select;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import net.sf.json.*;

/**
 *
 * @author user
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    private DB_Select db;

    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUsername");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new DB_Select(dbUrl, dbUser, dbPassword);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            PrintWriter out = response.getWriter();
            JSONObject json = new JSONObject();
            String[][] data = null;

            data = db.getSql("select * from user where username=\"" + username + "\"  and password=\"" + password + "\" ");

            if (data.length == 1) {
                //Fout.println("User name or password is incorrect");
                json.put("status", "fail");
            } else {
                //out.println("Login Success");
                json.put("status", "success");
            }

            response.setContentType("text/html;charset=UTF-8");

            json.put("username", username);
            json.put("password", password);

            out.println(json);

            /*  response.setContentType("application/json");
            request.setCharacterEncoding("UTF-8");
            JSONArray jArray = new JSONArray();
            

            JSONObject arrayObj = new JSONObject();
            arrayObj.put("username", "A");
            arrayObj.put("password", "B");

            jArray.add(0, arrayObj);
            PrintWriter out = response.getWriter();
            out.print(jArray);*/
 /*  response.setContentType("text/html;charset=UTF-8");
            //      
      

        

          
            request.setAttribute("data", data);
             */
 /*RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/main.jsp");
            rd.forward(request, response);*/
        } catch (Exception ex) {
            PrintWriter out = response.getWriter();
            out.println(ex.getMessage());
        }
    }

}
