<%@ page import="java.sql.Connection" %>
<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/15/2023
  Time: 1:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show users</title>
  <link href="../css/TableWithReservations.css" rel="stylesheet">
  <link href="../css/InputIDForAtlantaHotelReservation.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>
<div class="container">
<%
  Connection connection = null;
  try {
    connection = ConnectionDataBase.connectToDataBase();

    String query = "SELECT * FROM korisnik";

    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(query);

%>
<table>
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email Address</th>
    <th>Country</th>
    <th>Address</th>
    <th>Creation Date</th>
    <th>Poeni</th>
  </tr>

  <% while (resultSet.next()) { %>
  <tr>
    <td><%= resultSet.getInt("ID") %></td>
    <td><%= resultSet.getString("FirstNameUser") %></td>
    <td><%= resultSet.getString("LastNameUser") %></td>
    <td><%= resultSet.getString("emailAddressUser") %></td>
    <td><%= resultSet.getString("CountryUser") %></td>
    <td><%= resultSet.getString("AddressUser") %></td>
    <td><%= resultSet.getString("CreationDate") %></td>
    <td><%= resultSet.getInt("Poeni") %></td>
  </tr>
  <% } %>

</table>

<%
    resultSet.close();
    statement.close();
  } catch (Exception e) {
    e.printStackTrace();
  } finally {
    if (connection != null) {
      try {
        connection.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }
%>
  <br>
  <form action="../AdminPages/UpdateUser.jsp" method="POST">
    <label>Which user do you want to edit?Enter their ID:</label><br><br>
    <input type="text" name="IDUser" required><br><br>
    <input type="submit" value="Submit"><br>
  </form>
  <br><br>
  <form action="../DeleteUserServlet" method="POST">
    <label>Which user do you want to delete?Enter their ID:</label>
    <input type="text" name="userID" required><br><br>
    <input type="submit" value="Submit"><br>
  </form>
</div>
</body>
</html>
