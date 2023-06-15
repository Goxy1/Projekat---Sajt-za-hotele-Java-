package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UpdateUserServlet", value = "/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Taking the parameters from request
        String userIDParam = request.getParameter("userID");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String address = request.getParameter("address");

        int userID = 0;
        if (userIDParam != null && !userIDParam.isEmpty()) {
            userID = Integer.parseInt(userIDParam);
        }

        // Updating users in database
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = ConnectionDataBase.connectToDataBase();
            String query = "UPDATE korisnik SET FirstNameUser = ?, LastNameUser = ?, emailAddressUser = ?, CountryUser = ?, AddressUser = ? WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, country);
            statement.setString(5, address);
            statement.setInt(6, userID);

            int rowsUpdated = statement.executeUpdate();

            if (rowsUpdated > 0) {
                // Successful update
                response.sendRedirect("../AdminPages/SuccessfullyUpdatedUser.jsp");
            } else {
                // Error occuried during the update
                response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp");
        } finally {
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
    }
}