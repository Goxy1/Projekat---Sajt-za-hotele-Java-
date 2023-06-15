<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/15/2023
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Filter Hotel name</title>
  <jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>
  <link href="../css/TableWithReservations.css" rel="stylesheet">
  <link href="../css/InputIDForAtlantaHotelReservation.css" rel="stylesheet">
</head>
<body>
<div class="container">


<%
  Connection connection = null;
  try {
    connection = ConnectionDataBase.connectToDataBase();

    String hotelName = request.getParameter("hotelName");
    String query;
    PreparedStatement statement;

    if (hotelName != null && !hotelName.isEmpty()) {
      query = "SELECT * FROM rezervacije WHERE HotelName = ?";
      statement = connection.prepareStatement(query);
      statement.setString(1, hotelName);
    } else {
      query = "SELECT * FROM rezervacije";
      statement = connection.prepareStatement(query);
    }

    ResultSet resultSet = statement.executeQuery();
%>
<table>
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Surname</th>
    <th>Date of Birth</th>
    <th>Email</th>
    <th>Check-In Date</th>
    <th>Check-Out Date</th>
    <th>Type of Room</th>
    <th>Hotel Name</th>
  </tr>

  <% while ((resultSet).next()) { %>
  <tr>
    <td><%= resultSet.getInt("ID") %></td>
    <td><%= resultSet.getString("FirstName") %></td>
    <td><%= resultSet.getString("Surname") %></td>
    <td><%= resultSet.getString("DateOfBirth") %></td>
    <td><%= resultSet.getString("Email") %></td>
    <td><%= resultSet.getString("CheckInDate") %></td>
    <td><%= resultSet.getString("CheckOutDate") %></td>
    <td><%= resultSet.getString("TypeOfRoom") %></td>
    <td><%= resultSet.getString("HotelName") %></td>
  </tr>
  <% } %>

</table>

<%
    resultSet.close();
    statement.close();
  } catch (Exception e) {
    e.printStackTrace();
  } finally {
    if (connection != null) {
      try {
        connection.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
%>

  <form action="../DeleteReservationWithIDAdmin" method="POSt">
    <label>Enter the ID reservation: </label>
    <input type="text" name="IDreservation">
    <input type="submit" value="Delete the reservation">
  </form>
</div>
</body>
</html>
