package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "UpdateTypeOfRoom2AdminServlet", value = "/UpdateTypeOfRoom2AdminServlet")
public class UpdateTypeOfRoom2AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hotelId = request.getParameter("hotelId");
        String roomType2 = request.getParameter("AddTypeOfRoom2");

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = ConnectionDataBase.connectToDataBase();
            String query = "UPDATE hoteli SET TypeOfRoom2 = ? WHERE ID = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, roomType2);
            preparedStatement.setString(2, hotelId);
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                response.sendRedirect("../AdminPages/SuccessAddTypeOfRoom2Slot.jsp");
            } else {
                response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp");
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