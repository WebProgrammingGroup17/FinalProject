package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.dao.ProductDao;
import com.example.web_console_handheld.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/filter-products")
public class FilterProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductDao productDao = new ProductDao();
        Integer categoryId = parseInteger(request.getParameter("categoryId"));
        String priceRange = request.getParameter("priceRange");

        List<Integer> brandIds = parseIntList(request.getParameterValues("brandId"));
        List<Integer> useTimes = parseIntList(request.getParameterValues("useTime"));

        List<Product> products = productDao.filterProducts(
                categoryId,
                priceRange,
                brandIds,
                useTimes
        );

        // dữ liệu cho jsp
        request.setAttribute("categories", productDao.getCategoryList());
        request.setAttribute("brands", productDao.getBrandList());
        request.setAttribute("energy", productDao.getEnergyProductList());
        request.setAttribute("products", products);

        // giữ trạng thái filter
        request.setAttribute("selectedCategoryId", categoryId);
        request.setAttribute("selectedPriceRange", priceRange);
        request.setAttribute("selectedBrandIds", brandIds);
        request.setAttribute("selectedUseTimes", useTimes);

        request.getRequestDispatcher("/products.jsp").forward(request, response);
    }

    private Integer parseInteger(String value) {
        try {
            return value == null ? null : Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private List<Integer> parseIntList(String[] params) {
        List<Integer> list = new ArrayList<>();
        if (params != null) {
            for (String p : params) {
                try {
                    list.add(Integer.parseInt(p));
                } catch (NumberFormatException ignored) {}
            }
        }
        return list;
    }
}
