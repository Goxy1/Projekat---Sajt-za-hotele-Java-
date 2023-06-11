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

@WebServlet(name = "CancelReservationServlet", value = "/CancelReservationServlet")
public class CancelReservationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reservationID = request.getParameter("ReservationID");

        if(reservationID != null && !reservationID.isEmpty())
        {
            if(deleteReservation(reservationID))
            {
                response.sendRedirect("/UserPages/UserReservations.jsp");
            }
            else
            {
                response.sendRedirect("/UserPages/UserReservations.jsp");
            }
        }
        else {
            response.sendRedirect("/UserPages/UserReservations.jsp");
        }
    }
    private boolean deleteReservation(String reservationID)
    {
        boolean deleted = false;
        Connection connection = null;
        PreparedStatement statement = null;
        try{
            connection = ConnectionDataBase.connectToDataBase();

            String query = "Delete from rezervacije where ID = ?";
            statement = connection.prepareStatement(query);
            statement.setString(1, reservationID);

            int rowsAffected = statement.executeUpdate();
            if(rowsAffected > 0)
            {
                deleted = true;
            }
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
        finally{
            if(statement != null)
            {
                try{
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
        return deleted;
    }
}