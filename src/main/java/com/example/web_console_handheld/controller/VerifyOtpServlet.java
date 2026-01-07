package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.dao.OtpDao;
import com.example.web_console_handheld.dao.UserDao;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/verify-otp")
public class VerifyOtpServlet extends HttpServlet {

    private final OtpDao otpDao = new OtpDao();
    private final UserDao userDao = new UserDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        HttpSession session = request.getSession();
        String uidStr = request.getParameter("uid");
        String otp = request.getParameter("otp");

        if (uidStr == null || otp == null || otp.trim().isEmpty()) {
            session.setAttribute("msg", "Dữ liệu xác thực không hợp lệ.");
            response.sendRedirect(request.getContextPath()
                    + "/Assets/component/login_logout/register.jsp");
            return;
        }

        try {
            int userId = Integer.parseInt(uidStr);

            if (otpDao.verify(userId, otp)) {
                userDao.activate(userId);
                session.setAttribute("msg", "Xác thực thành công! Mời bạn đăng nhập.");
                response.sendRedirect(request.getContextPath()
                        + "/Assets/component/login_logout/login.jsp");
            } else {
                session.setAttribute("msg", "OTP không đúng hoặc đã hết hạn.");
                response.sendRedirect(request.getContextPath()
                        + "/Assets/component/login_logout/verify.jsp?uid=" + userId);
            }

        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("msg", "Lỗi hệ thống.");
            response.sendRedirect(request.getContextPath()
                    + "/Assets/component/login_logout/register.jsp");
        }
    }
}
