package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UpdateNumberRoomsAdminServlet", value = "/UpdateNumberRoomsAdminServlet")
public class UpdateNumberRoomsAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String numberOfRoomsString = request.getParameter("numberOfRooms");
        int numberOfRooms = Integer.parseInt(numberOfRoomsString);

        String hotelId = request.getParameter("hotelId");


        updateNumberOfRoomsInDatabase(hotelId, numberOfRooms);

        response.sendRedirect("../AdminPages/SuccessAddedNumberOfRooms.jsp");
    }
    private void updateNumberOfRoomsInDatabase(String hotelId, int numberOfRooms){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try{
            connection = ConnectionDataBase.connectToDataBase();
            String query = "UPDATE hoteli SET Rooms = Rooms + ? WHERE ID = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, numberOfRooms);
            preparedStatement.setInt(2, Integer.parseInt(hotelId));
            preparedStatement.executeUpdate();
        }catch (Exception e)
        {
            e.printStackTrace();
        }finally {
            // Zatvori resurse baze podataka u finally bloku
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