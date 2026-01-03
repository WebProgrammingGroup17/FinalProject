package com.example.web_console_handheld.controller;


import com.example.web_console_handheld.dao.BrandDao;

import com.example.web_console_handheld.dao.CategoryDao;
import com.example.web_console_handheld.dao.ProductDao;

import com.example.web_console_handheld.model.Brand;

import com.example.web_console_handheld.model.Category;
import com.example.web_console_handheld.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp)
            throws ServletException, IOException {
        CategoryDao categoryDao = new CategoryDao();
        List<Category> categories = categoryDao.getCategory();
        request.setAttribute("categories", categories);

        BrandDao brandDao = new BrandDao();
        List<Brand> brandList = brandDao.getBrands();
        request.setAttribute("brands", brandList);

        ProductDao productDao = new ProductDao();
        List<Product> productEnergyList = productDao.getEnergyProductList();
        List<Product> premiumproductList = productDao.getPremiumProductList();

        request.setAttribute("energy", productEnergyList);
        request.setAttribute("premium", premiumproductList);
        request.setAttribute("products", productDao.getProductList());

        request.getRequestDispatcher("/products.jsp").forward(request, resp);
    }
}

