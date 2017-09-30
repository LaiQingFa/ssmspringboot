package com.example.ssmspringboot.util;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
//只有父类为接口，子类需要重写父类的所有方法，实现抽象类不需要重写全部方法
//@Configuration 和下面的注解效果一样
@SpringBootConfiguration
public class WebConfiguration extends WebMvcConfigurerAdapter{
    @Override
    public void addInterceptors(InterceptorRegistry interceptorRegistry) {
        interceptorRegistry.addInterceptor(new LogHandlerInterceptor());
    }
}
