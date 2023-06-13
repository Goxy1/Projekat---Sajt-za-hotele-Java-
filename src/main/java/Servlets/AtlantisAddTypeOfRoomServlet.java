package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "AtlantisAddTypeOfRoomServlet", value = "/AtlantisAddTypeOfRoomServlet")
public class AtlantisAddTypeOfRoomServlet extends HttpServlet {

    Connection connection = ConnectionDataBase.connectToDataBase();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeOfRoom = request.getParameter("AddTypeOfRoom2");

        try{
            insertTypeOfRoomIntoDatabase(typeOfRoom);
            response.sendRedirect("../ManagerPages/AddTypeOfRoomSuccess.jsp");
        }catch(SQLException e)
        {
            request.setAttribute("errorMessage","error updating database");
            request.getRequestDispatcher("../ManagerPages/ErrorUpdatingDatabase.jsp").forward(request,response);
        }
    }
//    the functionality is called "try-with-resources" and is used for resources that implement the AutoCloseable or Closeable interfaces.
    private void insertTypeOfRoomIntoDatabase(String typeOfRoom) throws SQLException {
        String insertQuery = "UPDATE hoteli SET TypeOfRoom2 = ? WHERE ID = 1";
        try (PreparedStatement insertStatement = connection.prepareStatement(insertQuery)) {
            insertStatement.setString(1, typeOfRoom);
            insertStatement.executeUpdate();
        }
    }
}