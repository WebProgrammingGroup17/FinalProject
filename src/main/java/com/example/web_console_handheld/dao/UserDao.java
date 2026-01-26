package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.User;
import com.example.web_console_handheld.utils.DBConnection;

import java.sql.*;

public class UserDao extends BaseDao{

    // Kiểm tra username đã tồn tại chưa
    public boolean existsUsername(String username) {
        String sql = "SELECT 1 FROM users WHERE username = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next(); // true nếu có record
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // lỗi thì coi như chưa tồn tại
        }
    }

    // Kiểm tra email đã tồn tại chưa
    public boolean existsEmail(String email) {
        String sql = "SELECT 1 FROM users WHERE email=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    //kiểm tra sđt đã tồn tại chưa
    public boolean existsPhoneNum(String phoneNum) {
        String sql = "SELECT 1 FROM users WHERE phoneNum = ? LIMIT 1";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, phoneNum.trim());
            ResultSet rs = ps.executeQuery();
            return rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // Thêm user mới, trả về ID
    public int insert(User u) throws SQLException {
        // Đã loại bỏ fullname khỏi câu lệnh INSERT
        String sql = "INSERT INTO users (username, password, email, phoneNum, active, created_at) VALUES (?, ?, ?, ?, ?, NOW())";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPhoneNum());
            ps.setBoolean(5, false);

            ps.executeUpdate();
            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) return rs.getInt(1);
            }
        }
        throw new SQLException("Thêm user thất bại.");
    }

    // Kích hoạt user
    public void activate(int userId) throws SQLException {
        String sql = "UPDATE users SET active=true, updated_at=NOW() WHERE id=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            ps.executeUpdate();
        }
    }

    public User getUserById(int id) {
        String sql = "SELECT * FROM users WHERE id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setUsername(rs.getString("username"));
                u.setEmail(rs.getString("email"));
                u.setFullname(rs.getString("fullname"));
                u.setPhoneNum(rs.getString("phoneNum"));
                u.setLocation(rs.getString("location"));
                u.setActive(rs.getBoolean("active"));
                return u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // cập nhật thông tin người dùng
    public boolean updateProfile(User u) {
        String sql = """
        UPDATE users
        SET email = ?,
            phoneNum = ?,
            location = ?,
            updated_at = NOW()
        WHERE id = ?
    """;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPhoneNum());
            ps.setString(3, u.getLocation());
            ps.setInt(4, u.getId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public void updateAddress(int userId, String address) {
        get().useHandle(handle ->
                handle.createUpdate(
                                "UPDATE users SET location = :address WHERE id = :id"
                        )
                        .bind("address", address)
                        .bind("id", userId)
                        .execute()
        );
    }
    public void updateLocation(int userId, String location) {
        String sql = "UPDATE users SET location = ? WHERE id = ?";
        try (Connection c = DBConnection.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {

            ps.setString(1, location);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
