<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/formcss.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#login").click(function () {
                    $("#closeButton").css("visibility", "visible");
                    $("#indexLog").css("visibility", "visible");
                    $("#closeButton").load("login.jsp");
                    //$("#closeButton").append("<button id=\"close\">Close</button>");
                });
                $("#register").click(function () {
                    $("#closeButton").css("visibility", "visible");
                    $("#indexLog").css("visibility", "visible");
                });
                $("#close").click(function () {
                    $("#closeButton").css("visibility", "hidden");
                    $("#indexLog").css("visibility", "hidden");
                });
            });
        </script>
        <%--    <script type="text/javascript">
                function enableOverLay() {
                    var target = document.getElementById("indexLog");
                    target.style.visibility = "visible";
                    var target2 = document.getElementById("closeButton");
                    target2.style.visibility = "visible";
                }

            function disableOverLat() {
                var target = document.getElementById("indexLog");
                target.style.visibility = "hidden";
                var target2 = document.getElementById("closeButton");
                target2.style.visibility = "hidden";
            }
        </script>--%>
    </head>
    <body>

        <div id="closeButton">

        </div>
        <div class="header">
            <div id="Left">
                <h1>Activities Booking Website System</h1>

                <%
                    System.setProperty("file.encoding", "UTF-8");
                    if (request.getAttribute("data") != null) {
                        String[][] aryData = (String[][]) request.getAttribute("data");
                        out.write("<h3>" + "User" + "</h3>");
                        out.write("<table border=\"1\">");
                        for (int i = 0; i < aryData.length; i++) {

                            if (i == 0) {
                                for (int j = 0; j < aryData[0].length; j++) {
                                    out.write("<th>" + aryData[i][j] + "</th>");
                                }
                            } else {
                                for (int j = 0; j < aryData[0].length; j++) {
                                    out.write("<td>" + aryData[i][j] + "</td>");
                                }
                            }
                            out.write("</tr>");
                        }
                    }
                %>
            </div>
            <div id="Center">
            </div>
            <div id="Right">
                <button  id="login" >Login</button>
                <button id="register">Register</button>
            </div>
        </div>

        <div class="row">

            <div class="col-3 menu">
                <ul>
                    <li>Activities</li>
                    <li>News</li>
                    <li>Sharing Wall</li>
                </ul>
            </div>

            <div class="col-6">
                <div class="content">

                    <h1>Main Content</h1>
                    <p>Maybe set iframe to change content</p>
                </div>
            </div>
            <div class="col-3 right">
                <div class="aside">
                    Testing 
                </div>
            </div>
        </div>

        <div class="footer" >

        </div>

    </body>
</html>
