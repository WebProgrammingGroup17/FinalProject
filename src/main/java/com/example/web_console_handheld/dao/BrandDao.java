package com.example.web_console_handheld.dao;


import com.example.web_console_handheld.model.Brand;
import com.example.web_console_handheld.utils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BrandDao {
    public List<Brand> getAll() {
        List<Brand> brandList = new ArrayList<>();
        String sql = "select * from brand";

        try (Connection c = DBConnect.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while(rs.next()){
                Brand b = new Brand();
                b.setId(rs.getInt("id"));
//                b.setBrand_id(rs.getInt("brand_id"));
                b.setBrand_name(rs.getString("brand_name"));
                b.setStatus(rs.getBoolean("status"));
                b.setCreatedAt(rs.getString("createdAt"));
                brandList.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return brandList;
    }
}
