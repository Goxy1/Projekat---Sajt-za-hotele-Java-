<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/3/2023
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Burj Al Arab Jumeirah</title>
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
      <img src="../img/BurjAlArabSpolja2.jpg" class="d-block w-100" alt="BurjAlArabSpolja2">
    </div>
    <div class="carousel-item">
      <img src="../img/BurjAlArabSpolja.jpg" class="d-block w-100" alt="Burj Al Arab Spolja">
    </div>
    <div class="carousel-item">
      <img src="../img/BurjAlArabIznutra.jpg" class="d-block w-100" alt="Burj Al Arab Iznutra">
    </div>
    <div class="carousel-item">
      <img src="../img/BurjAlArabIznutra2.jpg" class="d-block w-100" alt="Burj Al Arab Iznutra 2">
    </div>
    <div class="carousel-item">
      <img src="../img/BurjAlArabDeluxeMarinaSoba.jpg" class="d-block w-100" alt="Burj Al Arab Deluxe Marina Soba">
    </div>
    <div class="carousel-item">
      <img src="../img/BurjAlArabPanoramicSuiteSoba.jpg" class="d-block w-100" alt="Burj Al Arab Panoramic Suite Soba">
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
  <h2 class="h2">Burj Al Arab Jumeirah Hotel</h2>
  <p>Situated on its own island, Burj Al Arab Jumeirah features suites overlooking the sea, 8 signature restaurants and a full-service spa. Guests may arrive at the property by chauffeur-driven fleets of Rolls-Royce's or alternatively by a dedicated helicopter transfer service. The terrace offers two swimming pools, 32 luxury cabanas, a restaurant and a bar.<br><br>

    Featuring floor to ceiling windows with panoramic view of the Arabian Gulf, each suite includes a reactor speaker, complimentary Wi-Fi, and widescreen interactive HD TV. Wireless charger and media hub is also available.<br><br>

    The Sky View Bar is suspended 200 metres above sea level where guests can enjoy afternoon tea and cocktails. Al Muntaha is the Burj Al Arab's signature fine dining restaurant serving contemporary European cuisine.<br><br>

    Talise Spa has both ladies and gentlemen’s relaxation areas feature an aqua retreat. Facilities include separate indoor infinity pools, hot tub and treatment rooms overlooking the Arabian Gulf complement the spa, along with saunas, steam rooms and plunge pools.<br><br>

    It features cabanas, sun loungers, along with views of Burj Al Arab Jumeirah and the Arabian Gulf. The Summersalt Beach Club is exclusive to Jumeirah Al Naseem and Burj Al Arab Jumeirah suite guests. All guests will get access to the Jumeirah Beach Hotel private beach.<br><br>

    Burj Al Arab Jumeirah offers unlimited access to the water sports activities at Wild Wadi Waterpark™, located just a 5-minute walk across the island bridge. Souk Madinat Jumeirah is a 15-minute walk away.<br><br>

    Couples particularly like the location — they rated it 9.5 for a two-person trip.<br><br>

    The price of the 1 night is 1400EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.</p>
    With our loyalty discount the price of the 1 night is 1300EURO!!!
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
