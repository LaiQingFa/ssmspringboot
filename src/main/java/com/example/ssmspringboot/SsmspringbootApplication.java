package com.example.ssmspringboot;

/*  springBoot+ssm+mysql
参考文章：http://blog.csdn.net/liboyang71/article/details/73459909*/


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.ErrorMvcAutoConfiguration;

@SpringBootApplication(exclude = ErrorMvcAutoConfiguration.class)
public class SsmspringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(SsmspringbootApplication.class, args);
	}
}
