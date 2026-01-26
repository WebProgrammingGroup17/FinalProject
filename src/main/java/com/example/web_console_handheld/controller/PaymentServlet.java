package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.model.*;
import com.example.web_console_handheld.model.CartItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Collection;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getCartItems().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        // Lấy danh sách sản phẩm từ cart
        Collection<CartItem> cartItems = cart.getCartItems().values();
        request.setAttribute("cartItems", cartItems);

        request.getRequestDispatcher("/Assets/component/cart_payment/payment.jsp").forward(request, response);
    }
}
