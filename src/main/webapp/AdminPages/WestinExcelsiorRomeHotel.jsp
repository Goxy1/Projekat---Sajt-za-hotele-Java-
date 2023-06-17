<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="DB.Hotel" %><%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/17/2023
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Westin Excelsior Rome Hotel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
    <link href="../css/SliderForPictures.css" rel="stylesheet">
    <link href="../css/AtlantisParadiseBahamas.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>

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
            <img src="../img/TheWestinExcelsiorRomeHotelSpolja.jpg" class="d-block w-100" alt="The Westin Excelsior Rome Hotel Spolja">
        </div>
        <div class="carousel-item">
            <img src="../img/TheWestinExcelsiorRomeHotelSpolja2.jpg" class="d-block w-100" alt="The Westin Excelsior Rome Hotel Spolja 2">
        </div>
        <div class="carousel-item">
            <img src="../img/TheWestinExcelsiorRomeHotelIznutra.jpg" class="d-block w-100" alt="The Westin Excelsior Rome Hotel Iznutra">
        </div>
        <div class="carousel-item">
            <img src="../img/TheWestinExcelsiorRomeHotelIznutra2.jpg" class="d-block w-100" alt="The Westin Excelsior Rome Hotel Iznutra 2">
        </div>
        <div class="carousel-item">
            <img src="../img/TheWestinExcelsiorRomeHotelSoba.jpg" class="d-block w-100" alt="The Westin Excelsior Rome Hotel Soba">
        </div>
        <div class="carousel-item">
            <img src="../img/TheWestinExcelsiorRomeHotelSoba2.jpg" class="d-block w-100" alt="The Westin Excelsior Rome Hotel Soba2">
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

    <div class="container">

        <% Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;

            try {
                connection = ConnectionDataBase.connectToDataBase();
                String query = "SELECT * FROM hoteli WHERE ID = ?";
                preparedStatement = connection.prepareStatement(query);
                preparedStatement.setInt(1, 6); // Change the value 1 with the appropriate ID
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
        <form action="" method="POST" class="AtlantisParadiseForm">
            <label class="AtlantisParadiseLabel">How many rooms do you want to add?</label>
            <input class="AtlantisParadiseInput" type="text" name="numberOfRooms">
            <button type="submit" class="AtlantisParadiseButton">Add rooms!</button>
        </form>
        <form action="" method="POST" class="AtlantisParadiseForm">
            <label class="AtlantisParadiseLabel">How many rooms do you want to remove?</label>
            <input class="AtlantisParadiseInput" type="text" name="RemoveNumberOfRooms">
            <button type="submit" class="AtlantisParadiseButton">Remove rooms!</button>
        </form>
        <form action="" method="POST" class="AtlantisParadiseForm">
            <label class="AtlantisParadiseLabel" >What type of room do you want do add?(1st slot)</label>
            <input class="AtlantisParadiseInput" type="text" name="AddTypeOfRoom">
            <button type="submit" class="AtlantisParadiseButton">Add new type of the room</button>
        </form>
        <form action="" method="POST" class="AtlantisParadiseForm">
            <label class="AtlantisParadiseLabel" >What type of room do you want do add?(2nd slot)</label>
            <input class="AtlantisParadiseInput" type="text" name="AddTypeOfRoom2">
            <button type="submit" class="AtlantisParadiseButton">Add new type of the room</button>
        </form>
        <form action="" method="POST" class="AtlantisParadiseForm">
            <label class="AtlantisParadiseLabel">Hotel Text</label>
            <textarea class="AtlantisParadiseInput" name="hotelText" rows="4" cols="50"></textarea>
            <button type="submit" class="AtlantisParadiseButton">Update Hotel Text</button>
        </form>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
