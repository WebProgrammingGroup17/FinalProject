package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Category;
import com.example.web_console_handheld.utils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    public List<Category> getAll()  {
        List<Category> categoriesList = new ArrayList<>();
        String sql = "Select * from category";

        try (Connection c = DBConnect.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setCategory_name(rs.getString("category_name"));
                category.setStatus(rs.getInt("status"));
                category.setCreatedAt(rs.getString("createdAt"));
                category.setDescription(rs.getString("description"));
                categoriesList.add(category);
            }
        }catch (Exception e){
                 e.printStackTrace();
        }
        return categoriesList;
    }
}


