<%-- 
    Document   : LogInManager
    Created on : May 29, 2023, 1:43:37 PM
    Author     : urosg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Log in manager</title>
        <link href="css/LogInManagerPage.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="index.jsp" class="form" autocomplete="off" method="POST">
            <div class="control">
                <h1>
                    Login as Manager
                </h1>
            </div>
            <div class="control block-cube block-input">
                <input name="username" type="text" placeholder="Username" />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>
            <div class="control block-cube block-input">
                <input name="password" type="password" placeholder="Password" />
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
            </div>
            <button class="btn block-cube block-cube-hover" type="button">
                <div class="bg-top">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg-right">
                    <div class="bg-inner"></div>
                </div>
                <div class="bg">
                    <div class="bg-inner"></div>
                </div>
                <div class="text">
                    Log In
                </div>
            </button>

        </form>
    </body>
</html>
