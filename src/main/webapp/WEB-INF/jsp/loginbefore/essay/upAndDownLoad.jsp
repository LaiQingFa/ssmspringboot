<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/15
  Time: 15:36   upload  download
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>文件上传和下载</title>
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


<div class="banner-1">

</div>

<!-- technology-left -->
<div class="technology">
    <div class="container">
        <div class="col-md-9 technology-left">
            <div class="agileinfo">

                <h2 class="w3">文件上传和下载</h2>
                <div class="single">

                    <div class="b-bottom">


                        <p>&nbsp</p>

                        <p>1. 创建独立的Spring应用程序</p>
                        <p>2. 嵌入的Tomcat，无需部署WAR文件</p>
                        <p>3. 简化Maven配置</p>
                        <p>4. 自动配置Spring</p>
                        <p>5. 提供生产就绪型功能，如指标，健康检查和外部配置</p>
                        <p>6. 绝对没有代码生成和对XML没有要求配置</p>
                        <p>7. 使用约定大于配置的规则</p>
                        <p>&nbsp </p>



                        <h3>参考资料</h3>
                        <p>&nbsp </p>
                        <a href="http://blog.csdn.net/king866/article/details/53996632"> spring boot介绍及使用详解</a>
                        <p>&nbsp </p>


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
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="callbackFunction">* java回调函数</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="aboutjna">* JNA</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="upAndDownLoad">* 文件的上传下载</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>







                    <p>不定时新增文章</p>
                </div>



            </div>


        </div>
        <div class="clearfix"></div>
        <!-- technology-right -->
    </div>
</div>

<div class="copyright">
    <div class="container">
        <p>2017.11.15</p>
    </div>
</div>
</body>
</html>
