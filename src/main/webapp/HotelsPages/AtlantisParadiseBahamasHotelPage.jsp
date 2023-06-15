<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/2/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Atlantis Paradise</title>
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


  <div class="container">
    <h2 class="h2">Atlantis Paradise Bahamas Hotel</h2>
    <p>This iconic tower’s lobby features The Dig and Ruins Lagoon, a large open-air marine habitat. Located in the Atlantis Paradise Resort and Casino, it offers colorful rooms with a flat-screen TV.<br><br>

      A French balcony with views of the harbor, ocean, or gardens is included in every contemporary Royal Towers Atlantis room. An iPod docking station and minibar are provided. Room service and Wi-Fi are available 24 hours a day.<br><br>

      Paradise Island's Aquaventure Water Park boasts waterslides, 11 landscaped pools, and rock climbing. Dolphin swims at Dolphin Cay and comedy shows at Jokers Wild are also open to guests of Atlantis Royal Towers.<br><br>

      A total of 21 restaurants and 19 bars are part of the Atlantis Paradise Resort including the Nobu with Fine Japanese dining.<br><br>

      The 10,000-square-foot gym offers yoga and cardio classes. Six tennis courts are available, along with racquet rentals and tennis lessons.<br><br>

      Couples particularly like the location — they rated it 8.9 for a two-person trip.<br><br>


       The price of the 1 night is 800EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.</p>
       With our loyalty discount the price of the 1 night is 700EURO!!!
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

          <label class="AtlantisParadiseLabel">What type of room would you like?We offer single room and double rooms.</label>
          <input class="AtlantisParadiseInput" type="text" id="typeOfRoom" name="typeOfRoom" required>

          <label class="AtlantisParadiseLabel">Enter the name of the hotel to confirm that you are not a bot.</label>
          <input class="AtlantisParadiseInput" type="text" id="hotelName" name="hotelName" required>

          <button class="AtlantisParadiseButton" type="submit">Reserve!</button><br>
        </form>
  </div>

  <jsp:include page="../HeaderAndFooter/Footer.jsp"/>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
