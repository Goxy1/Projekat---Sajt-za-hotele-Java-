<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/4/2023
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The plaza New York Hotel</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
  <link href="../css/SliderForPictures.css" rel="stylesheet">
  <link href="../css/AtlantisParadiseBahamas.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/Userheader.jsp"/>

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
      <img src="../img/ThePlazNewYorkSpolja.jpg" class="d-block w-100" alt="The Plaza NewYork Spolja">
    </div>
    <div class="carousel-item">
      <img src="../img/ThePlazNewYorkSpolja2.jpg" class="d-block w-100" alt="The Plaza NewYork Spolja 2">
    </div>
    <div class="carousel-item">
      <img src="../img/ThePlazNewYorkUnutra.jpg" class="d-block w-100" alt="The Plaza NewYork Unutra">
    </div>
    <div class="carousel-item">
      <img src="../img/ThePlazNewYorkUnutra2.jpg" class="d-block w-100" alt="The Plaza NewYork Unutra 2">
    </div>
    <div class="carousel-item">
      <img src="../img/ThePlazNewYorkSoba.jpg" class="d-block w-100" alt="The Plaza NewYork Soba">
    </div>
    <div class="carousel-item">
      <img src="../img/ThePlazNewYorkSoba2.jpg" class="d-block w-100" alt="The Plaza NewYork Soba2">
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
  <h2 class="h2">The Plaza New York Hotel</h2>
  <p>Located next to Central Park and 5th Avenue, this internationally renowned Manhattan hotel is a step away from famous shops such as Bergdorf Goodman, Louis Vuitton, Chanel, and Saks Fifth Avenue.<br><br>

    The luxurious and spacious rooms at The Plaza offer the latest technology of in-room iPads and boast modern bathrooms with 24-karat gold platted fixtures and separate rain showers.<br><br>

    The Plaza Hotel offers world class restaurants and bars such as The Palm Court which is one of New York City's finest destinations for Afternoon Tea.<br><br>

    Amenities at The Plaza include the world-class Shops at The Plaza, featuring exclusive boutiques and health and wellness facilities including a Guerlain Spa, Warren-Tricomi Salon, and a gym by La Palestra.<br><br>

    This is our guests' favourite part of New York, according to independent reviews.<br><br>

    Couples particularly like the location — they rated it 9.7 for a two-person trip.<br><br>

    Hotel chain/brand:<br><br>
    Fairmont Hotels & Resorts<br><br>

    The price of the 1 night is 900EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.</p>
    With our loyalty discount the price of the 1 night is 800EURO!!!
</div>

<div class="container">

  <form class="AtlantisParadiseForm" action="../MakeReservationUserServlet" method="POST">
    <label class="AtlantisParadiseLabel">FirstName:</label>
    <input class="AtlantisParadiseInput" type="text" id="firstName" name="firstName" required>

    <label class="AtlantisParadiseLabel">Surname:</label>
    <input class="AtlantisParadiseInput" type="text" id="surname" name="surname" required>

    <label class="AtlantisParadiseLabel">Date of birth:</label>
    <input class="AtlantisParadiseInput" type="date" id="dateOfBirth" name="dateOfBirth" required>

    <label class="check-lbl">Check-in date</label>
    <input type="date"  name="checkInDate" class="form-control" placeholder="Check-in date" required>

    <label class="check-lbl">Check-out date</label>
    <input type="date"  class="form-control" name="checkOutDate" placeholder="Check-out date" required>

    <label class="AtlantisParadiseLabel">What type of room would you like?We offer single and double rooms.</label>
    <input class="AtlantisParadiseInput" type="text" id="typeOfRoom" name="typeOfRoom" required>

    <label class="AtlantisParadiseLabel">Enter the name of the hotel to confirm that you are not a bot.</label>
    <input class="AtlantisParadiseInput" type="text" id="hotelName" name="hotelName" required>

    <button class="AtlantisParadiseButton" type="submit">Reserve!</button>
  </form>
</div>

<jsp:include page="../HeaderAndFooter/Footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
