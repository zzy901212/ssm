package com.zzy.service;

import com.zzy.dao.CityDao;
import com.zzy.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
@Service("cityService")
@Transactional
public class CityServiceImpl implements CityService{
    @Autowired
    private CityDao cityDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<City> showCitysByProvinceId(String provinceId) {
        return cityDao.queryCitysByProvinceId(provinceId);
    }




}
