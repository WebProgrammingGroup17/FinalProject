package com.example.web_console_handheld.model;

public class Brand {
    private int id;
    private String brand_name;
    private boolean status;
    private String createdAt;
    public Brand(int id,  String brand_name, boolean status, String createdAt) {
        this.id = id;
        this.brand_name = brand_name;
        this.status = status;
        this.createdAt = createdAt;
    }
    public Brand() {}

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getBrand_name() {
        return brand_name;
    }
    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }
    public boolean isStatus() {
        return status;

    }
    public void setStatus(boolean status) {
        this.status = status;
    }
    public String getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
