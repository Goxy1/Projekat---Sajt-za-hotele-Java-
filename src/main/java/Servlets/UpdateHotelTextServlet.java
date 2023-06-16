package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "UpdateHotelTextServlet", value = "/UpdateHotelTextServlet")
public class UpdateHotelTextServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String updatedText = request.getParameter("hotelText");

        try{
            Connection connection = ConnectionDataBase.connectToDataBase();
            String updateQuery = "UPDATE hoteli SET hotelText = ? WHERE ID = ?";
            PreparedStatement updateStatemenet = connection.prepareStatement(updateQuery);
            updateStatemenet.setString(1,updatedText);
            updateStatemenet.setInt(2,1);//number 2 is second item in sql query is ID the first one is hotelText and the number 1 rempresents ID
            updateStatemenet.executeUpdate();
            updateStatemenet.close();
            connection.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }

        response.sendRedirect("../ManagerPages/SuccessChangedText.jsp");
    }
}