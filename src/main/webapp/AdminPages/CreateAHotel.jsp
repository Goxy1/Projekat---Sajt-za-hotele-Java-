<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/18/2023
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a hotel!</title>
  <link href="../css/CreateAHotel.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>

<h1>Add a new Hotel</h1>
<form action="../AddHotelServlet" method="POST">
  <label>Hotel Name:</label>
  <input type="text" name="hotelName" required><br><br>

  <label>Hotel Location:</label>
  <input type="text" name="hotelLocation" required><br><br>

  <label>Number of Rooms:</label>
  <input type="text" name="numberOfRooms" required><br><br>

  <label>Type of Room 1:</label>
  <input type="text" name="typeOfRoom1" required><br><br>

  <label>Type of Room 2:</label>
  <input type="text" name="typeOfRoom2" required><br><br>

  <label>You will need to add the path of the pictures(Example:../img/Picture1.jpg):</label>
  <input type="text" name="pathPicture" required><br><br>

  <label>Hotel Description:</label>
  <textarea name="hotelDescription" required></textarea><br><br>

  <label>Hotel Text:</label>
  <textarea name="hotelText" required></textarea><br><br>

  <input type="submit" value="Add Hotel">
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
