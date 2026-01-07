package com.example.web_console_handheld.controller;

import com.example.web_console_handheld.dao.AuthDao;
import com.example.web_console_handheld.model.User;

public class AuthService {
    AuthDao authDao = new AuthDao();
    public User checkLogin(String username, String password) {
        User user = authDao.getUserByUserName(username);
        if (user == null) return null;
        if (user.getPassword().equals(password)) {
            user.setPassword("");
            return user;
        }
        return null;
    }
}
