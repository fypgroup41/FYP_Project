/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db.handle;

import db.bean.ActivitiesBean;
import db.bean.AdminBean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author a1
 */
public class DB_Select {

    public DB_Select() {
    }

    private AdminBean admin = null;
    private ActivitiesBean activities = null;

    private String url = "";
    private String username = "";
    private String password = "";

    public DB_Select(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;

    }

    public Connection getConnection() throws SQLException, IOException {
        System.setProperty("jdbc.drivers", "com.mysql.jdbc.Driver");

        try {
            Class.forName("com.mysql.jdbc.Driver");

        } catch (ClassNotFoundException ex) {
            //  Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        }

        return DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
    }

    public ArrayList queryAdmin() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        ArrayList list = new ArrayList();
        try {

            ResultSet rs = null;
            cnnct = getConnection();
            String preQueryStatement = "SELECT* FROM ADMIN";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            rs = pStmnt.executeQuery();
            while (rs.next()) {
                admin = new AdminBean(rs.getInt("adminID"), rs.getString("login_time"), rs.getString("modify_time"), rs.getString("position"));
                list.add(admin);
            }
            pStmnt.close();
            cnnct.close();

        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public ArrayList queryActivities() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        ArrayList list = new ArrayList();
        try {

            ResultSet rs = null;
            cnnct = getConnection();
            String preQueryStatement = "SELECT* FROM ACTIVITIES";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            rs = pStmnt.executeQuery();
            while (rs.next()) {
                activities = new ActivitiesBean(rs.getInt("activitiesID"), rs.getString("name"), rs.getInt("districtNo"), rs.getInt("quota"), rs.getInt("remain"), rs.getInt("targetAgeMax"), rs.getInt("targetAgeMin"), rs.getString("deadline"), rs.getString("venue"), rs.getString("date"), rs.getString("tag"), rs.getInt("staffID"), rs.getInt("sqID"), rs.getString("description"));
                list.add(activities);
            }
            pStmnt.close();
            cnnct.close();

        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
