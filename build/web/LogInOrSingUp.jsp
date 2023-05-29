<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page!</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
        <link href="css/LogInOrSignUpButton.css" rel="stylesheet">
    </head>
    <body>
        <div id="outer">
            <div class="button_slide slide_down"><a onclick="redirectToLoginUserPage();">LOG IN AS USER</a></div>
            <br /> <br /><br />
            <div class="button_slide slide_right"><a onclick="redirectToLoginManagerPage();">LOG IN AS MANAGER</a></div>
            <br /> <br /><br />
            <div class="button_slide slide_left"><a onclick="redirectToLoginAdministratorPage();">LOG IN AS ADMINISTRATOR</a></div>
            <br /> <br /><br />
            <div class="button_slide slide_up"><a onclick="redirectToSignUpPage();">SIGN UP</a></div>
            <br /> <br /><br />
        </div>
    </body>
</html>


<script>
function redirectToLoginUserPage() {
    window.location.href = "LogInUser.jsp";
}
function redirectToSignUpPage() {
    window.location.href = "SignUp.jsp";
}
function redirectToLoginManagerPage()
{
    window.location.href = "LogInManager.jsp";
}
function redirectToLoginAdministratorPage()
{
    window.location.href = "LogInAdministrator.jsp";
}
</script>