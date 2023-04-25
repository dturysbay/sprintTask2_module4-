package bitlab.shop.kz.servlets;

import bitlab.shop.kz.db.DBConnection;
import bitlab.shop.kz.db.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/get-user")
public class GetUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = DBConnection.getUser(email,password);
        if(user!=null){
            request.getRequestDispatcher("user.jsp").forward(request,response);
        }else{
            String errorMessage = "Sorry, user not found";
            request.setAttribute("message",errorMessage);
            request.getRequestDispatcher("auth.jsp").forward(request,response);
        }
    }
}
