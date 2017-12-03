package com.example.ssmspringboot;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
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

    @Test
    public void save(){

        stringRedisTemplate.opsForValue().set("key1","key1测试value");
        System.out.println("key1的value="+stringRedisTemplate.opsForValue().get("key1")+"_____~~~~~~~~~~");
    }
}