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
    <%
        request.getSession().setAttribute("loggedinUser", "");
        boolean errorEmail = false;

        try
        {
            errorEmail = (boolean) request.getAttribute("errorEmail");
        }
        catch (Exception ignored){}

        String firstname = (String) request.getAttribute("firstname");
        if(firstname == null) firstname = "";

        String lastname = (String) request.getAttribute("lastname");
        if(lastname == null) lastname = "";

        String email = (String) request.getAttribute("email");
        if(email == null) email = "";

        String country = (String) request.getAttribute("country");
        if(country == null) country = "";

        String address = (String) request.getAttribute("address");
        if(address == null) address = "";

        String password = (String) request.getAttribute("password");
        if(password == null) password = "";

    %>
    <div class="wrapper">
    <h2>Registration</h2>
    <form action="SignupServlet" method="post">
      <div class="input-box">
        <input type="text" placeholder="Enter your name" required name="firstname">
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your last name" required name="lastname">
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your email" required name="email">

          <%
              if(errorEmail)
              {
                  out.print
                          (
                                  "<div id='validationEmail' class='invalid-feedback'>" +
                                          "Email has already been registered!" +
                                          "</div>"
                          );
              }
          %>
      </div>
        <div class="input-box">
            <input type="text" placeholder="Enter your country" required name="country">
        </div>
        <div class="input-box">
            <input type="text" placeholder="Enter your address" required name="address">
        </div>
      <div class="input-box">
        <input type="password" placeholder="Enter password" required name="password">
      </div>
      
      <div class="input-box button">
        <input type="Submit" value="Register Now">
      </div>
    </form>
  </div>
   
</body>
</html>



