package com.example.ssmspringboot.controller;

import com.example.ssmspringboot.dao.User;
import com.example.ssmspringboot.domain.UserMapper;
import com.example.ssmspringboot.util.Page;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {
    //依赖注入
    @Autowired
    UserMapper userMapper;

    @RequestMapping("/")
    public String index(ModelMap map) {
        // 加入一个属性，用来在模板中读取
        map.addAttribute("host", "http://blog.didispace.com");
        // return模板文件的名称，对应src/main/resources/templates/index.html
        return "index";
    }

    /**
     * 在java中使用python脚本
     * @param map
     */
    @RequestMapping("/pythonJavaCon")
    public void pythonJavaCon(ModelMap map) {

        PythonInterpreter interpreter = new PythonInterpreter();
        interpreter.execfile("G:/my_utils.py");
        PyFunction func = (PyFunction) interpreter.get("adder", PyFunction.class);

        int a = 2010, b = 6;
        PyObject pyobj = func.__call__(new PyInteger(a), new PyInteger(b));
        System.out.println("在java中使用python脚本_____anwser = " + pyobj.toString());
    }

}