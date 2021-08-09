package com.zzy.controller;

import com.zzy.entity.User;
import com.zzy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2021-08-03.
 */
@Controller
@RequestMapping(value = "/user",produces = "text/html;charset=UTF-8", method = {RequestMethod.GET,RequestMethod.POST})
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    @ResponseBody
    public User loginUser(Model model){

        User user = userService.queryUserById("1");
        System.out.println(user);
        model.addAttribute("user",user);
        return user;
    }
    @RequestMapping("/showUsers")
    @ResponseBody
    public List<User> showUsers(Model model){
        List<User> users = userService.findAllUsers();

        return users;
    }
    @RequestMapping("/logintest")
    @ResponseBody
    public String logintest(String name){

        System.out.println(name);
        if("张三".equals(name)){
            return "成功了";
        }else{
            return "失败了!!!";
        }
    }
}
