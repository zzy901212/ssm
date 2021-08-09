package com.zzy.dao;

import com.zzy.entity.City;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
public interface CityDao {
    List<City> queryCitysByProvinceId(String provinceid);
}
