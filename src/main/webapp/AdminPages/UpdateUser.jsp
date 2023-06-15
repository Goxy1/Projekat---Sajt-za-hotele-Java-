<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="DB.ConnectionDataBase" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: urosg
  Date: 6/15/2023
  Time: 1:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update user!</title>
    <link href="../css/UpdateUser.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../HeaderAndFooter/AdminHeader.jsp"/>

<div class="container">

<%
    // Grabbing ID of user from previous page
    String userIDParam = request.getParameter("IDUser");
    int userID = 0;
    if (userIDParam != null && !userIDParam.isEmpty()) {
        userID = Integer.parseInt(userIDParam);
    }

    // Executing SQL query
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try {
        connection = ConnectionDataBase.connectToDataBase();
        String query = "SELECT * FROM korisnik WHERE ID = ?";
        statement = connection.prepareStatement(query);
        statement.setInt(1, userID);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String firstName = resultSet.getString("FirstNameUser");
            String lastName = resultSet.getString("LastNameUser");
            String email = resultSet.getString("emailAddressUser");
            String country = resultSet.getString("CountryUser");
            String address = resultSet.getString("AddressUser");
            String creationDate = resultSet.getString("CreationDate");
            int points = resultSet.getInt("Poeni");
%>
<form action="../UpdateUserServlet" method="POST">
    <table>
        <tr>
            <td>ID:</td>
            <td><%= userID %></td>
            <input type="hidden" name="userID" value="<%= userID %>">
        </tr>
        <tr>
            <td>First Name:</td>
            <td><input type="text" name="firstName" value="<%= firstName %>"></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><input type="text" name="lastName" value="<%= lastName %>"></td>
        </tr>
        <tr>
            <td>Email Address:</td>
            <td><input type="text" name="email" value="<%= email %>"></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" name="country" value="<%= country %>"></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><input type="text" name="address" value="<%= address %>"></td>
        </tr>
        <tr>
            <td>Creation Date:</td>
            <td><%= creationDate %></td>
        </tr>
        <tr>
            <td>Points:</td>
            <td><%= points %></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update"></td>
        </tr>
    </table>
</form>
<%
} else {
%>
<p>No user found with the specified ID.</p>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

</div>
</body>
</html>
