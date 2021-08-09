package com.zzy.service;

import com.zzy.dao.ProvinceDao;
import com.zzy.entity.Province;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
@Service("provinceService")
@Transactional
public class ProvinceServiceImpl implements ProvinceService{
    @Autowired
    private ProvinceDao provinceDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Province> showAllProvince() {
        return provinceDao.findAllProvince();
    }
}
