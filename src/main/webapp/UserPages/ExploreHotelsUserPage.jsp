<%@ page import="java.sql.Connection" %>
<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="DB.Hotel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
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
            <%
                Connection connection = null;
                connection = ConnectionDataBase.connectToDataBase(); // Pozivanje funkcije za uspostavljanje konekcije iz vaše klase
            %>

            <%
                String selectQuery = "SELECT * FROM hoteli"; // Promijenite ovo na odgovarajući upit za dohvat podataka iz baze

                try (Statement statement = connection.createStatement();
                     ResultSet resultSet = statement.executeQuery(selectQuery)) {
                    while (resultSet.next()) {
                        String imageUrl = resultSet.getString("putanjaSlike");
                        String hotelName = resultSet.getString("HotelName");
                        String hotelDescription = resultSet.getString("hotelDescription");
                        String hotelPage = resultSet.getString("buttonRedirectionUser");
            %>

            <div class="col-4 custom-col-3" style="margin-top: 3cm;">
                <div class="card custom-col-3" style="width: 18rem;">
                    <img src="<%= imageUrl %>" class="card-img-top" alt="<%= hotelName %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= hotelName %></h5>
                        <p class="card-text"><%= hotelDescription %></p>
                        <a href="<%= hotelPage%>" class="btn btn-primary">Explore this hotel!</a>
                    </div>
                </div>
            </div>

            <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            %>

            <%
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
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