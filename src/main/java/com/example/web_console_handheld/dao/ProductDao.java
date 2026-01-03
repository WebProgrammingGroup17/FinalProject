package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Product;

import java.util.List;

public class ProductDao extends BaseDao{
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
                                "select * from products where active = 1"
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
}
