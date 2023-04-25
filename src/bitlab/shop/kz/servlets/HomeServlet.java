package bitlab.shop.kz.servlets;


import bitlab.shop.kz.db.DBConnection;
import bitlab.shop.kz.db.Items;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Items> items = DBConnection.getItems();
        request.setAttribute("items",items);
        request.getRequestDispatcher("/store.jsp").forward(request,response);
    }
}
