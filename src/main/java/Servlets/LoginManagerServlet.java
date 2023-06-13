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

@WebServlet(name = "LoginManagerServlet", value = "/LoginManagerServlet")
public class LoginManagerServlet extends HttpServlet {

    Connection connection = ConnectionDataBase.connectToDataBase();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String emailAddressField = request.getParameter("emailAddress");
        String passwordField = request.getParameter("password");

        boolean errorLogin = true;
        HttpSession session = request.getSession();

        String query = "select * from menadzer where emailManager = ? and passwordManager = ?";

        try{
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, emailAddressField);
            statement.setString(2, passwordField);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
                String managerID = resultSet.getString("ID");
                request.getSession().setAttribute("LoggedinManager", managerID);

                String emailManager = resultSet.getString("emailManager");
                request.getSession().setAttribute("managerEmail",emailManager);

                // Set the cookie
                Cookie cookie = new Cookie("loggedInManager", managerID);
                response.addCookie(cookie);

                Cookie cookieEmail = new Cookie("managerEmail", emailManager);
                response.addCookie(cookieEmail);

                errorLogin = false;
                response.sendRedirect("../ManagerPages/AtlantisParadiseBahamasHotelManagerPage.jsp");
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if(errorLogin)
        {
            request.setAttribute("errorLogin", true);
            request.getRequestDispatcher("LogInManagerPage.jsp").forward(request,response);
        }
    }
}