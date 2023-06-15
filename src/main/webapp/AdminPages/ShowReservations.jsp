<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/15/2023
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="DB.ConnectionDataBase" %>
<html>
<head>
    <title>Reservations!</title>
    <link href="../css/TableWithReservations.css" rel="stylesheet">
    <link href="../css/InputIDForAtlantaHotelReservation.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>


<div class="container">


<%
    Connection connection = null;
    try {
        connection = ConnectionDataBase.connectToDataBase();

        String query = "SELECT * FROM rezervacije";

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);

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

    <% while (resultSet.next()) { %>
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

    <form action="../AdminPages/FilterHotelName.jsp" method="POST">
        <label>Enter hotel name:</label>
        <input type="text" name="hotelName">
        <input type="submit" value="Show Reservations">
    </form>
</div>
</body>
</html>
