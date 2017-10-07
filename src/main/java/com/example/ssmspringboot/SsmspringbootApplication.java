package com.example.ssmspringboot;

/*  springBoot+ssm+mysql
参考文章：http://blog.csdn.net/liboyang71/article/details/73459909

javascript限制只能输入正整数：

<input type="text" ID="txtNumber" Width="50px" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
     onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}" />

要搞spring cloud，觉得要有三个条件吧，
    1项目有需求
    2 spring boot玩的很6
    3  对微服务架构有一定的研究

作为app的服务端框架，spring boot 我理解就是把spring spring mvc spring data jpa 等等的一些常用的常用的基础框架组合起来，提供默认的配置，然后提供可插拔的设计，就是各种starter，来方便开发者使用这一系列的技术，套用官方的一句话，spring 家族发展到今天，已经很庞大了，作为一个开发者，如果想要使用spring 家族一系列的技术，需要一个一个的搞配置，然后还有个版本兼容性问题，其实挺麻烦的，偶尔也会有小坑出现，其实蛮影响开发进度，spring boot 就是来解决这个问题，提供了一个解决方案吧，可以先不关心如何配置，可以快速的启动开发，进行业务逻辑编写，各种需要的技术，加入starter就配置好了，直接使用，可以说追求开箱即用的效果吧，srping cloud 看名称，就是云啊，现在流行云技术啊，spring boot 可以支持你快速的开发出restful 风格的微服务架构，但是这还不够啊，还要上云，所以有了spring cloud

。
目的是创建和启动基于spring框架的项目，伴随着spring4.0诞生的，不需要打包war文件


缺点：1.依赖太多，随便一个springboot应用都有好几十M
     2.缺少服务的注册和发现等解决方案
3.缺少监控集成方案、安全管理方案，集成一个功能强大的集成方案，还是需要自己去解决的
4.中文的文档和资料太少且不够深入

应用场景:微服务 javaweb


spring4

拦截器使用，写一个类实现HandlerInterceptor接口，写一个类继承WebMvcConfigurerAdapter
   	preHandle：controller执行之前调用
  	postHandle：controller执行之后，且页面渲染之前调用
	afterCompletion：页面渲染之后调用，一般用于资源清理操作
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
