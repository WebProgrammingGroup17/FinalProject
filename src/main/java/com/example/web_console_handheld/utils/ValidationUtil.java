package com.example.web_console_handheld.utils;

public class ValidationUtil {

    public static boolean isValidUsername(String username) {
        return username != null && username.matches("^[a-zA-Z0-9.]{5,30}$");
    }

    public static boolean isValidPassword(String password) {
        return password != null && password.matches(
                "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&]).{8,}$"
        );
    }

    public static boolean isValidEmail(String email) {
        return email != null && email.matches("^[\\w.-]+@[\\w.-]+\\.[a-zA-Z]{2,}$");
    }
}
