package com.zzy.dao;

import com.zzy.entity.Area;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
public interface AreaDao {
    List<Area> queryAreasByCityId(String cityid);
}
