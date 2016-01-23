$(document).ready(function () {
                $("#login").click(function () {
                    $("#closeButton").css("visibility", "visible");
                    $("#indexLog").css("visibility", "visible");
                    $("#closeButton").load("login.jsp");

                });
                $("#register").click(function () {
                    $("#closeButton").css("visibility", "visible");
                    $("#indexLog").css("visibility", "visible");
                });
                $("#close").click(function () {
                    $("#closeButton").css("visibility", "hidden");
                    $("#indexLog").css("visibility", "hidden");
                });
                $("#register").click(function () {
                    $("#contentPage").load("Generaluser_regform.jsp");
                });

                $("#activities").click(function () {
                    $("#contentPage").load("activities.jsp");
                });

                $("#actRec").click(function () {
                    $("#contentPage").load("userActivityRecord.jsp");
                });
                $("#memberset").click(function () {
                    $("#contentPage").load("memberSettings.jsp");
                });
  $('#hover-cap-4col .thumbnail').hover(
                        function () {
                            $(this).find('.caption').slideDown(250); //.fadeIn(250)
                        },
                        function () {
                            $(this).find('.caption').slideUp(250); //.fadeOut(205)
                        }
                );
                $('#hover-cap-4col .thumbnail').click(function () {

                    $(".alert").css("display", "block");
                    id = $(this).attr('id');
                    $("#closeButton").css("visibility", "visible");
                    $("#closebackground").fadeIn(500);;
                    $("#indexLog").css("visibility", "visible");
                    $("#closeButton").load("activityDetails.jsp?id=" + id);
                });
                $('.close').click(function () {
                    $(".alert").css("display", "none");
                });

$("#contentPage").load("activities.jsp");


        $("#close").click(function () {
            $("#closeButton").css("visibility", "hidden");
            $("#indexLog").css("visibility", "hidden");
            $("#closebackground").fadeOut(500);
        });
        
        $("#closebackground").click(function () {
            $("#closeButton").css("visibility", "hidden");
            $("#indexLog").css("visibility", "hidden");
             $("#closebackground").fadeOut(500);
        });

            });