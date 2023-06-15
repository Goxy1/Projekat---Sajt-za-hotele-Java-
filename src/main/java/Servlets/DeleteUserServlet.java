package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteUserServlet", value = "/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Getting the entered ID from an user
        String userIDParam = request.getParameter("userID");
        int userID = Integer.parseInt(userIDParam);

        Connection connection = null;
        PreparedStatement statement = null;

        try{
            connection = ConnectionDataBase.connectToDataBase();
            String query = "DELETE FROM korisnik WHERE ID = ?";
            statement = connection.prepareStatement(query);
            statement.setInt(1, userID);
            statement.executeUpdate();

            // Redirecting to the succesfullyDeletedUser page
            response.sendRedirect("../AdminPages/SuccessfullyDeletedUser.jsp");
        }catch (SQLException e) {
            e.printStackTrace();
            // Redirecting to the ErrorUpdatingDatabase page
            response.sendRedirect("../AdminPages/ErrorUpdatingDatabase.jsp");
        } finally {
            if (statement != null) {
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