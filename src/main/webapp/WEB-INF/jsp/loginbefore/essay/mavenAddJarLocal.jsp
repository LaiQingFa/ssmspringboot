<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>idea中maven依赖本地非repository中的jar包</title>
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

                <h2 class="w3">maven托管下引入本地的jar包</h2>
                <div class="single">
                    <div class="b-bottom">
                         <h3>今天在用IDEA写springboot的demo的时候，碰到一个问题：
                            项目在开发是用maven控制jar包的引入，那么如何引入本地的jar包呢，查询出一种方法是将jar放到本地的maven库中，然后引入，但是觉得麻烦，
                            这里记录一下引入本地jar包的方法。</h3>

                        <p>&nbsp</p>

                        <p>先将jar包放到webapp/WEB-INF/lib下</p>

                        <p>&nbsp</p>
                        <p>&lt;dependency&gt; </p>
                        <p>&lt;groupId&gt;org.apache&lt;/groupId&gt;</p>
                        <p>&lt;artifactId&gt;test&lt;/artifactId&gt; </p>
                        <p>&lt;version&gt;1.0&lt;/version&gt; </p>
                        <p>&lt;scope&gt;system&lt;/scope&gt; </p>
                        <p>&lt;systemPath&gt;${basedir}/src/main/webapp/WEB-INF/lib/httpclient-4.5.2.jar&lt;/systemPath&gt; </p>
                        <p>&lt;/dependency&gt; </p>
                        <p>&nbsp</p>



                        <h3>参考资料</h3>
                        <p>&nbsp </p>
                        <a href="http://blog.csdn.net/chs_jdmdr/article/details/7467305">maven依赖本地非repository中的jar包</a>
                        <p>&nbsp </p>


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
        <p>于2017.9.25开始开发</p>
         </div>
</div>
</body>
</html>