package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "AtlantisAddNumberOfRoomsServlet", value = "/AtlantisAddNumberOfRoomsServlet")
public class AtlantisAddNumberOfRoomsServlet extends HttpServlet {
    Connection connection = ConnectionDataBase.connectToDataBase();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String numberOfRooms = request.getParameter("numberOfRooms");

        int currentNumberOfRooms = 0;
        try {
            currentNumberOfRooms = getCurrentNumberOfRoomsFromDatabase();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try{
            int additionalRooms = Integer.parseInt(numberOfRooms);
            if(additionalRooms <= 0){
                throw new IllegalArgumentException("Invalid number of rooms");
            }
            int totalRooms = currentNumberOfRooms + additionalRooms;

            updateNumberOfRoomsInDatabase(totalRooms);

            response.sendRedirect("../ManagerPages/AddNumberOfRoomsSuccess.jsp");
        }catch(NumberFormatException e)
        {
            request.setAttribute("errorMessage","Invalid number of rooms");
            request.getRequestDispatcher("../ManagerPages/InvalidNumberOfRoomsError.jsp").forward(request,response);
        }catch (SQLException e)
        {
            request.setAttribute("errorMessage","Error updating database");
            request.getRequestDispatcher("../ManagerPages/ErrorUpdatingDatabse.jsp").forward(request,response);
        }
    }

    private int getCurrentNumberOfRoomsFromDatabase() throws SQLException {
        String query = "SELECT Rooms FROM hoteli WHERE ID = 1";
        try (PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return resultSet.getInt("Rooms");
            } else {
                throw new SQLException("Failed to retrieve current number of rooms");
            }
        }
    }

    private void updateNumberOfRoomsInDatabase(int totalRooms) throws SQLException {
        String updateQuery = "UPDATE hoteli SET Rooms = ? WHERE ID = 1";
        try (PreparedStatement updateStatement = connection.prepareStatement(updateQuery)) {
            updateStatement.setInt(1, totalRooms);
            updateStatement.executeUpdate();
        }
    }
}