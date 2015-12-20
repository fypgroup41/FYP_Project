<%-- 
    Document   : newjsp
    Created on : Dec 20, 2015, 2:35:41 PM
    Author     : test
--%>

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


        <%
            DB_Select db_select = new DB_Select();          
        %>

        <%@ taglib uri="/WEB-INF/tlds/ict-taglib.tld"
                   prefix="ict" %>
        <h1><ict:example aryData="<%=db_select.queryActivities()%>" /></h1>
    </body>
</html>
