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

@WebServlet(name = "LoginAdministratorServlet", value = "/LoginAdministratorServlet")
public class LoginAdministratorServlet extends HttpServlet {

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

        String query = "select * from admin where emailAdmin = ? and passwordAdmin = ?";
        try{
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, emailAddressField);
            statement.setString(2, passwordField);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
                String adminID = resultSet.getString("ID");
                request.getSession().setAttribute("LoggedinAdmin", adminID);

                // Set the cookie
                Cookie cookie = new Cookie("loggedInAdmin", adminID);
                response.addCookie(cookie);

                errorLogin = false;
                response.sendRedirect("../AdminPages/AdminPage.jsp");
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if(errorLogin)
        {
            request.setAttribute("errorLogin", true);
            request.getRequestDispatcher("LogInAdminPage.jsp").forward(request,response);
        }
    }
}