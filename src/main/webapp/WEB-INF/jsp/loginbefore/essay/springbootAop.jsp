<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>SpringBoot Aop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="indexSource/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href='http://fonts.useso.com/css?family=Raleway:400,600,700' rel='stylesheet' type='text/css'>
    <link href="indexSource/css/style.css" rel='stylesheet' type='text/css' />
    <script src="indexSource/js/jquery-1.11.1.min.js"></script>
    <script src="indexSource/js/bootstrap.min.js"></script>
</head>
<body>
<div class="header" id="ban">
    <div class="container">
        <div class="head-left">
            <div class="header-search">
                <div class="search">
                    <input class="search_box" type="checkbox" id="search_box">
                    <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                    <div class="search_form">
                        <form action="#" method="post">
                            <input type="text" name="Search" placeholder="Search...">
                            <input type="submit" value="Send">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_right">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav class="link-effect-7" id="link-effect-7">
                        <ul class="nav navbar-nav">
                            <li><a href="index">Main</a></li>
                            <li><a href="synopsis">文章</a></li>
                            <li><a href="features.html">Features</a></li>
                            <li><a href="travel.html">Travel</a></li>
                            <li><a href="fashion.html">Fashion</a></li>
                            <li><a href="music.html">Music</a></li>
                            <li><a href="codes.html">Codes</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        <div class="nav navbar-nav navbar-right social-icons wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
            <ul>
                <li><a href="#"> </a></li>
                <li><a href="#" class="pin"> </a></li>
                <li><a href="#" class="in"> </a></li>
                <li><a href="#" class="be"> </a></li>

                <li><a href="#" class="vimeo"> </a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--start-main-->
<div class="header-bottom">
    <div class="container">
        <div class="logo">
            <h1><a href="index.html">springboot笔记</a></h1>
            <p><label class="of"></label>2017.9.27<label class="on"></label></p>
        </div>
    </div>
</div>
<!-- banner -->

<div class="banner-1">

</div>

<!-- technology-left -->
<div class="technology">
    <div class="container">
        <div class="col-md-9 technology-left">
            <div class="agileinfo">

                <h2 class="w3">SpringBoot Aop 面向方法(切面)编程</h2>
                <div class="single">
                    <div class="b-bottom">
                        <h3>就是指把业务逻辑代码和处理琐碎事物的代码分离开来，以便达到重用或者解耦的目的（日志、事务处理、监控）。</h3>

                        <p>&nbsp</p>

                        <p>1.引入依赖 spring-boot-starter-aop,默认开启aop支持</p>

                        <p>&nbsp</p>
                        <p>2.写一个类，注解是@Aspect，封装横切关注点，(日志、监控等等)，写一个方法(注解:@before或者其他），配置通知(前置通知，后置通知等等)和切入点（那些包的哪些类的哪些方法） </p>
                        <p>&nbsp</p>
                        <p>方法前的注解例子：@before(execution("com.edu.spring.springboot.dao..*.*(..)"))</p>
                        <p>&nbsp</p>
                        <p>3. 这个类需要纳入到spring容器进行管理</p>
                        <p>&nbsp</p>
                        <p>4.spring.aop.auto配置项决定是否启动sop，默认启用</p>
                        <p>&nbsp</p>
                        <p>5.默认是使用jdk的动态代理来实现aop</p>
                        <p>&nbsp</p>
                        <p>6.spring.aop.proxy-target-class=false 或者不配置，表示使用jdk的动态代理</p>
                        <p>=true 表示使用cglib</p>
                        <p>&nbsp</p>
                        <p>7.如果配置了false，而类没有接口，亦然使用cglib</p>
                        <p>&nbsp</p>




                        <p>On Sep 27 <a class="span_link" href=" "><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href=" "><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>

                    </div>
                </div>


                <div class="response">

                    <div class="media response-info">
                        <div class="media-left response-text-left">
                            <a href="#">

                            </a>

                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="media response-info">


                        <div class="clearfix"> </div>
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <!-- technology-right -->
        <div class="col-md-3 technology-right">


            <div class="blo-top1">

                <div class="tech-btm">
                    <h4>文章列表 </h4>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="synopsis">* springboot简介</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                    <div class="blog-grids">
                        <div  >
                            <h5><a href="mavenAddJarLocal">* maven托管下引入本地的jar包</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="springbootaop">* SpringBoot Aop 面向方法(切面)编程</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="springMicroservices">* Microservices -- Springboot微服务</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                  <p>Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur, at pro</p>
                </div>



            </div>


        </div>
        <div class="clearfix"></div>
        <!-- technology-right -->
    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="col-md-4 footer-left">
            <h4>About Me</h4>
            <p>Consectetur adipisicing Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod .</p>

        </div>
        <div class="col-md-4 footer-middle">
            <h4>Latest Tweet</h4>
            <div class="mid-btm">
                <p>Sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod .</p>
                <a href="http://sc.chinaz.com/">http://sc.chinaz.com/</a>
            </div>
        </div>
        <div class="col-md-4 footer-right">
            <h4>Newsletter</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>


            <div class="clearfix"> </div>

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="copyright">
    <div class="container">
        <p>于2017.9.25开始开发</p>
    </div>
</div>
</body>
</html>