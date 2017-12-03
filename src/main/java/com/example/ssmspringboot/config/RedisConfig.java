package com.example.ssmspringboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;

@Configuration
public class RedisConfig {

    @Bean
    JedisConnectionFactory jedisConnectionFactory(){
        return  new JedisConnectionFactory();
    }

    /**
     * 存入对象序列化信息
     * @return
     */
    @Bean
    public RedisTemplate<String,UserInfo> redisSerizlizerObj(){
        RedisTemplate<String,UserInfo> redisTemplate = new RedisTemplate<String,UserInfo>();
        redisTemplate.setConnectionFactory(jedisConnectionFactory());
        redisTemplate.setKeySerializer(new StringRedisSerializer());
        redisTemplate.setValueSerializer(new RedisObjectSerializer());
        return redisTemplate;
    }
}