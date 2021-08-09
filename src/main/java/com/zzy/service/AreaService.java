package com.zzy.service;

import com.zzy.entity.Area;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
public interface AreaService {
    List<Area> showAreasByCityId(String cityId);

}
