package com.zzy.service;

import com.zzy.entity.City;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
public interface CityService {
    List<City> showCitysByProvinceId(String provinceId);

}
