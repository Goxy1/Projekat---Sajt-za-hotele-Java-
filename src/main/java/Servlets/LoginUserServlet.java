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

@WebServlet(name = "LoginUserServlet", value = "/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {

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

            String query = "select * from korisnik where emailAddressUser = ? and passwordUser = password(?)";


        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, emailAddressField);
            statement.setString(2, passwordField);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String userID = resultSet.getString("ID");
                request.getSession().setAttribute("LoggedinUser", userID);

                String emailUser = resultSet.getString("emailAddressUser");
                request.getSession().setAttribute("userEmail",emailUser);

                // Set the cookie for userID
                Cookie cookie = new Cookie("loggedInUser", userID);
                response.addCookie(cookie);

                //Set the cookie for email
                Cookie cookieEmail = new Cookie("UserEmail", emailUser);
                response.addCookie(cookieEmail);

                errorLogin = false;
                response.sendRedirect("UserPages/ExploreHotelsUserPage.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if (errorLogin) {
            request.setAttribute("errorLogin", true);
            request.getRequestDispatcher("LogInUserPage.jsp").forward(request, response);
        }
    }
}