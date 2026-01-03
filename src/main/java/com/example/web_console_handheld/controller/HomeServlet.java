package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.dao.BlogDao;
import com.example.web_console_handheld.dao.CategoryDao;
import com.example.web_console_handheld.dao.ProductDao;
import com.example.web_console_handheld.model.Blog;
import com.example.web_console_handheld.model.Category;
import com.example.web_console_handheld.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp)
            throws ServletException, IOException {

        CategoryDao categoryDao = new CategoryDao();
        List<Category> categories = categoryDao.getCategory();
        request.setAttribute("categories", categories);

        ProductDao productDao = new ProductDao();
        request.setAttribute("products", productDao.getProductListForHome());
        request.setAttribute("highest", productDao.getHighestDiscountProduct());
        request.setAttribute("smaller", productDao.getProductSmallerThanList());
        request.setAttribute("smallest", productDao.getSmallestProduct());

        BlogDao blogDao = new BlogDao();
        request.setAttribute("bloglist", blogDao.getBlogList());

        request.getRequestDispatcher("/index.jsp").forward(request, resp);
    }
}

