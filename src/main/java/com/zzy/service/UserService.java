package com.zzy.service;

import com.zzy.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2021-08-03.
 */
public interface UserService {
    User queryUserById(String id);
    List<User> findAllUsers();
}
