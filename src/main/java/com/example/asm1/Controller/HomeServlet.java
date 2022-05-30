package com.example.asm1.Controller;

import com.example.asm1.Dao.ProductDao;
import com.example.asm1.Model.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    ProductDao dao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        Products products = new Products(name, email, address, Integer.valueOf(phone));
        dao.insertUser(products);
        resp.sendRedirect("list");
    }
}
