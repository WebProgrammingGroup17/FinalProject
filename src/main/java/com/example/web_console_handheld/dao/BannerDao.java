package com.example.web_console_handheld.dao;

import com.example.web_console_handheld.model.Banner;

public class BannerDao extends BaseDao{
    public Banner getBanner(int id){
        return get().withHandle(handle -> handle.createQuery("select * from banner where ID = :id and active = 1").bind("id", id).mapToBean(Banner.class).stream().findFirst().orElse(null));
    }
}
