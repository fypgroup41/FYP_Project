<%-- 
    Document   : MemberSeting
    Created on : 2016年1月22日, 下午10:34:45
    Author     : kwok1
--%>
<%@page import="db.bean.MemberBean"%>
<%@page import="db.bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.handle.DB_Select"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String dbUser = this.getServletContext().getInitParameter("dbUsername");
            String dbPassword = this.getServletContext().getInitParameter("dbPassword");
            String dbUrl = this.getServletContext().getInitParameter("dbUrl");
            DB_Select db_select = new DB_Select(dbUrl, dbUser, dbPassword);
        %>
        <%
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            if (session.getAttribute("userInfo") != null) {
                UserBean userM = (UserBean) session.getAttribute("userInfo");
                if (userM.getMemberID() != null) {
                    ArrayList userData = db_select.queryUserBySql("SELECT * FROM user"
                            + " where userID = '" + userM.getUserID() + "'");

                    UserBean user = (UserBean) userData.get(0);
                    ArrayList memberData = db_select.queryMemberBySql("SELECT * FROM member"
                            + " where memberID = '" + user.getMemberID() + "'");

                    MemberBean member = (MemberBean) memberData.get(0);
        %>
        <form action="memberSeting" method="post">
            <input type="hidden" name="action" value="updateMember">
            <table>
                <tr>
                    <th>Member ID:&nbsp;</th>
                    <td> <%= user.getMemberID()%> </td>
                <input type="hidden" name="menID" value="<%= user.getMemberID()%>">
                </tr>
                <tr>
                    <th>User Name:&nbsp;</th>
                    <td> <%= user.getUserName()%> </td>
                </tr>
                <tr>
                    <th>Password:&nbsp;</th>
                    <td><input type="password" name="pw" pattern=".{8,}" id="pw"></td>
                </tr>
                <div id="cfmpwin">
                    <tr>
                        <th> Password: &nbsp; </th>
                        <td> <input type = "password" name = "cfmpw" pattern = ".{8,}" id = "cfmpw" > </td>
                    </tr>
                </div>
                <script>
                    $(document).ready(function () {
                        $("#cfmpwin").hide();
                        function displayVals() {
                             $("#cfmpwin").show();
                        }

                        $("#pw").change(displayVals);
                        displayVals();
                    });
                </script>
                <tr>
                    <th>Nick Name:&nbsp;</th>
                    <td><input type="text" name="nickname" required value="<%=member.getNickName()%>"/></td>
                </tr>
                <tr>
                    <th>First Name:&nbsp;</th>
                    <td> <%= user.getFirstName_eng()%> </td>
                </tr>
                <tr>
                    <th>Last Name:&nbsp;</th>
                    <td> <%= user.getLastName_eng()%> </td>
                </tr>
                <tr>
                    <th>Chinese Name:&nbsp;</th>
                    <td> <%= user.getName_ch()%> </td>
                </tr>
                <tr>
                    <th>Sex:&nbsp;</th>
                    <td> <%= user.getSex()%> </td>
                </tr>
                <tr>
                    <th>Telephone Number:&nbsp;</th>
                    <td> <input type="number" name="tel" pattern=".{8,8}" required value="<%= user.getTel()%>"/> </td>
                </tr>
                <tr>
                    <th>Email:&nbsp;</th>
                    <td> <input type="email" name="email" required value="<%= user.getEmail()%>"/> </td>
                </tr>
                <tr>
                    <th>Birthday:&nbsp;</th>
                    <td> <%= member.getBirthday()%> </td>
                </tr>
                <tr>
                    <th>Address:&nbsp;</th>
                    <td><textarea name="address"><%= member.getAddress()%></textarea> </td>
                </tr>
                <tr>
                    <th>Parent:&nbsp;</th>
                    <td><input type="text" name="parent" value="<%= member.getParent()%>"/> </td>
                </tr>
                <tr>
                    <th>Relationship:&nbsp;</th>
                    <td> <input type="text" name="rel" value="<%= member.getRelationship()%>"/> </td>
                </tr>
                <tr>
                    <th>Emergency tel:&nbsp;</th>
                    <td><input type="number" pattern=".{8,8}" name="eTel" value="<%= member.getEmergency_phone()%>"/></td>
                </tr>
                <tr>
                    <th>School:&nbsp;</th>
                    <td><textarea name="school"><%= member.getSchool()%></textarea> </td>
                </tr>
                <tr>
                    <th>Registration Date:&nbsp;</th>
                    <td> <%=member.getReg_date()%> </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"/><input type="reset"/></td>
                </tr>
            </table>
        </form>
        <%
            }
        } else {

        %>
        <div>Please login!</div>
        <%            }
        %>
    </body>
</html>
