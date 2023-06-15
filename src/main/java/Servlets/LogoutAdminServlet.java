package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogoutAdminServlet", value = "/LogoutAdminServlet")
public class LogoutAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Invalidate the session
        HttpSession session = request.getSession(false);
        if(session != null)
        {
            session.invalidate();
        }

        //Clearing the loggedInAdmin cookies
        Cookie[] cookies = request.getCookies();
        if(cookies != null)
        {
            for(Cookie cookie : cookies)
            {
                if(cookie.getName().equals("loggedInAdmin")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    break;
                }
            }
        }
        //Redirect to the login page
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}