<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/3/2023
  Time: 8:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Emirates Palace Mandarin Orienta Abu Dhabi Hotel</title>
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
      <img src="../img/EmiratesPalaceMandarinOrientalAbuDhabiSpolja.jpg" class="d-block w-100" alt="Emirates Palace Mandarin Oriental Abu Dhabi Spolja">
    </div>
    <div class="carousel-item">
      <img src="../img/EmiratesPalaceMandarinOrientalAbuDhabiSpolja2.jpg" class="d-block w-100" alt="Emirates Palace Mandarin Oriental Abu Dhabi Spolja2">
    </div>
    <div class="carousel-item">
      <img src="../img/EmiratesPalaceMandarinOrientalAbuDhabiIznutra.jpg" class="d-block w-100" alt="Emirates Palace Mandarin Oriental Abu Dhabi Iznutra">
    </div>
    <div class="carousel-item">
      <img src="../img/EmiratesPalaceMandarinOrientalAbuDhabiIznutra2.jpg" class="d-block w-100" alt="Emirates Palace Mandarin Oriental Abu Dhabi Iznutra">
    </div>
    <div class="carousel-item">
      <img src="../img/EmiratesPalaceMandarinOrientalAbuDhabiSoba.jpg" class="d-block w-100" alt="Emirates Palace Mandarin Oriental Abu Dhabi Soba">
    </div>
    <div class="carousel-item">
      <img src="../img/EmiratesPalaceMandarinOrientalAbuDhabiSoba2.jpg" class="d-block w-100" alt="Emirates Palace Mandarin Oriental Abu Dhabi Soba2">
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
  <h2 class="h2">Emirates Palace Mandarin Orienta Abu Dhabi Hotel</h2>
  <p>Located on the shores of the Arabian Gulf, overlooking its own private natural bay, Emirates Palace Mandarin Oriental Abu Dhabi is situated on 1.3 km stretch of private beach. The silver, gold and glass mosaics décor is evocative of Arabia’s rich history of hospitality. This luxury accommodation, with the latest technology and 14 food and beverage outlets to choose from during your stay, offers guests the very best of new and old world charm.<br><br>

    All rooms and suites feature luxurious bedding, and well-appointed furnishings. All rooms have spacious marble bathrooms and come equipped with an iPad mini with integrated room controls, interactive HD TV, a choice of over 150 TV channels, complimentary movies, On Demand services and free high speed WiFi. Every room comes with 24-hour butler service.<br><br>

    The Pavillion features panoramic sea views and à la carte menus or buffets that serve a selection of Arabic mezze, Middle Eastern and international inspired dishes, as well as Emirati signature dishes from Mezlai.<br><br>

    Emirates Palace’s diverse range of the world’s finest cuisine in its 14 opulent restaurants offers meals to tempt every gastronome. Diners may experience exquisite seafood at Sayad served with a magnificent view of the Gulf. Diners may dine as the locals do at Mezlai or simply partake in an international smorgasbord at La Vendôme.<br><br>

    The hotel has 2 expansive swimming pools, and a spa that offers massages, and a full range of lavish body treatments. The Emirates Palace also has a fitness centre and a kids’ club so enjoyable small guests will beg their parents to stay.<br><br>

    Emirates Palace Mandarin Oriental Abu Dhabi is 25-minutes’ drive from Abu Dhabi International Airport and the Abu Dhabi National Exhibition Centre. The Palace is few minutes away from high end shopping malls, numerous restaurants and cultural institutions, and Marina Mall and Heritage Village are a mere seven minutes’ drive away.<br><br>

    Couples particularly like the location — they rated it 9.5 for a two-person trip.<br><br>

    The price of the 1 night is 450EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.<br><br></p>

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
