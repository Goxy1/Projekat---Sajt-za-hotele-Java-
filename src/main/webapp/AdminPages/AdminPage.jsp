<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 5/30/2023
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="DB.ConnectionDataBase" %>
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

<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>

<div class="container">
  <div class="row">
<%
  Connection connection = null;
  connection = ConnectionDataBase.connectToDataBase(); // Pozivanje funkcije za uspostavljanje konekcije iz vaše klase

%>


<%
  String selectQuery = "SELECT * FROM hoteli"; // Promenite ovo na odgovarajući upit za dohvat podataka iz baze

  try (Statement statement = connection.createStatement();
       ResultSet resultSet = statement.executeQuery(selectQuery)) {
    while (resultSet.next()) {
      String imageUrl = resultSet.getString("putanjaSlike");
      String hotelName = resultSet.getString("HotelName");
      String hotelDescription = resultSet.getString("hotelDescription");
      String hotelPage = resultSet.getString("buttonRedirection");
%>

    <div class="col-4 custom-col-3" style="margin-top: 3cm;">
      <div class="card custom-col-3" style="width: 18rem;">
        <img src="<%= imageUrl %>" class="card-img-top" alt="<%= hotelName %>">
        <div class="card-body">
          <h5 class="card-title"><%= hotelName %></h5>
          <p class="card-text"><%= hotelDescription %></p>
          <a href="<%= hotelPage%>" class="btn btn-primary">Edit this hotel!</a>
        </div>
      </div>
    </div>

<%
    }
  } catch (SQLException e) {
    e.printStackTrace();
  }
%>


<%
  if (connection != null) {
    try {
      connection.close();
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }
%>
  </div>
</div>

<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script><!--Bootstrap java script-->
</body>
</html>