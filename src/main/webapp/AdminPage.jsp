<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 5/30/2023
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <%
    Cookie[] cookies = request.getCookies();
    String loggedInAdmin = null;
    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if (cookie.getName().equals("loggedInAdmin")) {
          loggedInAdmin = cookie.getValue();
          break;
        }
      }
    }
  %>
</head>
<body>
<% if (loggedInAdmin != null) { %>
<script>
  alert("Congrats! You have logged in successfully!");
</script>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script><!--Bootstrap java script-->
</body>
</html>