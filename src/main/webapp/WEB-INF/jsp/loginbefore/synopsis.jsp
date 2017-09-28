<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>文章首页</title>
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
            <p><label class="of"></label>2017.9.26<label class="on"></label></p>
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

                <h2 class="w3">springboot简介</h2>
                <div class="single">
                    <img src="indexSource/images/sing-1.jpg" class="img-responsive" alt="">
                    <div class="b-bottom">
                        <h5 class="top">SpringBoot 是 SpringMVC 的升级版，相对于编码、配置、部署和监控方面，会更加简单</h5>
                        <h3>微服务</h3>
                        <p class="sub">微服务是一个新兴的软件架构，就是把一个大型的单个应用程序和服务拆分为数十个的支持微服务。一个微服务的策略可以让工作变得更为简便，它可扩展单个组件而不是整个的应用程序堆栈，从而满足服务等级协议。</p>
                        <p class="sub">Spring 为 微服务提供了一整套的组件-SpringClound , SpirngBoot 就是该基础。</p>

                        <p>&nbsp</p>
                        <h3>Spring boot的特点</h3>
                        <p>&nbsp</p>
                        <p>1. 创建独立的Spring应用程序</p>
                        <p>2. 嵌入的Tomcat，无需部署WAR文件</p>
                        <p>3. 简化Maven配置</p>
                        <p>4. 自动配置Spring</p>
                        <p>5. 提供生产就绪型功能，如指标，健康检查和外部配置</p>
                        <p>6. 绝对没有代码生成和对XML没有要求配置</p>
                        <p>7. 使用约定大于配置的规则</p>
                        <p>&nbsp </p>

                        <h3>*注意事项：</h3>
                        <p>&nbsp</p>
                        <p>1.开发第一个springboot程序最好使用maven来搭建，文档全程也是maven构建。</p>
                        <p>2.springboot因为是一个最新开发的框架，所以只支持java6以上，java7最好，官方推荐java8。</p>
                        <p>3.需要maven3.2以上版本支持。</p>
                        <p>4.建议使用idea专业版开发，各项支持都比较全</p>
                        <p>&nbsp</p>

                        <h3>Spring Boot的基础结构：</h3>
                        <p>&nbsp</p>
                        <p> .src/main/java  程序开发以及主程序入口</p>
                        <p> .src/main/resources 配置文件</p>
                        <p> .src/test/java  测试程序</p>
                        <p>&nbsp </p>

                        <h3>参考资料</h3>
                        <p>&nbsp </p>
                        <a href="http://blog.csdn.net/peng_hong_fu/article/details/53691705">IntelliJ Idea SpringBoot 数据库增删改查实例</a>
                        <p>&nbsp </p>
                        <a href="http://blog.csdn.net/king866/article/details/53996632"> spring boot介绍及使用详解</a>
                        <p>&nbsp </p>

                        <p class="sub">Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since,Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum has been the industry's standard dummy text ever since Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                        <p>On Aug 01 <a class="span_link" href=" "><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href=" "><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>

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
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/t2.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/m2.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/f2.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/t3.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div class="blog-grid-left">
                            <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                        </div>
                        <div class="blog-grid-right">

                            <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div> <div class="blog-grids">
                    <div class="blog-grid-left">
                        <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                    </div>
                    <div class="blog-grid-right">

                        <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                    </div>
                    <div class="clearfix"> </div>
                </div> <div class="blog-grids">
                    <div class="blog-grid-left">
                        <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                    </div>
                    <div class="blog-grid-right">

                        <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                    </div>
                    <div class="clearfix"> </div>
                </div> <div class="blog-grids">
                    <div class="blog-grid-left">
                        <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                    </div>
                    <div class="blog-grid-right">

                        <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                    </div>
                    <div class="clearfix"> </div>
                </div> <div class="blog-grids">
                    <div class="blog-grid-left">
                        <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                    </div>
                    <div class="blog-grid-right">

                        <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
                    </div>
                    <div class="clearfix"> </div>
                </div> <div class="blog-grids">
                    <div class="blog-grid-left">
                        <a href="singlepage.html"><img src="indexSource/images/m3.jpg" class="img-responsive" alt=""></a>
                    </div>
                    <div class="blog-grid-right">

                        <h5><a href="singlepage.html">Pellentesque dui Maecenas male</a> </h5>
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
        <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
    </div>
</div>
</body>
</html>