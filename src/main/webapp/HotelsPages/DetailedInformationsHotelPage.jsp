<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="DB.HotelPictures" %>
<%@ page import="DB.Hotel" %><%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/18/2023
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome!</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
  <link href="../css/SliderForPictures.css" rel="stylesheet">
  <link href="../css/AtlantisParadiseBahamas.css" rel="stylesheet">
</head>
<body>


<jsp:include page="../HeaderAndFooter/Userheader.jsp"/>
<%
  int hotelID = Integer.parseInt(request.getParameter("hotelId"));
  String hotelName = request.getParameter("hotelName");

  Connection connection = null;
  PreparedStatement preparedStatement = null;
  ResultSet resultSet = null;

  try {
    connection = ConnectionDataBase.connectToDataBase();
    preparedStatement = connection.prepareStatement("SELECT outsidePicture, outsidePicture2, insidePicture, insidePicture2, HotelRoom, HotelRoom2 FROM hotelislike WHERE ID = ?");
    preparedStatement.setInt(1, hotelID);
    resultSet = preparedStatement.executeQuery();

    HotelPictures hotelPictures = new HotelPictures();
    if (resultSet.next()) {
      hotelPictures.setOutsidePicture(resultSet.getString("OutsidePicture"));
      hotelPictures.setOutsidePicture2(resultSet.getString("OutsidePicture2"));
      hotelPictures.setInsidePicture(resultSet.getString("InsidePicture"));
      hotelPictures.setInsidePicture2(resultSet.getString("InsidePicture2"));
      hotelPictures.setHotelRoom(resultSet.getString("HotelRoom"));
      hotelPictures.setHotelRoom2(resultSet.getString("HotelRoom2"));
    }
%>

<div id="carouselExampleIndicators" class="carousel slide container" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<%= hotelPictures.getOutsidePicture() %>" class="d-block w-100" alt="OutsidePicture">
    </div>
    <div class="carousel-item">
      <img src="<%= hotelPictures.getOutsidePicture2() %>" class="d-block w-100" alt="OutsidePicture2">
    </div>
    <div class="carousel-item">
      <img src="<%= hotelPictures.getInsidePicture() %>" class="d-block w-100" alt="InsidePicture">
    </div>
    <div class="carousel-item">
      <img src="<%= hotelPictures.getInsidePicture2() %>" class="d-block w-100" alt="InsidePicture2">
    </div>
    <div class="carousel-item">
      <img src="<%= hotelPictures.getHotelRoom() %>" class="d-block w-100" alt="HotelRoom">
    </div>
    <div class="carousel-item">
      <img src="<%= hotelPictures.getHotelRoom2() %>" class="d-block w-100" alt="HotelRoom2">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<%
  } catch (Exception e) {
    e.printStackTrace();
  } finally {
    // Close the database resources in the finally block
    try {
      if (resultSet != null) {
        resultSet.close();
      }
      if (preparedStatement != null) {
        preparedStatement.close();
      }
      if (connection != null) {
        connection.close();
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  ConnectionDataBase connection1 = new ConnectionDataBase();
  connection1.connectToDataBase();
%>

<div class="container">
  <h2><%= hotelName%></h2>
  <p><%= connection1.getHotelTextFromDatabase() %></p>
</div>

<div class="container">
  <form class="AtlantisParadiseForm" action="../MakeReservationUserServlet" method="POST">
    <label class="AtlantisParadiseLabel">First Name:</label>
    <input class="AtlantisParadiseInput" type="text" id="firstName" name="firstName" required>

    <label class="AtlantisParadiseLabel">Surname:</label>
    <input class="AtlantisParadiseInput" type="text" id="surname" name="surname" required>

    <label class="AtlantisParadiseLabel">Date of Birth:</label>
    <input class="AtlantisParadiseInput" type="date" id="dateOfBirth" name="dateOfBirth" required>

    <label class="check-lbl">Check-in date</label>
    <input type="date"  name="checkInDate" class="form-control" placeholder="Check-in date" required>

    <label class="check-lbl">Check-out date</label>
    <input type="date"  class="form-control" name="checkOutDate" placeholder="Check-out date" required>

    <label class="AtlantisParadiseLabel">What type of room would you like?</label>
    <input class="AtlantisParadiseInput" type="text" id="typeOfRoom" name="typeOfRoom" required>

    <label class="AtlantisParadiseLabel">Enter the name of the hotel to confirm that you are not a bot.</label>
    <input class="AtlantisParadiseInput" type="text" id="hotelName" name="hotelName" required>

    <button class="AtlantisParadiseButton" type="submit">Reserve!</button><br>
  </form>
</div>



<jsp:include page="../HeaderAndFooter/Footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>