<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/3/2023
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Titanic Mardan Palace Turkey Hotel</title>
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
      <img src="../img/TitanicMardanPalaceSpolja.jpg" class="d-block w-100" alt="Titanic Mardan Palace Spolja">
    </div>
    <div class="carousel-item">
      <img src="../img/TitanicMardanPalaceSpolja2.jpg" class="d-block w-100" alt="Titanic Mardan Palace Spolja2">
    </div>
    <div class="carousel-item">
      <img src="../img/TitanicMardanPalaceIznutra.jpg" class="d-block w-100" alt="Titanic Mardan Palace Iznutra">
    </div>
    <div class="carousel-item">
      <img src="../img/TitanicMardanPalaceIznutra2.jpg" class="d-block w-100" alt="Titanic Mardan Palace Iznutra 2">
    </div>
    <div class="carousel-item">
      <img src="../img/TitanicMardanPalaceSoba.jpg" class="d-block w-100" alt="Titanic Mardan Palace Soba">
    </div>
    <div class="carousel-item">
      <img src="../img/TitanicMardanPalaceSoba2.jpg" class="d-block w-100" alt="Titanic Mardan Palace Soba2">
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
  <h2 class="h2">Titanic Mardan Palace Turkey Hotel</h2>
  <p>This resort boasts one of the largest outdoor pools in Europe and 8 à la carte restaurants. Titanic Mardan Palace offers a private beach area and rooms equipped with luxury amenities.<br><br>

    Each room has a balcony with views of Taurus Mountains, Mediterranean Sea or swimming pool. All rooms feature remote controlled air conditioning and lighting.<br><br>

    Separate restaurants are dedicated to international cuisines. The main restaurant serves each meal. The rooftop bar offers views of the resort and the sea.<br><br>

    The luxury spa offers therapies, a state-of-art fitness centre and a meditation room overlooking the indoor pool. The beauty therapy centre provides facial and body care.<br><br>

    The centre of Antalya is just 15 km away and can be reached in just 20 minutes by car. EXPO 2016 Antalya is 17 km from Titanic Mardan Palace.<br><br>

    Couples particularly like the location — they rated it 8.9 for a two-person trip.<br><br>

    The price of the 1 night is 1000EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.</p>

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
