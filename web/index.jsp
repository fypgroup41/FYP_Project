<%-- 
    Document   : newjsp
    Created on : Dec 20, 2015, 2:35:41 PM
    Author     : test
--%>


<%@page import="java.io.Writer"%>
<%@page import="db.bean.ActivitiesBean"%>
<%@page import="db.bean.AdminBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.handle.DB_Select"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%!
            public void createTable(Writer out, String[][] temp, String topic) {
                try {
                    String code = null;
                    out.write("<h3>" + topic + "</h3>");
                    out.write("<table border=\"1\">");
                    for (int i = 0; i < temp.length; i++) {
                        code += ("<tr>");
                        if (i == 0) {
                            for (int j = 0; j < temp[0].length; j++) {
                                out.write("<th>" + temp[i][j] + "</th>");
                            }
                        } else {
                            for (int j = 0; j < temp[0].length; j++) {
                                out.write("<td>" + temp[i][j] + "</td>");
                            }
                        }
                        out.write("</tr>");
                    }
                    out.write("</table>");
                    out.write("<br><hr>");
                } catch (Exception ex) {
                }
            }
        %>
        <%
            DB_Select db_select = new DB_Select();
            String[][] temp;
            temp = db_select.getSql("select * from activities");
            createTable(out, temp, "activities");
            temp = db_select.getSql("select * from activitiesrecord");
            createTable(out, temp, "activitiesrecord");
            temp = db_select.getSql("select * from activitybudget");
            createTable(out, temp, "activitybudget");
            temp = db_select.getSql("select * from activitytimetable");
            createTable(out, temp, "activitytimetable");
            temp = db_select.getSql("select * from activitytype");
            createTable(out, temp, "activitytype");
            temp = db_select.getSql("select * from admin");
            createTable(out, temp, "admin");
            temp = db_select.getSql("select * from atype_a");
            createTable(out, temp, "atype_a");
            temp = db_select.getSql("select * from cctype_cc");
            createTable(out, temp, "cctype_cc");
            temp = db_select.getSql("select * from communitycenter");
            createTable(out, temp, "communitycenter");
            temp = db_select.getSql("select * from communitycentertype");
            createTable(out, temp, "communitycentertype");
            temp = db_select.getSql("select * from district");
            createTable(out, temp, "district");
            temp = db_select.getSql("select * from jobrecord");
            createTable(out, temp, "jobrecord");
            temp = db_select.getSql("select * from member");
            createTable(out, temp, "member");
            temp = db_select.getSql("select * from staff");
            createTable(out, temp, "staff");
            temp = db_select.getSql("select * from surveyanswer");
            createTable(out, temp, "surveyanswer");
            temp = db_select.getSql("select * from surveyqtype");
            createTable(out, temp, "surveyqtype");
            temp = db_select.getSql("select * from surveyquestion");
            createTable(out, temp, "surveyquestion");
            temp = db_select.getSql("select * from  user");
            createTable(out, temp, "user");

        %>              
        <%@ taglib uri="/WEB-INF/tlds/ict-taglib.tld" prefix="ict" %>
        <ict:example aryData="<%=db_select.querySelect("select * from activitybudget", "activitybudget")%>" />
        <ict:example aryData="<%=db_select.querySelect("select * from activities", "activities")%>" />

        <%@ taglib uri="/WEB-INF/tlds/ict-taglib2.tld" prefix="ict2" %>

        <ict2:example aryData="select * from activities" />
    </body>
</html>
