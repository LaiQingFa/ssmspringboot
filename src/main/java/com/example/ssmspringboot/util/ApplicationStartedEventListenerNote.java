package com.example.ssmspringboot.util;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * 当项目启动的时候会执行当前类的run方法
 * 服务启动执行 当前方法
 *
 *@这里value值越小，启动的优先级越高，可以写多个类实现CommandLineRunner接口，优先级按照value值划分
 * @blog  http://blog.csdn.net/catoop/

 *
 *
 *
 * JDK5新特性之一
    String... excludeProperty表示不定参数，也就是调用这个方法的时候这里可以传入多个String对象
 */
@Component
@Order(value=1)
public class ApplicationStartedEventListenerNote implements CommandLineRunner {

    @Override
    public void run(String... args) throws Exception {
        //System.out.println(">>>>>>>>>>>>>>>服务启动执行，执行加载数据等操作 11111111 <<<<<<<<<<<<<");
    }
}
