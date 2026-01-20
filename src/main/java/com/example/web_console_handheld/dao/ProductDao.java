package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Product;
import com.example.web_console_handheld.model.Category;
import com.example.web_console_handheld.model.Brand;

import java.util.List;

public class ProductDao extends BaseDao {
    //lay ra tat ca san pham lien quan cung danh muc va thuong hieu cua san pham duoc click vao
    public List<Product> getProductListByBrandAndCategory(int brandId, int categoryId, int productID) {
        return get().withHandle(handle ->
                handle.createQuery(
                                "select * from products where brand_id = :brandId and categories_id = :categoryId and ID != :productID"
                        )
                        .bind("brandId", brandId)
                        .bind("categoryId", categoryId)
                        .bind("productID", productID)
                        .mapToBean(Product.class)
                        .list()
        );
    }
    //lay san pham theo id trang productDetails
    public Product getProductDetailByID(int id) {
        return get().withHandle(handle ->
                handle.createQuery("""
            SELECT
                p.ID,
                p.name,
                p.image,
                p.price,
                p.priceOld,
                p.short_description,
                p.full_description,
                p.information,
                p.energy,
                p.useTime,
                p.weight,
                p.active,
                p.metatitle,
                p.ispremium AS isPremium,
                p.suports,
                p.connect,
                p.endow,
                p.createdAt,

                p.categories_id AS categoriesId,
                c.name AS categoryName,

                p.brand_id AS brandId,
                b.brand_name AS brandName

            FROM products p
            JOIN categories c ON p.categories_id = c.ID
            JOIN brands b ON p.brand_id = b.ID
            WHERE p.ID = :id
        """)
                        .bind("id", id)
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }


    public List<Product> getEnergyProductList() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT DISTINCT useTime FROM products ORDER BY useTime ASC"
                        )
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getPremiumProductList() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * from products where ispremium = 1 and active = 1"
                        )
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getProductListForHome() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * FROM products " +
                                        "WHERE priceOld IS NOT NULL " +
                                        "AND price IS NOT NULL " +
                                        "AND priceOld > price " +
                                        "AND active = 1 " +
                                        "ORDER BY (priceOld - price) DESC " +
                                        "LIMIT 4"
                        )
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> getProductList() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "select * from products where active = 1 and ispremium = 0"
                        )
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public Product getHighestDiscountProduct() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * FROM products " +
                                        "WHERE priceOld IS NOT NULL " +
                                        "AND price IS NOT NULL " +
                                        "AND priceOld > price " +
                                        "AND active = 1 " +
                                        "ORDER BY (priceOld - price) DESC " +
                                        "LIMIT 1"
                        )
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public List<Product> getProductSmallerThanList() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * FROM products " +
                                        "WHERE price IS NOT NULL " +
                                        "AND active = 1 " +
                                        "and price < 1300000 " +
                                        "LIMIT 2"
                        )
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public Product getSmallestProduct() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * FROM products " +
                                        "where price IS NOT NULL " +
                                        "AND active = 1 " +
                                        "ORDER BY price ASC " +
                                        "LIMIT 1"
                        )
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }

    //chức năng sắp xếp sản phẩm theo giá tăng, giảm dần và mới nhất
    public List<Product> getProductListForSort(String sort){
        String sql = "select * from products where active = 1 AND ispremium = 0 ";


        if (sort != null){
            switch (sort){
                case "price_asc":
                    sql += " ORDER BY price ASC";
                    break;
                case "price_desc":
                    sql += " ORDER BY price DESC";
                    break;
                case "newest":
                    sql += " ORDER BY createdAt DESC";
                    break;
                default:
                     sql += " ORDER BY ID ASC";

            }
        }else{
            sql += " ORDER BY ID ASC";
        }
        String finalSql = sql;
        return get().withHandle(handle ->
                handle.createQuery(finalSql).mapToBean(Product.class).list()
        );
    }


    public List<Category> getCategoryList() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * FROM categories ORDER BY name ASC"
                        )
                        .mapToBean(Category.class)
                        .list()
        );
    }

    public List<Brand> getBrandList() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT * FROM brands ORDER BY brand_name ASC"
                        )
                        .mapToBean(Brand.class)
                        .list()
        );
    }

    // lọc sản phẩm
    public List<Product> filterProducts(
            Integer categoryId,
            String priceRange,
            List<Integer> brandIds,
            List<Integer> useTimes) {

        StringBuilder sql = new StringBuilder(
                "SELECT * FROM products WHERE active = 1 AND ispremium = 0"
        );

        if (categoryId != null) {
            sql.append(" AND categories_id = :categoryId");
        }

        if (priceRange != null) {
            switch (priceRange) {
                case "under500" -> sql.append(" AND price < 500000");
                case "500-1m" -> sql.append(" AND price BETWEEN 500000 AND 1000000");
                case "1-2m" -> sql.append(" AND price BETWEEN 1000000 AND 2000000");
                case "2-3m" -> sql.append(" AND price BETWEEN 2000000 AND 3000000");
                case "over3m" -> sql.append(" AND price > 3000000");
            }
        }

        // chỉ append in khi list > 0
        if (brandIds != null && !brandIds.isEmpty()) {
            sql.append(" AND brand_id IN (<brandIds>)");
        }

        if (useTimes != null && !useTimes.isEmpty()) {
            sql.append(" AND useTime IN (<useTimes>)");
        }

        return get().withHandle(handle -> {
            var query = handle.createQuery(sql.toString());

            if (categoryId != null) {
                query.bind("categoryId", categoryId);
            }

            // chỉ bindList khi list > 0
            if (brandIds != null && !brandIds.isEmpty()) {
                query.bindList("brandIds", brandIds);
            }

            if (useTimes != null && !useTimes.isEmpty()) {
                query.bindList("useTimes", useTimes);
            }

            return query.mapToBean(Product.class).list();
        });
    }

}
