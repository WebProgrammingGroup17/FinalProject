package com.example.web_console_handheld.model;

public class Category {
    private int id;
    private String category_name;
    private int status;
    private String createdAt;
    private String description;

    public Category(int id, String category_name, int status, String createdAt, String description) {
        this.id = id;
        this.category_name = category_name;
        this.status = status;
        this.createdAt = createdAt;
        this.description = description;

    }
    public Category() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }
}
