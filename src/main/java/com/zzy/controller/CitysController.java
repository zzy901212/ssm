package com.zzy.controller;

import com.zzy.entity.Area;
import com.zzy.entity.City;
import com.zzy.entity.Province;
import com.zzy.service.AreaService;
import com.zzy.service.CityService;
import com.zzy.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2021-08-05.
 */
@Controller
@ResponseBody
@RequestMapping("/city")
public class CitysController {
    @Autowired
    private ProvinceService provinceService;
    @Autowired
    private CityService cityService;
    @Autowired
    private AreaService areaService;
    @RequestMapping("showProvince")
    public List<Province> showProvince(){
        return provinceService.showAllProvince();
    }
    @RequestMapping("/showCitys")
    public List<City> showCitys(String code){
        return cityService.showCitysByProvinceId(code);
    }
    @RequestMapping("/showAreas")
    public List<Area> showAreas(String code){
        return areaService.showAreasByCityId(code);
    }
}
