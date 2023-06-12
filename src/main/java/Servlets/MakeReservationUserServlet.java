package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import DB.ConnectionDataBase;


import java.io.IOException;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
        String email = getEmailFromCookie(request);
        String checkInDate = request.getParameter("checkInDate");
        String checkOutDate = request.getParameter("checkOutDate");
        String typeOfRoom = request.getParameter("typeOfRoom");
        String hotelName = request.getParameter("hotelName");

        boolean success = saveReservation(firstName, surname, dateOfBirth,email, checkInDate, checkOutDate, typeOfRoom, hotelName);

        if (success) {
            int userPoints = getUserPoints(email);
            if (userPoints >= 50) {
                updatePoints(email, userPoints - 50);
                response.sendRedirect("../UserPages/SuccessReservationDiscount.jsp");
            }else{
                updatePoints(email, userPoints + 10);
                response.sendRedirect("../UserPages/SuccessReservation.jsp");
            }
       }
    }
    private boolean saveReservation(String firstName, String surname, String dateOfBirth, String email, String checkInDate, String checkOutDate, String typeOfRoom, String hotelName) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Setting the connection with DataBase
            conn = ConnectionDataBase.connectToDataBase();

                // SQL query for inserting data into the table
                String sql = "INSERT INTO rezervacije (FirstName, Surname, DateOfBirth, Email, CheckInDate, CheckOutDate, TypeOfRoom, HotelName) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, firstName);
                stmt.setString(2, surname);
                stmt.setString(3, dateOfBirth);
                stmt.setString(4, email);
                stmt.setString(5, checkInDate);
                stmt.setString(6, checkOutDate);
                stmt.setString(7, typeOfRoom);
                stmt.setString(8, hotelName);

                // query execution
                int rowsAffected = stmt.executeUpdate();

                // Checking if the write was successful
                if (rowsAffected > 0) {
                    success = true;
                }
        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            // Closing resource
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

    private int getUserPoints(String email) {
        int points = 0;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Setting the connection with DataBase
            conn = ConnectionDataBase.connectToDataBase();

            // SQL query for retrieving user's points
            String sql = "SELECT Poeni FROM korisnik WHERE emailAddressUser = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);

            // query execution
            rs = stmt.executeQuery();

            // Retrieve user's points
            if (rs.next()) {
                points = rs.getInt("Poeni");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Closing resource
            try {
                if (rs != null) {
                    rs.close();
                }
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

        return points;
    }

    private String getEmailFromCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("emailCookie")) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

    private void updatePoints(String email,int newPoints) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Setting the connection with DataBase
            conn = ConnectionDataBase.connectToDataBase();

            // SQL query for updating points
            String sql = "UPDATE korisnik SET Poeni = ? WHERE emailAddressUser = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, newPoints);
            stmt.setString(2, email);

            // query execution
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Closing resource
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
    }
}
