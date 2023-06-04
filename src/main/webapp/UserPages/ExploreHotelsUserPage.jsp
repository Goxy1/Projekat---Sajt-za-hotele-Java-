<%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 5/30/2023
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
  Za rezervaciju treba napraviti input polje gde se pise email pa se sa emailom hvataju sve
  rezervacije koje su pod tim mejlom.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Explore our hotels!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <!--link za bootstrap 5.0-->
    <link href="../css/index.css" rel="stylesheet">

    <%
        Cookie[] cookies = request.getCookies();
        String loggedInUser = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("loggedInUser")) {
                    loggedInUser = cookie.getValue();
                    break;
                }
            }
        }

    %>

</head>

<body>
    <% if (loggedInUser != null) { %>

   <jsp:include page="../HeaderAndFooter/Userheader.jsp"/>

    <div class="container">
        <div class="row">
            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/AtlantisParadiseBahamasHotel.jpeg" class="card-img-top" alt="AtlantisParadiseBahamasHotel">
                    <div class="card-body">
                        <h5 class="card-title">Atlantis Paradise Bahamas Hotel</h5>
                        <p class="card-text">This iconic tower’s lobby features The Dig and Ruins Lagoon.</p>
                        <a href="../HotelsPages/AtlantisParadiseBahamasHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/BurjAlArabJumeirahHotel.jpg" class="card-img-top" alt="BurjAlArabJumeirahHotel">
                    <div class="card-body">
                        <h5 class="card-title">Burj Al Arab Jumeirah Hotel</h5>
                        <p class="card-text">Situated on its own island, Burj Al Arab Jumeirah features suites overlooking the sea.</p>
                        <a href="../HotelsPages/BurjAlArabJumeirahHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/EmiratesPalaceAbuDhabiHotel.jpg" class="card-img-top" alt="EmiratesPalaceMandarinOrientaAbuDhabiHotel">
                    <div class="card-body">
                        <h5 class="card-title">Emirates Palace Mandarin Orienta Abu Dhabi Hotel</h5>
                        <p class="card-text">Located on the shores of the Arabian Gulf.</p>
                        <a href="../HotelsPages/EmiratesPalaceMandarinOrientaAbuDhabiHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/MardanPalaceTurkeyHotel.jpg" class="card-img-top" alt="MardanPalaceTurkeyHotel">
                    <div class="card-body">
                        <h5 class="card-title">Titanic Mardan Palace Turkey Hotel</h5>
                        <p class="card-text">Located on a private beach, Titanic Mardan Palace - All Inclusive is in Lara.</p>
                        <a href="../HotelsPages/TitanicMardanPalaceTurkeyHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/ThePalmsLasVegasHotel.jpg" class="card-img-top" alt="ThePalmsLasVegasHotel">
                    <div class="card-body">
                        <h5 class="card-title">The Palms Las Vegas Hotel</h5>
                        <p class="card-text">Palms Place puts you just a 5-minute drive from The Linq and The Cosmopolitan Casino.</p>
                        <a href="../HotelsPages/ThePalmsLasVegasHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/ThePlazaNewYorkHotell.jpg" class="card-img-top" alt="ThePlazaNewYorkHotel">
                    <div class="card-body">
                        <h5 class="card-title">The Plaza New York Hotel</h5>
                        <p class="card-text">The Plaza Hotel is located in Manhattan, a neighborhood in New York.Services are all-inclusive.</p>
                        <a href="../HotelsPages/ThePlazaNewYorkHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-4 custom-col-3" style="margin-top: 2cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/WestinExcelsiorRomeHotel.jpg" class="card-img-top" alt="WestinExcelsiorRomeHotel">
                    <div class="card-body">
                        <h5 class="card-title">Westin Excelsior Rome Hotel</h5>
                        <p class="card-text">The Westin Excelsior, Rome is in fashionable Via Veneto.</p>
                        <a href="../HotelsPages/WestinExcelsiorRomeHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
            <div class="col-4 custom-col-3" style="margin-top: 2cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/JadeMountainResortStLucia.jpg" class="card-img-top" alt="JadeMountainResortStLucia">
                    <div class="card-body">
                        <h5 class="card-title">Jade Mountain Resort St Lucia Hotel</h5>
                        <p class="card-text">At Jade Mountain Resort, you'll have a lot of fun.</p>
                        <a href="../HotelsPages/JadeMountainResortStLuciaHotelPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
            <div class="col-4 custom-col-3" style="margin-top: 2cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="../img/TheRoyalPenthouseHotelPresidentWilson.jpg" class="card-img-top" alt="TheRoyalPenthouse–HotelPresidentWilson–">
                    <div class="card-body">
                        <h5 class="card-title">Hotel President Wilson,a Luxury Collection Hotel</h5>
                        <p class="card-text">This elegant 5-star hotel is located on Geneva’s waterfront promenade.</p>
                        <a href="../HotelsPages/TheRoyalPenthouseHotelPresidentWilsonPage.jsp" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../HeaderAndFooter/Footer.jsp"%>

    <% } %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script><!--Bootstrap java script-->
</body>
</html>

<style>
    .custom-col-3{
        width: 287.99px;
        height: 430.73px;
        margin: 0 0.5cm;
    }
</style>