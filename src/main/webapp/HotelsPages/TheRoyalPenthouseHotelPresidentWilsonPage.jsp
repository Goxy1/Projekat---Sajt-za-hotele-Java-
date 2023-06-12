<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/4/2023
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Royal Penthouse – Hotel President Wilson</title>
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
            <img src="../img/PresidentWilsonGenevaHotelSpolja.jpg" class="d-block w-100" alt="President Wilson Geneva Hotel Spolja">
        </div>
        <div class="carousel-item">
            <img src="../img/PresidentWilsonGenevaHotelSpolja2.jpg" class="d-block w-100" alt="President Wilson Geneva Hotel Spolja 2">
        </div>
        <div class="carousel-item">
            <img src="../img/PresidentWilsonGenevaHotelIznutra.jpg" class="d-block w-100" alt="President Wilson Geneva Hotel Iznutra">
        </div>
        <div class="carousel-item">
            <img src="../img/PresidentWilsonGenevaHotelIznutra2.jpg" class="d-block w-100" alt="President Wilson Geneva Hotel Iznutra 2">
        </div>
        <div class="carousel-item">
            <img src="../img/PresidentWilsonGenevaHotelSoba.jpg" class="d-block w-100" alt="President Wilson Geneva Hotel Soba">
        </div>
        <div class="carousel-item">
            <img src="../img/PresidentWilsonGenevaHotelSoba2.jpg" class="d-block w-100" alt="President Wilson Geneva Hotel Soba 2">
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
    <h2 class="h2">The Royal Penthouse – Hotel President Wilson</h2>
    <p>This elegant 5-star hotel is located on Geneva’s waterfront promenade, offering spectacular views of Lake Geneva, Mont Blanc and the Alps. It features a luxurious spa and an outdoor pool.<br><br>

        All rooms at Hotel President Wilson are air-conditioned and feature state-of-the-art technology, Hermès bathroom amenities, and a flat-screen B&O TV. Free high-speed WiFi (up to 200 MB) is available throughout the Hotel.<br><br>

        Dining options include the seasonal Japanese restaurant Umami, run by the famous chef Michel Roth and open between June and September, the Bayview Restaurant by Michel Roth which was awarded its first Michelin star in 2014 and received 18 out of 20 points at the Gault-Millau guide in 2016, and the Lebanese restaurant Arabesque.<br><br>

        The President Wilson's 2 elegant bars include the Glow bar lounge and the So bar and during summer, you can also enjoy a cocktail at the Pool bar by the heated outdoor swimming pool (open from May to September).<br><br>

        Unique in Switzerland, the exclusive Spa La Mer offers La Mer high-quality treatments, including the popular "Crème". The spa also features a sauna, a hot tub, and a steam bath. A fitness centre equipped with Technogym products is open 24 hours a day and can be used free of charge.<br><br>

        A 5-minute walk away, a small boat is available free of charge to take guests to the shopping area and the Old Town.<br><br>

        Cornavin Train Station is a 5-minute drive from the President Wilson Hotel. A bus stop is right in front. Geneva’s public transport network can be used free of charge by guests. The international organisations and many banks and boutiques are only steps away.<br><br>

        This is our guests' favourite part of Geneva, according to independent reviews.<br><br>

        Couples particularly like the location — they rated it 9.1 for a two-person trip.<br><br>

        Hotel chain/brand:<br><br>
        Luxury Collection<br><br>


        The price of the 1 night is 850EURO - The price includes All inclusive, one of the best swimming pools in the world, a room with a beautiful view of the sea and all kinds of activities.</p>
        With our loyalty discount the price of the 1 night is 750EURO!!!
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
