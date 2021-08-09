package com.zzy.test;

import com.zzy.Application;
import com.zzy.dao.TestLamber;
import com.zzy.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by Administrator on 2021-08-03.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Application.class)
public class TestLog {

    @Autowired
    private UserService userService;

    @Test
    public void test(){
      //  User user = userService.queryUserById("1");
        TestLamber testLamber=(id) ->{ return userService.queryUserById(id);};
        System.out.println(testLamber.queryUserByid("1"));
    }
}
