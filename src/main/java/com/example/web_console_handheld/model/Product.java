package com.example.web_console_handheld.model;

import java.util.List;

public class Product {
    private int id;
    private String name;
    private int categoryId;
    private int brandId;
    private int price;
    private String image;

    private String descriptionShort;
    private String descriptionLong;
    private String promotion1;
    private String promotion2;
    private String promotion3;
    private String specConnect;
    private String specUsageTime;
    private String specSupport;
    private String specWeight;
    private String specBattery;

    private String categoryName;
    private String brandName;
    private List<String> images;

    private String intro;
    private String targetUser;
    private String technology;
    public Product() {}

    public Product(int id, String name, int categoryId, int brandId, int price, String image, String descriptionShort, String descriptionLong, String promotion1, String promotion2, String promotion3, String specConnect, String specUsageTime, String specSupport, String specWeight, String specBattery) {
        this.id = id;
        this.name = name;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.price = price;
        this.image = image;
        this.descriptionShort = descriptionShort;
        this.descriptionLong = descriptionLong;
        this.promotion1 = promotion1;
        this.promotion2 = promotion2;
        this.promotion3 = promotion3;
        this.specConnect = specConnect;
        this.specUsageTime = specUsageTime;
        this.specSupport = specSupport;
        this.specWeight = specWeight;
        this.specBattery = specBattery;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescriptionShort() {
        return descriptionShort;
    }

    public void setDescriptionShort(String descriptionShort) {
        this.descriptionShort = descriptionShort;
    }

    public String getDescriptionLong() {
        return descriptionLong;
    }

    public void setDescriptionLong(String descriptionLong) {
        this.descriptionLong = descriptionLong;
    }

    public String getPromotion1() {
        return promotion1;
    }

    public void setPromotion1(String promotion1) {
        this.promotion1 = promotion1;
    }

    public String getPromotion2() {
        return promotion2;
    }

    public void setPromotion2(String promotion2) {
        this.promotion2 = promotion2;
    }

    public String getPromotion3() {
        return promotion3;
    }

    public void setPromotion3(String promotion3) {
        this.promotion3 = promotion3;
    }

    public String getSpecConnect() {
        return specConnect;
    }

    public void setSpecConnect(String specConnect) {
        this.specConnect = specConnect;
    }

    public String getSpecUsageTime() {
        return specUsageTime;
    }

    public void setSpecUsageTime(String specUsageTime) {
        this.specUsageTime = specUsageTime;
    }

    public String getSpecSupport() {
        return specSupport;
    }

    public void setSpecSupport(String specSupport) {
        this.specSupport = specSupport;
    }

    public String getSpecWeight() {
        return specWeight;
    }

    public void setSpecWeight(String specWeight) {
        this.specWeight = specWeight;
    }

    public String getSpecBattery() {
        return specBattery;
    }

    public void setSpecBattery(String specBattery) {
        this.specBattery = specBattery;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImage(List<String> images) {
        this.images = images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getTargetUser() {
        return targetUser;
    }

    public void setTargetUser(String targetUser) {
        this.targetUser = targetUser;
    }

    public String getTechnology() {
        return technology;
    }

    public void setTechnology(String technology) {
        this.technology = technology;
    }
}
