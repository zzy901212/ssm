package com.zzy.entity;

/**
 * Created by Administrator on 2021-08-05.
 */
public class City {
    private int id;
    private String code;
    private String name;
    private String provinceid;

    public City() {
    }

    public City(int id, String code, String name, String provinceid) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.provinceid = provinceid;
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

    public String getProvinceid() {
        return provinceid;
    }

    public void setProvinceid(String provinceid) {
        this.provinceid = provinceid;
    }
    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", provinceid=" + provinceid +
                '}';
    }
}
