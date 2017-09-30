package com.example.ssmspringboot.controller;

import com.example.ssmspringboot.dao.User;
import com.example.ssmspringboot.domain.UserMapper;
import com.example.ssmspringboot.util.MyHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;


   /* idea使用git进行项目管理
    参考自http://www.cnblogs.com/java-maowei/p/5950930.html
    2017.9.28
    IntelliJ Idea SpringBoot 数据库增删改查实例
    http://blog.csdn.net/peng_hong_fu/article/details/53691705
    2017.9.29*/

@Controller
public class LoginController {

    @Autowired
    UserMapper userMapper;


 /*   @PostMapping("/login")
    public String Login(@RequestParam(value="username")String username,@RequestParam(value="password")String password){


        return "/login";
    }*/

    @GetMapping("/help")
    public String Login() {
        throw new IllegalArgumentException("###############");
    }

    /**
     *
     * 进入首页
     * @param model
     * @return
     */
    @RequestMapping("index")
    public String sucessjsp(Model model){
        User u=userMapper.selectByPrimaryKey(1);
        //System.out.print(u.getUsername());
        model.addAttribute("root",u.getUsername());
        return "/index";
    }

    /**
     * 跳转到mavenAddJarLocal文章
     * @return
     */
    @RequestMapping("mavenAddJarLocal")
    public String mavenAddJarLocal(){

        return "/loginbefore/essay/mavenAddJarLocal";
    }

    /**
     * 跳转到简介页面
     * @return
     */
    @RequestMapping("synopsis")
    public String synopsis(){

        return "/loginbefore/synopsis";
    }

    /**
     * 登录页面
     * @return
     */
    @RequestMapping("signin")
    public String signin(){

        return "/loginafter/signin";
    }

    /**
     * 成功登录
     * @return
     */
    @RequestMapping("sucessLogin")
    public String sucessLogin(Model model){
        User u=userMapper.selectByPrimaryKey(1);
        model.addAttribute("username",u.getUsername());
        return "/loginafter/sucessLogin";
    }

    @RequestMapping("test")
    public String test(Model model){

        Map< String, String> params=new HashMap<String, String>();
        String jiji= MyHttpClient.sendHttpPost("http://blog.csdn.net/peng_hong_fu/article/details/53691705",params);


        return "/loginafter/sucessLogin";
    }

}
