/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db.handle;

import db.bean.ActivitiesBean;
import db.bean.ActivitiesRecordBean;
import db.bean.ActivityBudgetBean;
import db.bean.AdminBean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author a1
 */
public class DB_Select {

    public DB_Select() {
    }

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

    public ArrayList querySelect(String sql, String bean) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        ArrayList list = new ArrayList();
        try {

            ResultSet rs = null;
            cnnct = getConnection();
            String preQueryStatement = sql;
            //String preQueryStatement = "SELECT* FROM ADMIN";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            rs = pStmnt.executeQuery();
            list = getList(rs, bean);
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

    public ArrayList getList(ResultSet rs, String bean) throws SQLException {
        ArrayList list = new ArrayList();

        if (bean.equals("activities")) {
            ActivitiesBean activities;
            while (rs.next()) {
                activities = new ActivitiesBean(rs.getString("activitiesID"), rs.getString("name"), rs.getInt("districtNo"), rs.getInt("quota"), rs.getInt("remain"), rs.getInt("targetAgeMax"), rs.getInt("targetAgeMin"), rs.getString("deadline"), rs.getString("venue"), rs.getString("date"), rs.getString("tag"), rs.getString("staffID"), rs.getString("sqID"), rs.getString("description"));
                list.add(activities);
            }
        }
        if (bean.equals("admin")) {
            AdminBean admin;
            while (rs.next()) {
                admin = new AdminBean(rs.getString("adminID"), rs.getString("login_time"), rs.getString("modify_time"), rs.getString("position"));
                list.add(admin);
            }
        }

        if (bean.equals("activitiesrecord")) {
            ActivitiesRecordBean activitiesRecord;
            while (rs.next()) {
                activitiesRecord = new ActivitiesRecordBean(rs.getString("activitiesRecordID"), rs.getString("activitiesID"), rs.getString("memberID"), rs.getString("state"));
                list.add(activitiesRecord);
            }
        }

        if (bean.equals("activitybudget")) {
            ActivityBudgetBean activityBudget;
            while (rs.next()) {
                activityBudget = new ActivityBudgetBean(rs.getString("itemID"), rs.getString("activitiesID"), rs.getString("itemName"), rs.getString("itemType"), rs.getDouble("cost"), rs.getInt("number"), rs.getString("remark"));
                list.add(activityBudget);
            }
        }
        return list;
    }

    public ArrayList queryCustomSelect(String sql) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        ArrayList list = new ArrayList();
        try {

            ResultSet rs = null;
            cnnct = getConnection();
            String preQueryStatement = sql;

            pStmnt = cnnct.prepareStatement(preQueryStatement);
            rs = pStmnt.executeQuery();
            while (rs.next()) {
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

    public String[][] getSql(String aa) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        String[][] temp = null;
        try {

            ResultSet rs = null;
            cnnct = getConnection();
            String preQueryStatement = aa;

            pStmnt = cnnct.prepareStatement(preQueryStatement);
            rs = pStmnt.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
            rs.last();
            temp = new String[rs.getRow() + 1][columnCount];
            Logger _log = Logger.getLogger(DB_Select.class.getName());
            rs.beforeFirst();
            for (int i = 0; i < columnCount; i++) {
                temp[0][i] = rsmd.getColumnName(i + 1);
            }
            int count = 0;
            while (rs.next()) {
                count++;
                for (int j = 0; j < temp[0].length; j++) {
                    temp[count][j] = rs.getString(j + 1);
                }
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
        return temp;

    }
}
