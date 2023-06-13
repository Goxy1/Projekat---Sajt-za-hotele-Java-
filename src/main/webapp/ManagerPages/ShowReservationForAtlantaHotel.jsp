<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/13/2023
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DB.ConnectionDataBase"%>
<html>
<head>
    <title>Reservations</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="../css/ShowReservationForAtlantaHotel.css" rel="stylesheet">
  <link href="../css/InputIDForAtlantaHotelReservation.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/ManagerHeader.jsp"/>


<div class="container">
  <h2>Reservation Details</h2>
  <table>
    <tr>
      <th>Reservation ID</th>
      <th>First Name</th>
      <th>Surname</th>
      <th>Date of Birth</th>
      <th>Email</th>
      <th>Check-in Date</th>
      <th>Check-out Date</th>
      <th>Type of Room</th>
      <th>Hotel Name</th>
    </tr>

  <%
      Connection connection = ConnectionDataBase.connectToDataBase();
      PreparedStatement statement = null;
      ResultSet resultSet = null;

      try{
        String query = "SELECT * FROM rezervacije WHERE HotelName = ?";
        statement = connection.prepareStatement(query);
        statement.setString(1,"Atlantis Paradise Bahamas Hotel");
        resultSet = statement.executeQuery();

        while(resultSet.next())
        {
            int id = resultSet.getInt("ID");
            String firstName = resultSet.getString("FirstName");
            String surname = resultSet.getString("Surname");
            String dateOfBirth = resultSet.getString("DateOfBirth");
            String email = resultSet.getString("Email");
            String checkInDate = resultSet.getString("CheckInDate");
            String checkOutDate = resultSet.getString("CheckOutDate");
            String typeOfRoom = resultSet.getString("TypeOfRoom");
            String hotelName = resultSet.getString("HotelName");
            %>
              <tr>
                <td><%= id %></td>
                <td><%= firstName %></td>
                <td><%= surname %></td>
                <td><%= dateOfBirth %></td>
                <td><%= email %></td>
                <td><%= checkInDate %></td>
                <td><%= checkOutDate %></td>
                <td><%= typeOfRoom %></td>
                <td><%= hotelName %></td>
              </tr>
          <%
        }
      }catch (Exception e)
      {
        e.printStackTrace();
      }finally{
        // Closing resource
        if (resultSet != null) {
          try {
            resultSet.close();
          } catch (Exception e) {
            e.printStackTrace();
          }
        }
        if (statement != null) {
          try {
            statement.close();
          } catch (Exception e) {
            e.printStackTrace();
          }
        }
        if (connection != null) {
          try {
            connection.close();
          } catch (Exception e) {
            e.printStackTrace();
          }
        }
      }
  %>
  </table>
</div>
<div class="container">
  <form action="../CancelReservationManager" method="POST">
    <label>Enter what reservation ID you want to delete:</label>
    <input type="text" name="reservationID">
    <input type="submit" value="Cancel reservation">
  </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
