<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="DB.HotelPictures"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="DB.Hotel" %>
<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/18/2023
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
    <link href="../css/SliderForPictures.css" rel="stylesheet">
    <link href="../css/AtlantisParadiseBahamas.css" rel="stylesheet">
    <link href="../css/AtlantisParadiseBahamasHotelTableManager.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>

<%
    Integer hotelID = Integer.parseInt(request.getParameter("hotelId"));

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

<div class="container">
    <%
        String hotelId = request.getParameter("hotelId");
        int hotelIDD = Integer.parseInt(hotelId);

        String query = "SELECT * FROM hoteli WHERE ID = ?";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, hotelIDD);
        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            Hotel hotel = new Hotel(
                    resultSet.getInt("ID"),
                    resultSet.getString("HotelName"),
                    resultSet.getString("HotelLocation"),
                    resultSet.getInt("Rooms"),
                    resultSet.getString("TypeOfRoom"),
                    resultSet.getString("TypeOfRoom2"),
                    resultSet.getString("hotelText")
            );
    %>
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Hotel Name</th>
            <th scope="col">Hotel Location</th>
            <th scope="col">Rooms</th>
            <th scope="col">Type of Room</th>
            <th scope="col">Type of Room 2</th>
            <th scope="col">Hotel Text</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%= hotel.getId() %></td>
            <td><%= hotel.getHotelName() %></td>
            <td><%= hotel.getHotelLocation() %></td>
            <td><%= hotel.getRooms() %></td>
            <td><%= hotel.getTypeOfRoom() %></td>
            <td><%= hotel.getTypeOfRoom2() %></td>
            <td><%= hotel.getHotelText() %></td>
        </tr>
        </tbody>
    </table>
    <form action="../UpdateNumberRoomsAdminServlet" method="POST" class="AtlantisParadiseForm">
        <input type="hidden" name="hotelId" value="<%= hotel.getId() %>">
        <label class="AtlantisParadiseLabel">How many rooms do you want to add?</label>
        <input class="AtlantisParadiseInput" type="text" name="numberOfRooms" required>
        <button type="submit" class="AtlantisParadiseButton">Add rooms!</button>
    </form>
    <form action="../DeleteNumberRoomsAdminServlet" method="POST" class="AtlantisParadiseForm">
        <input type="hidden" name="hotelId" value="<%= hotel.getId() %>">
        <label class="AtlantisParadiseLabel">How many rooms do you want to remove?</label>
        <input class="AtlantisParadiseInput" type="text" name="RemoveNumberOfRooms" required>
        <button type="submit" class="AtlantisParadiseButton">Remove rooms!</button>
    </form>
    <form action="../UpdateTypeOfRoomAdminServlet" method="POST" class="AtlantisParadiseForm">
        <input type="hidden" name="hotelId" value="<%= hotel.getId() %>">
        <label class="AtlantisParadiseLabel" >What type of room do you want do add?(1st slot)</label>
        <input class="AtlantisParadiseInput" type="text" name="AddTypeOfRoom" required>
        <button type="submit" class="AtlantisParadiseButton">Add new type of the room</button>
    </form>
    <form action="../UpdateTypeOfRoom2AdminServlet" method="POST" class="AtlantisParadiseForm">
        <input type="hidden" name="hotelId" value="<%= hotel.getId() %>">
        <label class="AtlantisParadiseLabel" >What type of room do you want do add?(2nd slot)</label>
        <input class="AtlantisParadiseInput" type="text" name="AddTypeOfRoom2" required>
        <button type="submit" class="AtlantisParadiseButton">Add new type of the room</button>
    </form>
    <form action="../UpdateHotelTextAdminServlet" method="POST" class="AtlantisParadiseForm">
        <input type="hidden" name="hotelId" value="<%= hotel.getId() %>">
        <label class="AtlantisParadiseLabel">Hotel Text</label>
        <textarea class="AtlantisParadiseInput" name="hotelText" rows="4" cols="50" required></textarea>
        <button type="submit" class="AtlantisParadiseButton">Update Hotel Text</button>
    </form>
    <form action="../DeleteHotelAdminServlet" method="POST" class="AtlantisParadiseForm">
        <input type="hidden" name="hotelId" value="<%= hotel.getId() %>">
        <button type="submit" class="AtlantisParadiseButton">Delete the hotel!</button>
    </form>
    <%
            }
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
    %>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
