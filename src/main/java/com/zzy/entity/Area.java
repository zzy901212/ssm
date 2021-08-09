package com.zzy.entity;

/**
 * Created by Administrator on 2021-08-05.
 */
public class Area {
    private int id;
    private String code;
    private String name;
    private String cityid;

    public Area() {
    }

    public Area(int id, String code, String name, String cityid) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.cityid = cityid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCityid() {
        return cityid;
    }

    public void setCityid(String cityid) {
        this.cityid = cityid;
    }

    @Override
    public String toString() {
        return "Area{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", cityid='" + cityid + '\'' +
                '}';
    }
}
