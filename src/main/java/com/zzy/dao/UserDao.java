package com.zzy.dao;

import com.zzy.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2021-08-03.
 */
public interface UserDao {
    User queryUserById(String id);
    List<User> findAllUsers();
}
