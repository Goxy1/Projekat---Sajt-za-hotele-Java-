<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 5/30/2023
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome user page!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
    <link href="css/index.css" rel="stylesheet">
    <%
        Cookie[] cookies = request.getCookies();
        String loggedInUser = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("loggedInUser")) {
                    loggedInUser = cookie.getValue();
                    break;
                }
            }
        }
    %>
</head>
<body>



    <% if (loggedInUser != null) { %>
    <script>
        alert("Congrats! You have logged in successfully!");
    </script>

<jsp:include page="HeaderAndFooter/Userheader.jsp"/>

    <% } %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script><!--Bootstrap java script-->
</body>
</html>