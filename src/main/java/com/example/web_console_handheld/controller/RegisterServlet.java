package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.model.User;
import com.example.web_console_handheld.dao.UserDao;
import com.example.web_console_handheld.dao.OtpDao;
import com.example.web_console_handheld.utils.ValidationUtil;
import com.example.web_console_handheld.utils.PasswordUtil;
import com.example.web_console_handheld.utils.OtpUtil;
import com.example.web_console_handheld.service.EmailService;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        HttpSession session = req.getSession();

        try {
            String username = req.getParameter("username");
            String email = req.getParameter("email");
            String phoneNum = req.getParameter("phoneNum");
            String password = req.getParameter("password");
            String confirmPassword = req.getParameter("confirm_password");

            // 1. kiểm tra các trương bắt buộc
            if (isEmpty(username) || isEmpty(email) || isEmpty(password)) {
                session.setAttribute("msg", "Vui lòng điền đầy đủ các thông tin bắt buộc.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }

            // 2. kiểm tra mật khẩu trùng khớp
            if (!password.equals(confirmPassword)) {
                session.setAttribute("msg", "Mật khẩu nhập lại không khớp.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }

            // 3. xác thực
            if (!ValidationUtil.isValidUsername(username)) {
                session.setAttribute("msg", "Tên đăng nhập không hợp lệ.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }
            if (!ValidationUtil.isValidPassword(password)) {
                session.setAttribute("msg", "Mật khẩu yếu.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }
            if (!ValidationUtil.isValidEmail(email)) {
                session.setAttribute("msg", "Email không đúng định dạng.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }

            UserDao userDao = new UserDao();

            // 4. kiểm tra trùng lặp
            if (userDao.existsUsername(username)) {
                session.setAttribute("msg", "Tên đăng nhập đã tồn tại.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }
            if (userDao.existsEmail(email)) {
                session.setAttribute("msg", "Email đã được sử dụng.");
                resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
                return;
            }

            // 5. lưu user
            User user = new User();
            user.setUsername(username.trim());
            user.setPassword(PasswordUtil.hash(password));
            user.setEmail(email.trim());
            user.setPhoneNum(phoneNum);
            user.setActive(false);

            int userId = userDao.insert(user);

            // 6. tạo OTP
            String rawOtp = OtpUtil.generateOtp();
            String hashedOtp = PasswordUtil.hash(rawOtp);
            LocalDateTime expiry = LocalDateTime.now().plusSeconds(60);

            new OtpDao().saveOtp(userId, hashedOtp, expiry);

            // 7. gửi email
            EmailService.sendOtp(email, rawOtp);

            session.setAttribute("msg", "Đăng ký thành công! Vui lòng kiểm tra email để nhập OTP.");

            resp.sendRedirect(req.getContextPath()
                    + "/Assets/component/login_logout/verify.jsp?uid=" + userId);

        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("msg", "Lỗi hệ thống: " + e.getMessage());
            resp.sendRedirect(req.getContextPath() + "/Assets/component/login_logout/register.jsp");
        }
    }

    private boolean isEmpty(String str) {
        return str == null || str.trim().isEmpty();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/Assets/component/login_logout/register.jsp").forward(req,resp);
    }
}
