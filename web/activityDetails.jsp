
<%@page import="db.bean.ActivitiesBean"%>
<%@page import="db.bean.MemberBean"%>
<%@page import="db.bean.ActivitiesRecordBean"%>
<%@page import="ict.calculate.DateCalculate"%>
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
    <script>

        $("#join").click(function () {
        <%
            if (session.getAttribute("userInfo") != null) {
                UserBean userM = (UserBean) session.getAttribute("userInfo");
                if (userM.getMemberID() != null) {
                    DateCalculate dc = new DateCalculate();
                    ArrayList memberData = db_select.queryMemberBySql("SELECT * FROM member"
                            + " where memberID = '" + userM.getMemberID() + "'");
                    MemberBean member = (MemberBean) memberData.get(0);
                    try {
                        SimpleDateFormat sdfbd = new SimpleDateFormat("yyyy-MM-dd");
                        String bate = member.getBirthday();
                        Date bd = sdfbd.parse(bate);
                        Date runDate = sdfbd.parse(act.getDate());
                        int age = dc.calculateAge(bd);
                        int ckMamberActDate = 1;

                        ArrayList memberRecData = db_select.queryActivitiesRecordBySql("SELECT * FROM activitiesrecord where memberID='" + userM.getMemberID() + "'");
                        if (memberRecData.size() > 0) {
                            
                            for (int x = 0; x < memberRecData.size(); x++) {
                                
                                ActivitiesRecordBean mbActRec = (ActivitiesRecordBean) memberRecData.get(x);
                                String sqlStr = "SELECT * FROM activities where date >= '" + sdfbd.format(runDate)
                                        + " 00:00:00' AND date <= '" + sdfbd.format(runDate) + " 23:59:59' and activitiesID='" + mbActRec.getActivitiesID() + "'";
                                ArrayList ckActDate = db_select.queryActivitiesBySql("SELECT * FROM activities where date >= '" + sdfbd.format(runDate)
                                        + " 00:00:00' AND date <= '" + sdfbd.format(runDate) + " 23:59:59' and activitiesID='" + mbActRec.getActivitiesID() + "'");
        
            if (ckActDate.size() > 0) {
                ckMamberActDate = 1;
        
            break;
        } else {
            ckMamberActDate = 0;
        
                }
            }
        } else {
            ckMamberActDate = 0;
        
            }

            if (ckMamberActDate == 0) {
                if (age >= act.getTargetAgeMin() && age <= act.getTargetAgeMax()) {
                    String arID = "";
                    String aID = act.getActivitiesID();
                    String mbID = userM.getMemberID();
                    String state = "not confirm";
                    ArrayList acrRecData = db_select.queryActivitiesRecordBySql("SELECT * FROM activitiesrecord");
                    ActivitiesRecordBean actRec = (ActivitiesRecordBean) acrRecData.get(acrRecData.size() - 1);
                    arID = (Integer.parseInt(actRec.getActivitiesRecordID()) + 1) + "";
                    
                    if (db_select.addActivitiesRecord(arID, aID, mbID, state)) {
        %>
            alert("Activity is joined.");
        <%
            }
        } else {
        %>
            alert("Your age dose not match the requirement!");
        <%
            }
        } else {
        %>
            alert("You have activities on this day.");
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        } else {
        %>
            alert("You is not member!");
        <%
            }

        } else {
        %>
            alert("Please Login!");
        <%
            }
        %>
        });
    </script>
    <%
        }
    %>
    
    
</div>

