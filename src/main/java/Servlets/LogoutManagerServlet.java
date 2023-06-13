package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogoutManagerServlet", value = "/LogoutManagerServlet")
public class LogoutManagerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Invalidate the session
        HttpSession session = request.getSession(false);
        if(session != null)
        {
            session.invalidate();
        }

        //Clear the loggedInManager cookies
        Cookie[] cookies = request.getCookies();
        if(cookies != null)
        {
            for(Cookie cookie: cookies){
                if(cookie.getName().equals("loggedInManager")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    break;
                }
            }
        }
        if(cookies != null)
        {
            for(Cookie cookie: cookies){
                if(cookie.getName().equals("managerEmail")){
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    break;
                }
            }
        }
        // Redirect to the login page
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}