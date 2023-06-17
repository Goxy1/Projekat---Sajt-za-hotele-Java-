package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteNumberRoomsAdminServlet", value = "/DeleteNumberRoomsAdminServlet")
public class DeleteNumberRoomsAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String numberOfRoomsString = request.getParameter("RemoveNumberOfRooms");
        int numberOfRooms = Integer.parseInt(numberOfRoomsString);

        String hotelId = request.getParameter("hotelId");

        removeNumberOfRoomsInDatabase(hotelId, numberOfRooms);

        response.sendRedirect("../AdminPages/SuccessRemoveNumberRooms.jsp");
    }

    private void removeNumberOfRoomsInDatabase(String hotelId, int numberOfRooms)
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = ConnectionDataBase.connectToDataBase();
            String query = "UPDATE hoteli SET Rooms = Rooms - ? WHERE ID = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, numberOfRooms);
            preparedStatement.setInt(2, Integer.parseInt(hotelId));
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}