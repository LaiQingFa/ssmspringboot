package com.example.ssmspringboot;

/*  springBoot+ssm+mysql
参考文章：http://blog.csdn.net/liboyang71/article/details/73459909

javascript限制只能输入正整数：

<input type="text" ID="txtNumber" Width="50px" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
     onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}" />

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
