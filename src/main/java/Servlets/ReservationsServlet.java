package Servlets;

import DB.ConnectionDataBase;
import DB.Reservation;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.lang.System.out;

@WebServlet(name = "ReservationsServlet", value = "/ReservationsServlet")
public class ReservationsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // Get the email from the cookie
        String email = getEmailFromCookie(request);

        if (email != null) {
            // Get reservations from the database
            List<Reservation> reservations = getReservations(email);
            request.setAttribute("reservations", reservations);

            // Setting value emaila as cookie
            Cookie emailCookie = new Cookie("emailCookie", email);
            emailCookie.setMaxAge(86400); // Setting time for a cookie-a 24h (86400 sec)
            response.addCookie(emailCookie);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/UserPages/ShowUserReservations.jsp");
            dispatcher.forward(request, response);
        } else {
            // If email is not found in the cookie, redirect to login page or handle the scenario as per your requirement
            response.sendRedirect("index.jsp");
        }
    }

    private String getEmailFromCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("UserEmail")) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

    private List<Reservation> getReservations(String email) {
        List<Reservation> reservations = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // Connect to the database
            connection = ConnectionDataBase.connectToDataBase();

            // Prepare SQL query
            String sql = "SELECT * FROM rezervacije WHERE email = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, email);

            // Execute query and get the result
            resultSet = statement.executeQuery();

            // Iterate through the results and create Reservation objects
            while (resultSet.next()) {
                String reservationId = resultSet.getString("ID");
                String firstName = resultSet.getString("FirstName");
                String surname = resultSet.getString("Surname");
                String dateOfBirth = resultSet.getString("DateOfBirth");
                String emailBase = resultSet.getString("Email");
                String checkInDate = resultSet.getString("CheckInDate");
                String checkOutDate = resultSet.getString("CheckOutDate");
                String typeOfRoom = resultSet.getString("TypeOfRoom");
                String hotelName = resultSet.getString("HotelName");

                Reservation reservation = new Reservation(reservationId, firstName, surname, dateOfBirth, emailBase, checkInDate, checkOutDate, typeOfRoom, hotelName);
                reservations.add(reservation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the resources
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

        return reservations;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
