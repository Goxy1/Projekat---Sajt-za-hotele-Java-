<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 5/30/2023
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String loggedInManager = "";
    String email = (String) request.getAttribute("enteredEmail");
    String password = (String) request.getAttribute("enteredPassword");
    boolean error = false;

    try {
        error = (boolean) request.getAttribute("errorLogin");
    } catch (Exception ignored) {}

    request.getSession().setAttribute("loggedinManager", loggedInManager);

%>
</body>
</html>
