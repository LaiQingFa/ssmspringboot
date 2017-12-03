package com.example.ssmspringboot;

import com.example.ssmspringboot.config.UserInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * redis测试用例
 * 参考：http://blog.csdn.net/qq_31001665/article/details/74080154
 */
@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class RedisAutoTest {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;
    @Autowired
    private RedisTemplate<String,UserInfo> Template;


    @Test
    public void save(){

        stringRedisTemplate.opsForValue().set("key1","key1测试value");
        System.out.println("key1的value="+stringRedisTemplate.opsForValue().get("key1")+"_____~~~~~~~~~~");
    }


    @Test
    public void testobjSerializer() throws InterruptedException {
        UserInfo user = new UserInfo("111111","snow","112358");
        Template.opsForValue().set("User:snow",user);

        System.out.println( Template.hasKey("User:snow")+"   ————————————————————————————");
        System.out.println( Template.opsForValue().get("User:snow")+"   ————————————————————————————");

    }
}