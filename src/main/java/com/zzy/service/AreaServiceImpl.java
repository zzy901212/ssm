package com.zzy.service;

import com.zzy.dao.AreaDao;
import com.zzy.entity.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
@Service("areaService")
@Transactional
public class AreaServiceImpl implements AreaService{
    @Autowired
    private AreaDao areaDao;


    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Area> showAreasByCityId(String cityId) {
        return areaDao.queryAreasByCityId(cityId);
    }
}
