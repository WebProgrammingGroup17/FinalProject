package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.model.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/place-order")
public class PlaceOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        User auth = (User) session.getAttribute("auth");
        Cart cart = (Cart) session.getAttribute("cart");

        if (auth == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        if (cart == null || cart.getCartItems().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        // tạo order tạm
        Order order = new Order();
        order.setUserId(auth.getId());
        order.setUsername(auth.getUsername());
        order.setPhone(auth.getPhoneNum());

        // lấy địa chỉ: nếu form nhập thì lấy từ form, không thì dùng địa chỉ user
        String address = request.getParameter("address");
        order.setAddress((address != null && !address.isBlank()) ? address : auth.getLocation());

        order.setOrderDate(new Timestamp(System.currentTimeMillis()));

        // tạo danh sách OrderItem từ cart
        List<OrderItem> items = new ArrayList<>();
        BigDecimal total = BigDecimal.ZERO;
        for (CartItem ci : cart.getCartItems().values()) {
            OrderItem item = new OrderItem(ci);
            items.add(item);
            total = total.add(item.getThanhtien());
        }
        order.setTotalPrice(total);

        // ghi chú
        String note = request.getParameter("note");
        order.setGhiChu(note != null ? note : "");

        // lưu session tạm
        session.setAttribute("pendingOrder", order);
        session.setAttribute("pendingOrderItems", items);

        // xóa flag cũ
        session.removeAttribute("orderConfirmed");

        // redirect sang Order Detail
        response.sendRedirect(request.getContextPath() + "/order-detail");
    }
}
