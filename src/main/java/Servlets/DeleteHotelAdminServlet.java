package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteHotelAdminServlet", value = "/DeleteHotelAdminServlet")
public class DeleteHotelAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hotelId = request.getParameter("hotelId");
        deleteHotel(hotelId);
        response.sendRedirect("../AdminPages/SuccessfullyDeletedAHotelPage.jsp");
    }

    private void deleteHotel(String hotelId)
    {
        Connection connection = null;
        PreparedStatement statement = null;
        try{
            connection = ConnectionDataBase.connectToDataBase();
            String deleteQuery = "DELETE FROM hoteli WHERE ID = ?";
            statement = connection.prepareStatement(deleteQuery);
            statement.setString(1, hotelId);
            statement.executeUpdate();
        }catch (SQLException e)
        {
            e.printStackTrace();
        }finally{
            if(statement != null){
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