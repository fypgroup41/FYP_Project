
<%@page import="db.bean.ActivitiesBean"%>
<%@page import="db.bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.handle.DB_Select"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<%
    String dbUser = this.getServletContext().getInitParameter("dbUsername");
    String dbPassword = this.getServletContext().getInitParameter("dbPassword");
    String dbUrl = this.getServletContext().getInitParameter("dbUrl");
    DB_Select db_select = new DB_Select(dbUrl, dbUser, dbPassword);
%>
<%@ taglib uri="/WEB-INF/tlds/ict-taglib2.tld" prefix="ict2" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    ArrayList aryData = db_select.queryActivitiesBySql("SELECT * FROM activities"
            + " where activitiesID = '" + request.getParameter("id") + "'");


%>
<script>
    $(document).ready(function () {
        $("#contentPage").load("activities.jsp");
        //$( "#hd" ).html( "Test" );

        $("#close").click(function () {
            $("#closeButton").css("visibility", "hidden");
            $("#indexLog").css("visibility", "hidden");
        });

    });
</script>

<link rel="stylesheet" type="text/css" href="css/loginform.css">


<div id="loginForm">
    <div id="triangle"></div>
    <i class="fa fa-times-circle  fa-2x"  id="close" style="float:right;cursor: pointer" ></i>
    <%        for (int i = 0; i < aryData.size(); i++) {
            ActivitiesBean act = (ActivitiesBean) aryData.get(i);
            ArrayList staffData = db_select.queryUserBySql("SELECT * FROM user"
                    + " where staffID = '" + act.getStaffID() + "'");
            UserBean user = (UserBean) staffData.get(0);

    %>
    <h1 id="hd"><%= act.getName()%></h1>
    <center>
        <table>
            <tr>
                <th>Activity ID</th>
                <td><%= act.getActivitiesID()%></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= act.getName()%></td>
            </tr>
            <tr>
                <th>Date</th>
                    <%
                        String dateInString = act.getDate();
                        Date date = sdf.parse(dateInString);
                    %>
                <td><%= sdf.format(date)%></td>
            </tr>
            <tr>
                <th>Venue</th>
                <td><%= act.getVenue()%></td>
            </tr>

            <tr>
                <th>Quota</th>
                <td><%= act.getQuota()%></td>
            </tr>
            <tr>
                <th>Remain</th>
                <td><%= act.getRemain()%></td>
            </tr>
            <tr>
                <th>Range of the age</th>
                <td><%= act.getTargetAgeMin()%> ~ <%= act.getTargetAgeMax()%></td>
            </tr>
            <tr>
                <th>Deadline</th>
                    <%
                        dateInString = act.getDeadline();
                        date = sdf.parse(dateInString);
                    %>
                <td><%= sdf.format(date)%></td>
            </tr>
            <tr>
                <th>Person in charge</th>
                <td><%= user.getFirstName_eng()%> <%= user.getLastName_eng()%></td>

            </tr>
            <tr>
                <th>Description</th>
                <td><%= act.getDescription()%></td>
            </tr>
            <tr>
                <td></td>
                <td ><button id="join">Join</button></td>
            </tr>

        </table>

    </center>
    <%
        }
    %>
</div>
<script>
    $(function () {
        $("#join").click(function () {
    <% if (session.getAttribute("userInfo") != null) {
                    UserBean user = (UserBean) session.getAttribute("userInfo");
                    if (user.getMemberID() != null) {
                        user.getMemberID();
                    }
                }
    %>
        }
    });
</script>
