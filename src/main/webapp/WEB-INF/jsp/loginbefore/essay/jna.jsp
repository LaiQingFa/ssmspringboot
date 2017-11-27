<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>java native access</title>
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
            <h1><a href="index.html">JNA笔记</a></h1>
            <p><label class="of"></label>2017.10.30<label class="on"></label></p>
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

                <h2 class="w3">Java Native Access</h2>
                <div class="single">

                    <div class="b-bottom">
                        <h5 class="top">JNA（Java Native Access ）提供一组Java工具类用于在运行期动态访问系统本地库（native library：如Window的dll）而不需要编写任何Native/JNI代码。</h5>

                        <p class="sub">事实上，很多java核心代码内部是由JNI(Java Native Interface)实现的。</p>
                        <p class="sub">JNI是Java调用原生函数的机制。</p>

                        <p>&nbsp</p>
                        <h3>JNA简介</h3>
                        <p>&nbsp</p>
                        <p>和.Net的平台机制P/Invoke调用原生函数一样方便，但编写方法截然不同，JNA没有使用Annotation，而是通过编写一般的JAVA代码实现</p>
                        <p>实现原理：JNI 是 Java 调用原生函数唯一的机制。JNA 也是建立在 JNI 技术之上的。JNA 提供了一个动态的 C 语言编写的转发器，可以自动实现 Java和 C 的数据类型映射。 你不再需要编写那个烦人的 C 动态链接库。 </p>
                        <p>JNA 不使用 native 关键字。 </p>
                        <p>JNI 使用 native 关键字，使用一个个 Java 方法来代表外部的原生函数。而 JNA 使用一个 Java 接口来代表一个动态链接库发布的所有函数。 </p>
                        <p>对于不需要的原生函数，你可以不在 Java 接口中声明 Java方法原型</p>
                        <p>&nbsp </p>
                        <h3>java和原生代码类型映射</h3>
                        <p>&nbsp </p>

                        <p>Java— — — —C  和操作系统数据类型的对应表</p>
                        <p>&nbsp </p>

                        <table border="1" >
                            <tr>
                                <th>Java类型</th>
                                <th>&nbsp;&nbsp; c类型&nbsp;&nbsp;</th>
                                <th>&nbsp;&nbsp;原生表现</th>

                            </tr>
                            <tr>
                                <td>boolean</td>
                                <td>&nbspint</td>
                                <td>&nbsp&nbsp32位整数(可定制)</td>
                            </tr>
                            <tr>
                                <td>byte</td>
                                <td>&nbspchar</td>
                                <td>&nbsp&nbsp8位整数</td>
                            </tr>
                            <tr>
                                <td>char</td>
                                <td>&nbspwchar_t</td>
                                <td>&nbsp&nbsp平台依赖</td>
                            </tr>
                            <tr>
                            <td>short</td>
                            <td>&nbspshort</td>
                            <td>&nbsp&nbsp16 位整数</td>
                            </tr>

                            <tr>
                                <td>int</td>
                                <td>&nbspint</td>
                                <td>&nbsp&nbsp32位整数</td>
                            </tr>

                            <tr>
                                <td>long</td>
                                <td>&nbsplonglong,__int64</td>
                                <td>&nbsp&nbsp64位整数</td>
                            </tr>
                            <tr>
                                <td>float</td>
                                <td>&nbspfloat</td>
                                <td>&nbsp&nbsp32位整数</td>
                            </tr>
                            <tr>
                                <td>double</td>
                                <td>&nbspdouble</td>
                                <td>&nbsp&nbsp64位整数</td>
                            </tr>
                            <tr>
                                <td>Buffer Pointer </td>
                                <td>&nbsppointer</td>
                                <td>&nbsp&nbsp平台依赖(32 或 64 位指针)</td>
                            </tr>
                            <tr>
                                <td>&lt;T&gt;[](基本类型的数组)</td>
                                <td>&nbsp pointer array</td>
                                <td>&nbsp&nbsp  32或64位指针(参数/返回值) 邻接内存(结构体成员)</td>
                            </tr>
                        </table>

                        <p>&nbsp </p>

                        <h3>JNA支持常见的数据类型的映射</h3>
                        <p>&nbsp </p>

                        <table border="1">
                            <tr>
                                <th>Java类型</th>
                                <th>&nbsp; c类型</th>
                                <th>&nbsp;&nbsp;原生表现</th>

                            </tr>
                            <tr>
                                <td>String</td>
                                <td>&nbsp;  char*</td>
                                <td>&nbsp;&nbsp;  \0 结束的数组 (nativeencodingorjna.encoding)
                                </td>
                            </tr>
                            <tr>
                                <td>WString</td>
                                <td>&nbsp;   wchar_t* </td>
                                <td>&nbsp;&nbsp;  \0 结束的数组(unicode) </td>
                            </tr>
                            <tr>
                                <td>char</td>
                                <td>&nbsp; wchar_t</td>
                                <td>&nbsp;&nbsp; 平台依赖</td>
                            </tr>
                            <tr>
                                <td>String[]</td>
                                <td>&nbsp;  char**</td>
                                <td>&nbsp;&nbsp;  \0 结束的数组的数组</td>
                            </tr>

                            <tr>
                                <td>WString[]</td>
                                <td>&nbsp; wchar_t** </td>
                                <td>&nbsp;&nbsp;  \0 结束的宽字符数组的数组</td>
                            </tr>

                            <tr>
                                <td>Structure</td>
                                <td>&nbsp;  struct* struct
                                </td>
                                <td>&nbsp;&nbsp;  指向结构体的指针 (参数或返回值) (或者明确指定是结构体指 针) 结构体(结构体的成员)(或者明确指定是结构体)</td>
                            </tr>
                            <tr>
                                <td>Union</td>
                                <td>&nbsp;   union </td>
                                <td>&nbsp;&nbsp;    等同于结构体</td>
                            </tr>
                            <tr>
                                <td>Structure[]</td>
                                <td>&nbsp;  struct[]</td>
                                <td>&nbsp;&nbsp;   结构体的数组，邻接内存</td>
                            </tr>
                            <tr>
                                <td> Callback </td>
                                <td>&nbsp;   &lt;T&gt;(*fp)() </td>
                                <td>&nbsp;&nbsp;   Java 函数指针或原生函数指针</td>
                            </tr>
                            <tr>
                            <td>NativeMapped</td>
                            <td>&nbsp; varies</td>
                            <td>&nbsp;&nbsp;  依赖于定义</td>
                        </tr>
                            <tr>
                                <td>NativeLong</td>
                                <td>&nbsp; long</td>
                                <td>&nbsp;&nbsp;  平台依赖(32 或 64 位整数) </td>
                            </tr>
                            <tr>
                                <td>PointerType</td>
                                <td>&nbsp; pointer </td>
                                <td>&nbsp;&nbsp;  和 Pointer 相同</td>
                            </tr>
                        </table>
                        <p>&nbsp;</p>
                        <p>JNI也有它的缺点，使用java与本地已编译的代码交互，通常会丧失平台可移植性。</p>
                        <p>&nbsp;</p>
                        <p class="sub"> 如果有复杂的数据类型需要在 Java和原生函数中传递，那么我们就必须在 Java 中模拟 大量复杂的原生类型。这将大大增加实现的难度，甚至无法实现。 如果在 Java 和原生函数间存在大量的数据传递，那么一方面，性能会有很大的损失。 更为重要的是，Java调用原生函数时，会把数据固定在内存中，这样原生函数才可以访问这 些 Java数据。这些数据，JVM 的 GC 不能管理，会造成内存碎片。 尽量使用基本、简单的数据类型； 尽量少跨平台、跨语言传递数据</p>
                        <p>&nbsp </p>
                        <a href="https://github.com/java-native-access/jna"> jna github开源地址</a>
                        <p>&nbsp </p>
                        <a href="http://pan.baidu.com/s/1mhM4X0c">JNA3.09API参考手册【良少】</a>
                        <p>&nbsp </p>
                        <a href="http://pan.baidu.com/s/1cyJeBO"> jna使用手册</a>
                        <p>&nbsp </p>
                        <a href="http://blog.csdn.net/woniu211111/article/details/78041868"> windows和linux环境下java调用C++代码-JNI技术</a>
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
                            <h5><a href="restfulApi">* RESTful API的理解</a> </h5>
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