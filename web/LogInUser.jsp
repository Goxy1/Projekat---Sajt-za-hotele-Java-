<%-- 
    Document   : LogIn
    Created on : May 29, 2023, 12:58:05 PM
    Author     : urosg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/LogIn.css" rel="stylesheet">
        <title>Login page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-6 col-md-4">
                <form name="KorisnikLogInForma" action="" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="page-header">
                                <h2>Ulogujte se kao korisnik</h2>
                            </div>
                            <div class="form-group">
                                <label for="email1">Email adresa</label>
                                <input type="email" name="email1" class="form-control" id="email1" placeholder="Unesite e-mail adresu">
                            </div>
                            <div class="form-group">
                                <label for="password3">Password</label>
                                <input type="password" name="password3" class="form-control" id="password3" placeholder="Unesite Password">
                            </div>
                            <div class="form-group">
                                <label for="show-password">Show Password:</label>
                                <input type="checkbox" id="show-password" onclick=""><br>
                            </div>
                            <button type="submit" name="submit">Ulogujte se korisnik</button>
                        </div>
                    </div>       
                </form>
            </div>
        </div>
    </body>
</html>
