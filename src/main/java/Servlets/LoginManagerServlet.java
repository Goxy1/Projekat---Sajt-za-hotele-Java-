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
        response.sendRedirect("ManagerPage.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String emailAddressField = request.getParameter("emailAddress");
        String passwordField = request.getParameter("password");

        boolean errorLogin = false;

        String query = "select ID from menadzer where emailManager = ? and passwordManager = password(?)";

        try{
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, emailAddressField);
            statement.setString(2, passwordField);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next())
            {
                String managerID = resultSet.getString("ID");
                request.getSession().setAttribute("LoggedinManager",managerID);

                query = "select * from manager where id = ?";
                PreparedStatement statement1 = connection.prepareStatement(query);
                statement1.setString(1,managerID);

                ResultSet resultManager = statement1.executeQuery();

                if(resultManager.next())
                {
                    response.sendRedirect("ManagerPage.jsp");
                }
            }
            else {
                errorLogin = true;
                request.setAttribute("errorLogin",errorLogin);
                request.setAttribute("enteredEmail", emailAddressField);
                request.setAttribute("enteredPassword", passwordField);
                RequestDispatcher rd = request.getRequestDispatcher("LogInManagerPage.jsp");
                rd.forward(request, response);
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}