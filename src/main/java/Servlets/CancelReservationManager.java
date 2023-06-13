package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "CancelReservationManager", value = "/CancelReservationManager")
public class CancelReservationManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reservationID = request.getParameter("reservationID");

        if(reservationID !=null && !reservationID.isEmpty())
        {
            try{
                int id = Integer.parseInt(reservationID);
                boolean success = cancelReservation(id);

                if(success){
                    response.sendRedirect("../ManagerPages/DeleteReservationSuccess.jsp");
                }else{
                    response.sendRedirect("../ManagerPages/ErrorUpdatingDatabase.jsp");
                }
            }catch(NumberFormatException e)
            {
                e.printStackTrace();
            }

        }else{
            response.sendRedirect("../ManagerPages/ErrorUpdatingDatabase.jsp");
        }
    }

    private boolean cancelReservation(int reservationID)
    {
        boolean success = false;
        //Implementation
        try {
            Connection connection = ConnectionDataBase.connectToDataBase();
            PreparedStatement statement = null;

            String query = "DELETE FROM rezervacije WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, reservationID);

            int rowsAffected = statement.executeUpdate();
            success = rowsAffected > 0;

            // Zatvaranje resursa
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Return true if the reservation was successfully deleted, false if the reservation was not found or was not successfully deleted
        return success;
    }

}