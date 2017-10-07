package com.example.ssmspringboot;

/*  springBoot+ssm+mysql
参考文章：http://blog.csdn.net/liboyang71/article/details/73459909


如果要将项目打成war：
	application.properties 中不设置访问路径以及端口
  访问路径：端口号：项目名/路径  例： http://localhost:8080/ssmspringboot/index
  其余参考：http://blog.csdn.net/yalishadaa/article/details/70037846
  此处不在命令行里输入：
mvn clean package，而是直接在idea的右侧  Maven Project 中双击package ，
然后去项目所在目录的target文件夹复制两个文件，一个war，一个original ,
记得把这两个文件的名称修改成你的项目名，剩下的就是将这两个文件放到tomcat的webapps文件夹下，
点击bin文件夹下的startup.bat



*/


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.ErrorMvcAutoConfiguration;
//exclude = ErrorMvcAutoConfiguration.class  去掉springboot默认的异常处理
@SpringBootApplication(exclude = ErrorMvcAutoConfiguration.class)
public class SsmspringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(SsmspringbootApplication.class, args);
	}
}
