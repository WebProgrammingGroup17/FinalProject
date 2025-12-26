package com.example.web_console_handheld.dao;



import com.example.web_console_handheld.model.Product;
import com.example.web_console_handheld.utils.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    public List<Product> getProductsByPage(int page, int pageSize){
        List<Product> list = new ArrayList<>();
        String sql = "Select * from product LIMIT ? OFFSET ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){

            ps.setInt(1, pageSize);
            ps.setInt(2, (page - 1) *pageSize);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Product p= new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setCategoryId(rs.getInt("category_id"));
                p.setBrandId(rs.getInt("brand_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                list.add(p);

            }
        } catch (Exception e) {
           e.printStackTrace();
        }
        return list;
    }
    public int getTotalProducts(){
        String sql = "Select count(*) from product";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){

            if (rs.next()) return rs.getInt(1);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    //chi tiet san pham
    public Product getProductDetailById(int id) {
        Product product = new Product();
        String sql = """
        Select p.*, b.brand_name As brandName, c.category_name AS categoryName
        from product p 
            JOIN brand b on b.id = p.brand_id 
            JOIN category c on c.id = p.category_id
            WHERE p.id = ?
            """;

        try(Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setBrandId(rs.getInt("brand_id"));
                product.setImage(rs.getString("image"));
                product.setPrice(rs.getInt("price"));
                product.setDescriptionShort(rs.getString("description_short"));
                product.setDescriptionLong(rs.getString("description_long"));
                product.setPromotion1(rs.getString("promotion1"));
                product.setPromotion2(rs.getString("promotion2"));
                product.setPromotion3(rs.getString("promotion3"));
                product.setSpecConnect(rs.getString("spec_connect"));
                product.setSpecSupport(rs.getString("spec_support"));
                product.setSpecUsageTime(rs.getString("spec_usage_time"));
                product.setSpecWeight(rs.getString("spec_weight"));
                product.setSpecBattery(rs.getString("spec_battery"));

                product.setBrandName(rs.getString("brandName"));
                product.setCategoryName(rs.getString("categoryName"));

                product.setIntro(rs.getString("intro"));
                product.setTargetUser(rs.getString("targetUser"));
                product.setTechnology(rs.getString("technology"));


                String sqlImg = "Select img_url from product_image where product_id =?";
                try(PreparedStatement psImg = conn.prepareStatement(sqlImg)){
                    psImg.setInt(1, id);
                    ResultSet rsImg = psImg.executeQuery();
                    List<String> images = new ArrayList<>();
                    while (rsImg.next()){
                        images.add(rsImg.getString("img_url"));
                    }
                    product.setImage(images);
                }
                return  product;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

}