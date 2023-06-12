<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/4/2023
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Palms Las Vegas Hotel</title>
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
      <img src="../img/PalmsCasinoHotelSpolja.jpg" class="d-block w-100" alt="Palms Casino Hotel Spolja">
    </div>
    <div class="carousel-item">
      <img src="../img/PalmsCasinoHotelSpolja2.jpg" class="d-block w-100" alt="Palms Casino Hote Spolja">
    </div>
    <div class="carousel-item">
      <img src="../img/PalmsCasinoHotelIznutra.jpg" class="d-block w-100" alt="Palms Casino Hotel Iznutra">
    </div>
    <div class="carousel-item">
      <img src="../img/PalmsCasinoHotelIznutra2.jpg" class="d-block w-100" alt="Palms Casino Hotel Iznutra 2">
    </div>
    <div class="carousel-item">
      <img src="../img/PalmsCasinoHotelSoba1.jpg" class="d-block w-100" alt="Palms Casino Hotel Soba 1">
    </div>
    <div class="carousel-item">
      <img src="../img/PalmsCasinoHotelSoba2.jpg" class="d-block w-100" alt="Palms Casino Hotel Soba 2">
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
  <h2 class="h2">The Palms Las Vegas Hotel Page</h2>
  <br>Located 2 km from The Strip, this boutique Las Vegas resort features a one-of-a-kind art program interwoven throughout the property with works by globally famous artists. Guests can visit the 24-hour casino or dine at a variety of on-site restaurants.<br><br>

    Featuring stylish décor, the contemporary guest rooms Palms Casino Resort have a variety of chic amenities. Rooms include flat-screen TVs, fully stocked minibars and more.<br><br>

    Serving dinner, premier steakhouse Scotch 80 Prime features A5 Wagyu beef imported from Kobe, Japan. Offering classic Las Vegas charm, this steakhouse has a dedicated Whisky Program with a focus on rare and vintage marks from top producers in Scotland. Located on the 55th floor in the Ivory Tower, Ghost Bar is an open-air boutique nightclub with panoramic views of Las Vegas. A.Y.C.E. Buffet offers a variety of cuisine for breakfast, lunch and dinner.<br><br>

    The gaming floor at Palms Casino Resort boasts more than 1,100 video poker and slot machines. The VIP Lounge includes a fine art collection.<br><br>

    Guests can relax and rejuvenate at Drift Spa which offers over 20 treatment rooms and an extensive list of services.<br><br>

    The on-site Pearl Concert Theater, a 2500 seat entertainment venue, hosts concerts and events by major international artists and performers.<br><br>

    The Mob Museum is 13 minutes’ drive away from Palms Casino Resort.  McCarran International Airport is 8 km away.<br><br>

    Couples particularly like the location — they rated it 8.1 for a two-person trip.<br><br>

    The price of the 1 night is 300EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.</p>
    With our loyalty discount the price of the 1 night is 200EURO!!!
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
