<%-- 
    Document   : SignUp
    Created on : May 29, 2023, 12:59:41 PM
    Author     : urosg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/SignUpPage.css"/>
        <title>Register user</title>
</head>
<body>
    <div id="progress"></div>

    <div class="center">
        <div id="register">

            <i id="progressButton" class="ion-android-arrow-forward next"></i>

            <div id="inputContainer">
                <input id="inputField" required autofocus />
                <label id="inputLabel"></label>
                <div id="inputProgress"></div>
            </div>
        </div>
    </div>
    <script src="js/SignUpPage.js"></script>
   
</body>
</html>



