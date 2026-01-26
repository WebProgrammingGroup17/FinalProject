package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Order;
import com.example.web_console_handheld.model.OrderItem;
import com.example.web_console_handheld.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {

    // save order
    public int saveOrder(Order order) {

        int orderId = -1;

        String sql =
                "INSERT INTO orders " +
                        "(user_id, username, phone, address, order_date, total_price, ghiChu) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (
                Connection conn = DBConnection.getConnection();
                PreparedStatement ps =
                        conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)
        ) {
            ps.setInt(1, order.getUserId());
            ps.setString(2, order.getUsername());
            ps.setString(3, order.getPhone());
            ps.setString(4, order.getAddress());
            ps.setTimestamp(5, order.getOrderDate());
            ps.setBigDecimal(6, order.getTotalPrice());
            ps.setString(7, order.getGhiChu());

            ps.executeUpdate();

            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) {
                    orderId = rs.getInt(1);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orderId;
    }

    // save order items
    public void saveOrderItems(int orderId, List<OrderItem> items) {

        String sql =
                "INSERT INTO order_items " +
                        "(order_id, product_name, quantity, price) " +
                        "VALUES (?, ?, ?, ?)";

        try (
                Connection conn = DBConnection.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            for (OrderItem item : items) {
                ps.setInt(1, orderId);
                ps.setString(2, item.getProductName());
                ps.setInt(3, item.getQuantity());
                ps.setBigDecimal(4, item.getThanhtien());
                ps.addBatch();
            }
            ps.executeBatch();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // get order by id
    public Order getOrderById(int orderId) {

        Order order = null;

        String sql = "SELECT * FROM orders WHERE id = ?";

        try (
                Connection conn = DBConnection.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            ps.setInt(1, orderId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    order = new Order();
                    order.setId(rs.getInt("id"));
                    order.setUserId(rs.getInt("user_id"));
                    order.setUsername(rs.getString("username"));
                    order.setPhone(rs.getString("phone"));
                    order.setAddress(rs.getString("address"));
                    order.setOrderDate(rs.getTimestamp("order_date"));
                    order.setTotalPrice(rs.getBigDecimal("total_price"));
                    order.setGhiChu(rs.getString("ghiChu"));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return order;
    }

    // get order items
    public List<OrderItem> getOrderItems(int orderId) {

        List<OrderItem> list = new ArrayList<>();

        String sql = "SELECT * FROM order_items WHERE order_id = ?";

        try (
                Connection conn = DBConnection.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            ps.setInt(1, orderId);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    OrderItem item = new OrderItem();
                    item.setProductName(rs.getString("product_name"));
                    item.setQuantity(rs.getInt("quantity"));
                    item.setThanhtien(rs.getBigDecimal("price"));
                    list.add(item);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
