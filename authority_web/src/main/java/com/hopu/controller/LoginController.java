package com.hopu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class LoginController  {

    @PostMapping("/login")
    public String login(String email,String password) {
        return "admin/index";  //TODO
    }

    //退出
    @RequestMapping(value = "/logout",name="用户登出")
    public String logout(){
        return "forward:/login.jsp";
    }
}
