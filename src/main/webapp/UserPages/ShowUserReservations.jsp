<%@ page import="java.util.List" %>
<%@ page import="DB.Reservation" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/4/2023
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Reservations!</title>
    <link href="../css/ShowUserReservations.css" rel="stylesheet">
</head>
<body>
<h1>Your reservations</h1>
<table>
    <tr>
        <th>Reservation ID</th>
        <th>FirstName</th>
        <th>Surname</th>
        <th>DateOfBirth</th>
        <th>Email</th>
        <th>CheckInDate</th>
        <th>CheckOutDate</th>
        <th>TypeOfRoom</th>
        <th>HotelName</th>
    </tr>

    <%
        ArrayList<Reservation> reservations = (ArrayList<Reservation>) request.getAttribute("reservations");
        for (Reservation reservation : reservations) { %>
    <tr>
        <td><%= reservation.getID() %></td>
        <td><%= reservation.getFirstName() %></td>
        <td><%= reservation.getSurname() %></td>
        <td><%= reservation.getDateOfBirth() %></td>
        <td><%= reservation.getEmail() %></td>
        <td><%= reservation.getCheckInDate() %></td>
        <td><%= reservation.getCheckOutDate() %></td>
        <td><%= reservation.getTypeOfRoom() %></td>
        <td><%= reservation.getHotelName() %></td>
    </tr>
    <% } %>
</table><br><br>
<form action="../CancelReservationServlet" method="POST">
    <label>Reservation ID:</label>
    <input type="text" name="ReservationID" placeholder="Enter your reservation ID" required><br><br/>
    <input type="Submit" value="Cancel reservation">
</form>

</body>
</html>
