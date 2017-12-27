<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/27
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>数据库操作优化</title>
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
            <h1><a href="index.html">数据库操作优化</a></h1>
            <p><label class="of"></label>2017.12.27<label class="on"></label></p>
        </div>
    </div>
</div>

<!-- technology-left -->
<div class="technology">
    <div class="container">
        <div class="col-md-9 technology-left">
            <div class="agileinfo">

                <h2 class="w3">mysql 批量更新</h2>
                <div class="single">

                    <div class="b-bottom">
                        <p>&nbsp</p>
                        <h3>* </h3>
                        <p>UPDATE mytable
                            SET myfield = CASE id
                            WHEN 1 THEN 'value'
                            WHEN 2 THEN 'value'
                            WHEN 3 THEN 'value'
                            END
                            WHERE id IN (1,2,3)</p>
                        <p>&nbsp </p>

                        <p>这里使用 case when，这句sql的意思是，更新display_order 字段，如果id=1 则display_order 的值为3，如果id=2 则 display_order 的值为4，如果id=3 则 display_order 的值为5 </p>
                        <p>&nbsp </p>

                        <h3>* </h3>
                        <p>replace into 批量更新</p>
                        <p>&nbsp </p>

                        <p>replace into test_tbl (id,dr) values (1,'2'),(2,'3'),...(x,'y');</p>
                        <p>&nbsp;</p>

                        <p>&nbsp </p>

                        <h3>* </h3>
                        <p>insert into ...on duplicate key update批量更新</p>
                        <p>&nbsp </p>

                        <p>insert into test_tbl (id,dr) values (1,'2'),(2,'3'),...(x,'y') on duplicate key update dr=values(dr);</p>
                        <p>&nbsp;</p>
                        <p>&nbsp </p>

                        <h3>* </h3>
                        <p>创建临时表，先更新临时表，然后从临时表中update</p>
                        <p>&nbsp </p>

                        <p>create temporary table tmp(id int(4) primary key,dr varchar(50));</p>
                        <p>insert into tmp values  (0,'gone'), (1,'xx'),...(m,'yy');</p>
                        <p>update test_tbl, tmp set test_tbl.dr=tmp.dr where test_tbl.id=tmp.id;</p>
                        <p>&nbsp;</p>
                        <p>注意：这种方法需要用户有temporary 表的create 权限。</p>
                        <p>&nbsp;</p>

                        <a href="http://blog.csdn.net/u014520745/article/details/52416002"> 大批量更新数据mysql批量更新的四种方法</a>
                         <p>&nbsp </p>



                        <p>On oct 30 <a class="span_link" href=" "><span class="glyphicon glyphicon-comment"></span>0 </a><a class="span_link" href=" "><span class="glyphicon glyphicon-eye-open"></span>56 </a></p>

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
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="restfulApi">* RESTful API的理解</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="restfulApi">* 在java中使用python脚本</a> </h5>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="blog-grids">
                        <div  >
                            <h5><a href="databaseOptimization">* 数据库操作优化</a> </h5>
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
