package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.dao.OrderDao;
import com.example.web_console_handheld.model.Cart;
import com.example.web_console_handheld.model.Order;
import com.example.web_console_handheld.model.OrderItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/confirm-order")
public class ConfirmOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        Order order = (Order) session.getAttribute("pendingOrder");
        List<OrderItem> items =
                (List<OrderItem>) session.getAttribute("pendingOrderItems");

        if (order == null || items == null || items.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        try {

            OrderDao dao = new OrderDao();

            // Lưu order
            int orderId = dao.saveOrder(order);

            // lưu order items
            dao.saveOrderItems(orderId, items);

            // clear cart
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart != null) cart.clear();

            // flag đã xác nhận
            session.setAttribute("orderConfirmed", true);
            session.setAttribute("confirmedOrderId", orderId);

            // message
            session.setAttribute(
                    "orderSuccessMessage",
                    "Đặt hàng thành công! Cảm ơn bạn đã mua hàng."
            );
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/order-detail");
    }
}
