package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "AddHotelServlet", value = "/AddHotelServlet")
public class AddHotelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hotelName = request.getParameter("hotelName");
        String hotelLocation = request.getParameter("hotelLocation");
        String numberOfRooms = request.getParameter("numberOfRooms");
        String typeOfRoom1 = request.getParameter("typeOfRoom1");
        String typeOfRoom2 = request.getParameter("typeOfRoom2");
        String pathOfPicture = request.getParameter("pathPicture");
        String hotelDescription = request.getParameter("hotelDescription");
        String hotelText = request.getParameter("hotelText");

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = ConnectionDataBase.connectToDataBase();
            String query = "INSERT INTO hoteli (HotelName, HotelLocation, Rooms, TypeOfRoom, TypeOfRoom2,putanjaSlike, hotelDescription, hotelText) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, hotelName);
            preparedStatement.setString(2, hotelLocation);
            preparedStatement.setString(3, numberOfRooms);
            preparedStatement.setString(4, typeOfRoom1);
            preparedStatement.setString(5, typeOfRoom2);
            preparedStatement.setString(6,pathOfPicture);
            preparedStatement.setString(7, hotelDescription);
            preparedStatement.setString(8, hotelText);
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("../AdminPages/SuccessAddHotel.jsp");
            } else {
                response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp?error="+e.getMessage());
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}