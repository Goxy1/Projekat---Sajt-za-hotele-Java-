package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import DB.ConnectionDataBase;


import java.io.IOException;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "MakeReservationUser", value = "/MakeReservationUserServlet")
public class MakeReservationUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String surname = request.getParameter("surname");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String email = request.getParameter("email");
        String checkInDate = request.getParameter("checkInDate");
        String checkOutDate = request.getParameter("checkOutDate");
        String typeOfRoom = request.getParameter("typeOfRoom");
        String hotelName = request.getParameter("hotelName");

        boolean success = saveReservation(firstName, surname, dateOfBirth, email, checkInDate, checkOutDate, typeOfRoom, hotelName);

        if (success) {

            response.sendRedirect("../UserPages/SuccessReservation.jsp");
       }
    }
    private boolean saveReservation(String firstName, String surname, String dateOfBirth, String email, String checkInDate, String checkOutDate, String typeOfRoom, String hotelName) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Uspostavljanje konekcije sa bazom
            conn = ConnectionDataBase.connectToDataBase();

            // SQL upit za upisivanje podataka u tabelu
            String sql = "INSERT INTO rezervacije (FirstName, Surname, DateOfBirth, Email, CheckInDate, CheckOutDate, TypeOfRoom, HotelName) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, firstName);
            stmt.setString(2, surname);
            stmt.setString(3, dateOfBirth);
            stmt.setString(4, email);
            stmt.setString(5, checkInDate);
            stmt.setString(6, checkOutDate);
            stmt.setString(7, typeOfRoom);
            stmt.setString(8,hotelName);

            // Izvršavanje upita
            int rowsAffected = stmt.executeUpdate();

            // Provera da li je upisivanje uspelo
            if (rowsAffected > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Zatvaranje resursa
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return success;
    }
}
