package com.example.web_console_handheld.controller;


import com.example.web_console_handheld.dao.BrandDao;
import com.example.web_console_handheld.dao.CategoryDao;
import com.example.web_console_handheld.dao.ProductDao;
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
    private static final int PAGE_SIZE = 12;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp)
            throws ServletException, IOException {

        ProductDao productDao = new ProductDao();

        int page = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            try {
                page = Integer.parseInt(pageParam);
            } catch (NumberFormatException ignored) {}
        }

        int offset = (page - 1) * PAGE_SIZE;

        String sort = request.getParameter("sort");

        // ✅ DUY NHẤT 1 DÒNG LẤY PRODUCT
        List<Product> products =
                productDao.getProductByPageAndSort(offset, PAGE_SIZE, sort);

        int totalProduct = productDao.countAllProduct();
        int totalPage = (int) Math.ceil((double) totalProduct / PAGE_SIZE);

        // ==== dữ liệu phụ ====
        CategoryDao categoryDao = new CategoryDao();
        request.setAttribute("categories", categoryDao.getCategory());

        BrandDao brandDao = new BrandDao();
        request.setAttribute("brands", brandDao.getBrands());

        request.setAttribute("energy", productDao.getEnergyProductList());
        request.setAttribute("premium", productDao.getPremiumProductList());

        // ==== pagination ====
        request.setAttribute("products", products);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPage", totalPage);


        String keyword = request.getParameter("keyword");

        List<Product> p;

        if (keyword != null && !keyword.trim().isEmpty()) {
            p = productDao.searchByName(keyword.trim());
            request.setAttribute("keyword", keyword);
        } else {
            p = productDao.getProductList();
        }

        request.setAttribute("products", p);

        // load thanh lọc
        request.setAttribute("categories", productDao.getCategoryList());
        request.setAttribute("brands", productDao.getBrandList());
        request.setAttribute("energy", productDao.getEnergyProductList());


        request.getRequestDispatcher("/products.jsp").forward(request, resp);
    }
}


