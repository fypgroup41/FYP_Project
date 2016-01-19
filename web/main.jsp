<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/formcss.css">

        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

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
    <body >

        <%

            if (request.getAttribute("data") != null) {

                String[][] aryData = (String[][]) request.getAttribute("data");

                if (aryData.length == 1) {%>
        <div class="alert alert-warning">
            <strong>Login Message</strong> User name or password is incorrect
        </div>
        <%

                } else {

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
            }
        %>

        <div class="header"  style="background-color: green">
            <div id="Left" style="display:initine">
                <img src="img/banner.jpg" style="width:100px;height:100px">
                <img src="img/banner.jpg" style="width:800px;height:100px;margin-left:105px">

                <div id="user_status"></div>

            </div>
            <div id="Center">
            </div>
            <div id="Right">

            </div>
        </div>

        <div class="row">

            <div class="col-1 menu">
                <ul>
                    <li><center>Activities</center></li>
                    <li><center>News</center></li>
                    <li><center>Sharing Wall</center></li>
                </ul>
            </div>

            <div class="col-9" style="background-color: yellow">
                <div class="content">

                    <h1>Main Content</h1>
                    <p>Maybe set iframe to change content</p>

                    <button  id="login" >Login</button>
                    <button id="register">Register</button>
                </div>
            </div>
            <div class="col-2 right">
                <div class="aside">
                    <center>Sharing on Swimming Lessons (2015-11-12)</center>
                    <center> <i class="fa fa-camera-retro fa-5x"></i></center>
                    <div>Jade Art hold a Swimming Lesson on 2015-11-15.Most of the participats learn how to swimming..........<a href="">Click here</a> </div>


                    <hr>
                    <center>Sharing on Swimming Lessons (2015-11-12)</center>
                    <center> <i class="fa fa-camera-retro fa-5x"></i></center>
                    <div>Jade Art hold a Swimming Lesson on 2015-11-15.Most of the participats learn how to swimming..........<a href="">Click here</a> </div>

                    <hr>
                    <center>Sharing on Swimming Lessons (2015-11-12)</center>
                    <center> <i class="fa fa-camera-retro fa-5x"></i></center>
                    <div>Jade Art hold a Swimming Lesson on 2015-11-15.Most of the participats learn how to swimming..........<a href="">Click here</a> </div>

                </div>
            </div>
        </div>

        <div id="footer" >
        </div>
        <div id="closeButton">

        </div>
    </body>
</html>
