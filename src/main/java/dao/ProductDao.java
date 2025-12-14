package dao;

import model.Product;
import utils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    public List<Product> getAll() {
        List<Product> productList = new ArrayList<>();
        String sql = "Select * from product";

        try (Connection c = DBConnect.getConnection();
             PreparedStatement ps = c.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setCategory(rs.getInt("category_id"));
                p.setBrand(rs.getInt("brand_id"));
                p.setPrice(rs.getInt("price"));
                p.setImage(rs.getString("image"));
                productList.add(p);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }

        return productList;
    }
}