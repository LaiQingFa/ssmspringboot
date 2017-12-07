<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>首页</title>
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
    <!-- animation-effect -->
    <link href="indexSource/css/animate.min.css" rel="stylesheet">
    <script src="indexSource/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>

<body>
<div class="header" id="ban">
    <div class="container">
        <div class="head-left wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
            <div class="header-search">
                <div class="search">
                    <input class="search_box" type="checkbox" id="search_box">
                    <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                    <div class="search_form">
                        <form action="#" method="post">
                            <input type="text" name="Search" placeholder="搜索栏（反正也点不了）...">
                            <input type="submit" value="Send">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_right wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
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
                            <li class="active act"><a href="index ">Main</a></li>
                            <li><a href="synopsis">文章</a></li>
                            <li><a href="getUsersPage">分页</a></li>
                            <li><a href="travel.html">Travel</a></li>
                            <li><a href="fashion.html">Fashion</a></li>
                            <li><a href="music.html">Music</a></li>
                            <li><a href="HaiweiKangshiVedio">海康威视摄像头的操作页面</a></li>
                            <li><a href="signin">上帝之门</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        <div class="nav navbar-nav navbar-right social-icons wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
            <ul>
                <li><a href="https://www.facebook.com/"> </a></li>
                <li><a href="#" class="pin"> </a></li>
                <li><a href="#" class="in"> </a></li>
                <li><a href="#" class="be"> </a></li>

                <li><a href="#" class="vimeo"></a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--start-main-->
<div class="header-bottom">
    <div class="container">
        <div class="logo wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
            <h1><a href="index.html">springboot开发记录</a></h1>
            <p><label class="of"></label>springboot+ssm+mysql<label class="on"></label></p>
        </div>
    </div>
</div>
<!-- banner -->

<div class="banner">
    <div class="container">
        <h2>主要用于记录springboot的使用</h2>
        <p>你知道的，现在springboot的公开资料并不多，目前项目只是介绍springboot web的使用，未来会添加redis，目前使用的是tomcat容器，未来会尝试使用jboss，weblogic等，还会尝试负载均衡，，，不过那都是后话了。更新ing....</p>
        <a href="singlepage.html">click now</a>
    </div>
</div>
<div class="services w3l wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
    <div class="container">
        <div class="grid_3 grid_5">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">途中</a></li>
                    <li role="presentation" class=""><a href="#safari" role="tab" id="safari-tab" data-toggle="tab" aria-controls="safari">旅行</a></li>
                    <li role="presentation" class=""><a href="#trekking" role="tab" id="trekking-tab" data-toggle="tab" aria-controls="trekking">见闻</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade" id="expeditions" aria-labelledby="expeditions-tab">

                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/m2.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/m1.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/m3.jpg" class="img-responsive" alt="Wanderer">
                        </div>

                        <div class="clearfix"></div>
                    </div>


                    <div role="tabpanel" class="tab-pane fade" id="safari" aria-labelledby="safari-tab">
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/t1.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/t2.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/t3.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade active in" id="trekking" aria-labelledby="trekking-tab">


                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/f2.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/f4.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="col-md-4 col-sm-5 tab-image">
                            <img src="indexSource/images/f3.jpg" class="img-responsive" alt="Wanderer">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- technology-left -->
<div class="technology">
    <div class="container">



    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="col-md-4 footer-left wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
            <h4>About Me</h4>
            <p>Consectetur adipisicing Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod .</p>
            <img src="indexSource/images/t4.jpg" class="img-responsive" alt="">

        </div>
        <div class="col-md-4 footer-middle wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
            <h4>Latest Tweet</h4>
            <div class="mid-btm">
                <p>Sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod .</p>

            </div>

            <p>Consectetur adipisicing Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod .</p>


        </div>
        <div class="col-md-4 footer-right wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
            <h4>Newsletter</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>
            <div class="clearfix"> </div>

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="copyright wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
    <div class="container">
        <p>于2017.9.25开始开发</p>
    </div>
</div>
</body>
</html>