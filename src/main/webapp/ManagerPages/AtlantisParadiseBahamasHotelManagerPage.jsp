<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/13/2023
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DB.Hotel" %>
<%@ page import="DB.ConnectionDataBase"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Atlantis Paradise</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
  <link href="../css/SliderForPictures.css" rel="stylesheet">
  <link href="../css/AtlantisParadiseBahamas.css" rel="stylesheet">
  <link href="../css/AtlantisParadiseBahamasHotelTableManager.css" rel="stylesheet">
</head>
<body>

<jsp:include page="../HeaderAndFooter/ManagerHeader.jsp"/>

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
      <img src="../img/AtlantisSpolja.jpg" class="d-block w-100" alt="AtlantisSpolja">
    </div>
    <div class="carousel-item">
      <img src="../img/AtlantisSpoljaDrugaSlika.jpg" class="d-block w-100" alt="AtlantisSpoljaDrugaSlika">
    </div>
    <div class="carousel-item">
      <img src="../img/AtlantisIznutra.jpg" class="d-block w-100" alt="AtlantisIznutra">
    </div>
    <div class="carousel-item">
      <img src="../img/AtlantisIznutra2.jpg" class="d-block w-100" alt="AtlantisIznutra2">
    </div>
    <div class="carousel-item">
      <img src="../img/AtlantisSoba1.jpg" class="d-block w-100" alt="AtlantisSoba1">
    </div>
    <div class="carousel-item">
      <img src="../img/AtlantisSobaDrugaSlika.jpg" class="d-block w-100" alt="AtlantisSobaDrugaSlika">
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
  Connection connection = ConnectionDataBase.connectToDataBase();
  Hotel hotel = null;
  try{
    //Doing a query so we can grab informationa about certain hotel
    String query = "SELECT * FROM hoteli WHERE ID = ?";
    PreparedStatement statement = connection.prepareStatement(query);
    statement.setInt(1,1);//Setting ID from hotel to 1
    ResultSet resultSet = statement.executeQuery();

    //Grabing information from query and setting it on variables from Hotel class
    if(resultSet.next()){
      hotel = new Hotel();
      hotel.setId(resultSet.getInt("ID"));
      hotel.setHotelName(resultSet.getString("HotelName"));
      hotel.setHotelLocation(resultSet.getString("HotelLocation"));
      hotel.setRooms(resultSet.getInt("Rooms"));
      hotel.setTypeOfRoom(resultSet.getString("TypeOfRoom"));
      hotel.setTypeOfRoom2(resultSet.getString("TypeOfRoom2"));
    }

    //Closing resource
    resultSet.close();
    statement.close();
  }catch (Exception e) {
    e.printStackTrace();
  }finally{
    //Closing connection with database
    if(connection != null)
    {
      try{
        connection.close();
      }catch(Exception e){
        e.printStackTrace();
      }
    }
  }

  //Checking did we grab the hotel before we display information
  int id;
  String hotelName,hotelLocation,typeOfRoom,typeOfRoom2;
  int rooms;

  if(hotel != null){
    id = hotel.getId();
    hotelName = hotel.getHotelName();
    hotelLocation = hotel.getHotelLocation();
    rooms = hotel.getRooms();
    typeOfRoom = hotel.getTypeOfRoom();
    typeOfRoom2 = hotel.getTypeOfRoom2();
  }else{
    id = 0;
    hotelName = "";
    hotelLocation = "";
    rooms = 0;
    typeOfRoom = "";
    typeOfRoom2 = "";
  }
%>
<div class = "container additional-container">
  <h4>The information about the hotel</h4>
  <table>
    <tr>
      <th>Hotel ID</th>
      <th>Hotel Name</th>
      <th>Location</th>
      <th>Number of Rooms</th>
      <th>Type of Room</th>
      <th>Type of Room 2</th>
    </tr>
    <tr>
      <td><%= id %></td>
      <td><%= hotelName %></td>
      <td><%= hotelLocation %></td>
      <td><%= rooms %></td>
      <td><%= typeOfRoom %></td>
      <td><%= typeOfRoom2 %></td>
    </tr>
  </table>
</div>

<br><br>
<div class="container">
  <form action="../AtlantisAddNumberOfRoomsServlet" method="POST" class="AtlantisParadiseForm">
    <label class="AtlantisParadiseLabel">How many rooms do you want to add?</label>
    <input class="AtlantisParadiseInput" type="text" name="numberOfRooms">
    <button type="submit" class="AtlantisParadiseButton">Add rooms!</button>
  </form>
  <form action="../AtlantisRemoveNumberOfRoomsServlet" method="POST" class="AtlantisParadiseForm">
    <label class="AtlantisParadiseLabel">How many rooms do you want to remove?</label>
    <input class="AtlantisParadiseInput" type="text" name="RemoveNumberOfRooms">
    <button type="submit" class="AtlantisParadiseButton">Remove rooms!</button>
  </form>
  <form action="../AtlantisAddTypeOfRoomServlet" method="POST" class="AtlantisParadiseForm">
    <label class="AtlantisParadiseLabel" >What type of room do you want do add?</label>
    <input class="AtlantisParadiseInput" type="text" name="AddTypeOfRoom">
    <button type="submit" class="AtlantisParadiseButton">Add new type of the room</button>
  </form>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

