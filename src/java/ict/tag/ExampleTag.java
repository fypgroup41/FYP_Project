/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.tag;

import db.bean.ActivitiesBean;
import db.bean.AdminBean;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author test
 */
public class ExampleTag extends SimpleTagSupport {

    private ArrayList aryData = null;
    private final HandleDBheader handdb_header = new HandleDBheader();

    @Override
    public void doTag() throws IOException {
        PageContext pageContext = (PageContext) getJspContext();
        JspWriter out = pageContext.getOut();
        String[] header = null;
        String[][] data = null;
        if (aryData != null) {
            if (aryData.get(0) instanceof AdminBean) {
                ArrayList<AdminBean> adminBean = aryData;
                header = handdb_header.getAdminBean();
                data = new String[header.length][adminBean.size()];
                for (int i = 0; i < adminBean.size(); i++) {
                    data[0][i] = String.valueOf(adminBean.get(i).getAdminID());
                    data[1][i] = adminBean.get(i).getLogin_time();
                    data[2][i] = adminBean.get(i).getModify_time();
                }

            }
            if (aryData.get(0) instanceof ActivitiesBean) {
                ArrayList<ActivitiesBean> ActivitiesBean = aryData;

                header = handdb_header.getActivitiesBean();
                data = new String[header.length][ActivitiesBean.size()];
                for (int i = 0; i < ActivitiesBean.size(); i++) {
                    data[0][i] = String.valueOf(ActivitiesBean.get(i).getActivitiesID());
                    data[1][i] = ActivitiesBean.get(i).getName();
                    data[2][i] = String.valueOf(ActivitiesBean.get(i).getDistrictNo());
                    data[3][i] = String.valueOf(ActivitiesBean.get(i).getQuota());
                    data[4][i] = String.valueOf(ActivitiesBean.get(i).getRemain());
                    data[5][i] = String.valueOf(ActivitiesBean.get(i).getTargetAgeMax());
                    data[6][i] = String.valueOf(ActivitiesBean.get(i).getTagerAgeMin());
                    data[7][i] = ActivitiesBean.get(i).getDeadline();
                    data[8][i] = ActivitiesBean.get(i).getVenue();
                    data[9][i] = ActivitiesBean.get(i).getDate();
                    data[10][i] = ActivitiesBean.get(i).getTag();
                    data[11][i] = String.valueOf(ActivitiesBean.get(i).getStaffID());
                    data[12][i] = String.valueOf(ActivitiesBean.get(i).getSqID());
                    data[13][i] = ActivitiesBean.get(i).getDescription();
                }
            }
            showByTable(header, data);
        }
    }

    public void showByTable(String[] header, String[][] data) {
        try {
            PageContext pageContext = (PageContext) getJspContext();
            JspWriter out = pageContext.getOut();

            out.println("<table border=\"1\">");
            out.println("<tr>");

            for (String colName : header) {
                out.println("<th>" + colName + "</th>");
            }

            out.println("</tr>");

            for (int j = 0; j < data[0].length; j++) {
                out.println("<tr>");
                for (String[] items : data) {
                    out.println("<td>" + items[j] + "</td>");
                }
                out.println("</tr>");
            }

            out.println("</table>");
        } catch (Exception e) {
            e.getStackTrace();
        }
    }

    public void setAryData(ArrayList aryData) {
        this.aryData = aryData;
    }

}
