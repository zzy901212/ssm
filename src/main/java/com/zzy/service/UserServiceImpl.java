package com.zzy.service;

import com.zzy.dao.UserDao;
import com.zzy.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2021-08-03.
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public User queryUserById(String id) {
        User user = userDao.queryUserById(id);
        System.out.println(user);
        return user;
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<User> findAllUsers() {
        return userDao.findAllUsers();
    }
}
