/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.tag;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author test
 */
public class ExampleTag2 extends SimpleTagSupport {

    private String aryData = null;
    private final HandleDBheader handdb_header = new HandleDBheader();

    @Override
    public void doTag() throws IOException {
        PageContext pageContext = (PageContext) getJspContext();
        JspWriter out = pageContext.getOut();
        out.println("A");

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

    public void setAryData(String aryData) {
        this.aryData = aryData;
    }

}
