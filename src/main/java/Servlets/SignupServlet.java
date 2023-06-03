package Servlets;

import DB.ConnectionDataBase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;


@WebServlet(name = "SignupServlet", value = "/SignupServlet")
public class SignupServlet extends HttpServlet {

    Connection connection = ConnectionDataBase.connectToDataBase();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query;
        boolean errorEmailAddress = false;

        String firstNameField = request.getParameter("firstname");
        String lastNameField = request.getParameter("lastname");
        String emailField = request.getParameter("email");
        String countryField = request.getParameter("country");
        String addressField = request.getParameter("address");
        String passwordField = request.getParameter("password");

        query = "select ID,emailAddressUser from korisnik where emailAddressUser = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1,emailField);
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next())
            {
                errorEmailAddress = true;
                request.setAttribute("errorEmail", errorEmailAddress);
                RequestDispatcher rd = request.getRequestDispatcher("SignUpPage.jsp");

                try {
                    rd.forward(request, response);
                } catch (ServletException | IOException e) {
                    e.printStackTrace();
                }
            }
            else
            {

                query = "insert into korisnik(FirstNameUser,LastNameUser,emailAddressUser,CountryUser,AddressUser,passwordUser,poeni) values (?,?,?,?,?,password(?), 0)";

                PreparedStatement statement1 =  connection.prepareStatement(query);

                statement1.setString(1,firstNameField);
                statement1.setString(2,lastNameField);
                statement1.setString(3,emailField);
                statement1.setString(4,countryField);
                statement1.setString(5,addressField);
                statement1.setString(6,passwordField);
                statement1.executeUpdate();

                response.sendRedirect("ExploreHotelsUserPage.jsp");
            }
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}