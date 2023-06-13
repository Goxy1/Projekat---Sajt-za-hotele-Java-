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
    <title>Manager page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
    <%
        Cookie[] cookies = request.getCookies();
        String loggedInManager = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("loggedInManager")) {
                    loggedInManager = cookie.getValue();
                    break;
                }
            }
        }
    %>
</head>
<body>


<% if (loggedInManager != null) { %>
<jsp:include page="../HeaderAndFooter/ManagerHeader.jsp"/>






<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script><!--Bootstrap java script-->
</body>
</html>
