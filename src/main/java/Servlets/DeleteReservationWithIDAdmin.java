package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteReservationWithIDAdmin", value = "/DeleteReservationWithIDAdmin")
public class DeleteReservationWithIDAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Getting id from input type
        String reservationID = request.getParameter("IDreservation");

        // Connection with database
        Connection connection = null;

        try {
            connection = ConnectionDataBase.connectToDataBase();

            // Sql query that will delete reservation with their ID
            String query = "DELETE FROM rezervacije WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, reservationID);

            // Executing query
            int rowsAffected = statement.executeUpdate();
            statement.close();

            // Checking if the reservation is successfully deleted
            if (rowsAffected > 0) {
                // Redirection the the page with a message of success
                response.sendRedirect("../AdminPages/SuccessfullyDeletedReservation.jsp");
            } else {
                // Redirection the the page with a message of error
                response.sendRedirect("../ManagerPages/ErrorUpdatingDatabase.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Redirection the the page with a message of error
            response.sendRedirect("errorPage.jsp");
        } finally {
            // Closing resources
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