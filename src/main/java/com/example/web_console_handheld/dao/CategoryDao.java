package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Category;

import java.util.List;

public class CategoryDao extends BaseDao{
    public List<Category> getCategory(){
        return get().withHandle(handle -> handle.createQuery("select * from categories where active = 1").mapToBean(Category.class).list());
    }
}
