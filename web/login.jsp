<script>
    $(document).ready(function () {

        $("#button_login").click(function () {
            var dataVal = $.ajax({
                type: "POST",
                url: "login",
                data: "username=" + $("#username").val() + "&password=" + $("#password").val(),
                success: function (data) {

                    alert(data + "");
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }

            });



        });

    });
</script>
<link rel="stylesheet" type="text/css" href="css/loginform.css">
<div id="loginForm">
    <div id="triangle"></div>
    <h1>Welcome!</h1>
    <form action="login" method="post">
        Username:<input id="username"name="username" type="text" placeholder="e.g. taiman1234" /></br>
        Password:<input id="password" name="password" type="password"  /></br>
        <input type="button" id="button_login" value="Login"  />
    </form>
</div>
