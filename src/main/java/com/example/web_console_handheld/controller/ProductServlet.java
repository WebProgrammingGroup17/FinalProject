package com.example.web_console_handheld.controller;


import com.example.web_console_handheld.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.example.web_console_handheld.dao.BrandDao;
import com.example.web_console_handheld.dao.CategoryDao;
import com.example.web_console_handheld.dao.ProductDao;

import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private static final int PAGE_SIZE = 20;

    ProductDao dao = new ProductDao();
    BrandDao brandDao = new BrandDao();
    CategoryDao categoryDao = new CategoryDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            page = Integer.parseInt(pageParam);
        }

        List<Product> list = dao.getProductsByPage(page, PAGE_SIZE);
        int totalProducts = dao.getTotalProducts();
        int totalPages = (int) Math.ceil((double) totalProducts / PAGE_SIZE);

        request.setAttribute("products",list );
        request.setAttribute("currentPage", page );
        request.setAttribute("totalPages", totalPages );



        request.setAttribute("brands", brandDao.getAll());

         request.setAttribute("category", categoryDao.getAll());

        request.getRequestDispatcher("/products.jsp").forward(request, response);


    }

}
