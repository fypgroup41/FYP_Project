
<%@page import="db.bean.ActivitiesBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.handle.DB_Select"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function () {
    $("#contentPage").load("activities.jsp");
}
    $("#close").click(function () {
        $("#closeButton").css("visibility", "hidden");
        $("#indexLog").css("visibility", "hidden");
    });
</script>
<%
            String dbUser = this.getServletContext().getInitParameter("dbUsername");
            String dbPassword = this.getServletContext().getInitParameter("dbPassword");
            String dbUrl = this.getServletContext().getInitParameter("dbUrl");
            DB_Select db_select = new DB_Select(dbUrl, dbUser, dbPassword);


        %>

        <%           
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            ArrayList aryData = db_select.queryActivitiesBySql("SELECT * FROM activities where ");
            for (int i = 0; i < aryData.size(); i++) {
                ActivitiesBean act = (ActivitiesBean) aryData.get(i);

        %>
<link rel="stylesheet" type="text/css" href="css/loginform.css">


<div id="loginForm">
    <div id="triangle"></div>
    <i class="fa fa-times-circle  fa-2x"  id="close" style="float:right;cursor: pointer" ></i>
    <h1 id="hd"></h1>

    dosvgkspdgsg
</div>
