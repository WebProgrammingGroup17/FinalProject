package com.example.web_console_handheld.model;

import java.math.BigDecimal;

public class OrderItem {
    private String productName;
    private int quantity;
    private BigDecimal price;
    private BigDecimal thanhtien;
    private Product product;

    public OrderItem() {}

    public OrderItem(CartItem cartItem) {
        this.product = cartItem.getProduct();
        this.productName = product.getName();
        this.quantity = cartItem.getQuantity();
        this.price = BigDecimal.valueOf(product.getPriceValue());
        this.thanhtien = price.multiply(BigDecimal.valueOf(quantity));
    }

    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
        if (this.price != null) {
            this.thanhtien = price.multiply(BigDecimal.valueOf(quantity));
        }
    }

    public BigDecimal getPrice() { return price; }
    public void setPrice(BigDecimal price) {
        this.price = price;
        if (this.quantity > 0) {
            this.thanhtien = price.multiply(BigDecimal.valueOf(quantity));
        }
    }

    public BigDecimal getThanhtien() { return thanhtien; }
    public void setThanhtien(BigDecimal thanhtien) { this.thanhtien = thanhtien; }

    public Product getProduct() { return product; }
    public void setProduct(Product product) {
        this.product = product;
        if (product != null) {
            this.productName = product.getName();
            this.price = BigDecimal.valueOf(product.getPriceValue());
            this.thanhtien = price.multiply(BigDecimal.valueOf(quantity));
        }
    }
}
