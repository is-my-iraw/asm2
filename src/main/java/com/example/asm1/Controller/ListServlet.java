package com.example.asm1.Controller;

import com.example.asm1.Dao.ProductDao;
import com.example.asm1.Model.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListServlet", value = "/list")
public class ListServlet extends HttpServlet {
    ProductDao dao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action){
            case "/insert":
                break;
            case "/delete":
                doDelete(request,response);
                break;
            case "/update":
                update(request, response);
                break;
            default:
                productList();
                break;
        }
        request.setAttribute("products", productList());
        request.getRequestDispatcher("user-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
    protected List<Products> productList(){
        List<Products> list = dao.getListProduct();
        return list;
    }

    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        dao.DeleteProduct(id);
        resp.sendRedirect("list");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException{
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        Products products = new Products(name, email, address, Integer.valueOf(phone));
        dao.UpdateProduct(products);
        response.sendRedirect("list");
    }
}
