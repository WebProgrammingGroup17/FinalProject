package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.dao.ProductDao;
import com.example.web_console_handheld.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/product-detail")
public class ProductDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idRaw = request.getParameter("id");
        System.out.println("ID = " + idRaw);

        int id = Integer.parseInt(idRaw);

        ProductDao dao = new ProductDao();
        Product product = dao.getProductDetailById(id);

        System.out.println("Product = " + product);

        request.setAttribute("product", product);

        request.setAttribute("images", product.getImages());

        request.getRequestDispatcher("/Assets/Details/productDetails.jsp")
                .forward(request, response);


    }
}
