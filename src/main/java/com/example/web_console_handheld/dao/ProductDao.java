package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Product;

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
                                "select * from products where active = 1 ORDER BY ispremium DESC"
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
    public List<Product> getProductByPageAndSort(int offset, int limit, String sort) {

        String orderBy;

        if (sort == null || sort.isEmpty()) {
            orderBy = "ispremium DESC, ID ASC";
        } else {
            switch (sort) {
                case "price_asc":
                    orderBy = "ispremium DESC, price ASC";
                    break;
                case "price_desc":
                    orderBy = "ispremium DESC, price DESC";
                    break;
                case "newest":
                    orderBy = "ispremium DESC, createdAt DESC";
                    break;
                default:
                    orderBy = "ispremium DESC, ID ASC";
            }
        }

        String sql =
                "SELECT * FROM products " +
                        "WHERE active = 1 " +
                        "ORDER BY " + orderBy +
                        " LIMIT :limit OFFSET :offset";

        return get().withHandle(handle ->
                handle.createQuery(sql)
                        .bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(Product.class)
                        .list()
        );
    }
    public int countAllProduct() {
        return get().withHandle(handle ->
                handle.createQuery(
                                "SELECT COUNT(*) FROM products WHERE active = 1"
                        )
                        .mapTo(Integer.class)
                        .one()
        );
    }

}
