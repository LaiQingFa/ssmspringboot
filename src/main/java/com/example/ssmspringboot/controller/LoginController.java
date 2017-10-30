package com.example.ssmspringboot.controller;

import com.example.ssmspringboot.dao.User;
import com.example.ssmspringboot.domain.UserMapper;
import com.example.ssmspringboot.util.ByteUtil;
import com.example.ssmspringboot.util.MyHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;


   /* idea使用git进行项目管理
    参考自http://www.cnblogs.com/java-maowei/p/5950930.html
    2017.9.28
    IntelliJ Idea SpringBoot 数据库增删改查实例
    http://blog.csdn.net/peng_hong_fu/article/details/53691705
    2017.9.29*/


   /*java 中,方法参数为(string...names)
           这个是参数不确定个数的定义说明，是JAVA泛型的一种体现，原理与(String[] names)基本一致
           例如：
           定义：public List getPerson(String ... names)(){}
        调用：gerPerson("aaa","bbb")*/
@Controller
public class LoginController {

    @Autowired
    UserMapper userMapper;


 /*   @PostMapping("/login")
    public String Login(@RequestParam(value="username")String username,@RequestParam(value="password")String password){


        return "/login";
    }*/

    @GetMapping("/help")
    public String Login() {
        throw new IllegalArgumentException("###############");
    }

    /**
     *
     * 进入首页
     * @param model
     * @return
     */
    @RequestMapping("index")
    public String sucessjsp(Model model){
        User u=userMapper.selectByPrimaryKey(1);
        //System.out.print(u.getUsername());
        model.addAttribute("root",u.getUsername());
        return "/index";
    }

    /**
     * 跳转到mavenAddJarLocal文章
     * @return
     */
    @RequestMapping("mavenAddJarLocal")
    public String mavenAddJarLocal(){

        return "/loginbefore/essay/mavenAddJarLocal";
    }
       /**
        * SpringBoot Aop 面向方法(切面)编程
        * @return
        */
       @RequestMapping("springbootaop")
       public String springbootaop(){

           return "/loginbefore/essay/springbootAop";
       }
       /**
        * Microservices -- Springboot微服务
        * @return
        */
       @RequestMapping("springMicroservices")
       public String springMicroservices(){

           return "/loginbefore/essay/Microservices";
       }
       /**
        * java回调函数
        * @return
        */
       @RequestMapping("callbackFunction")
       public String callbackFunction(){

           return "/loginbefore/essay/callbackFunction";
       }
       /**
        * java回调函数
        * @return
        */
       @RequestMapping("aboutjna")
       public String aboutjna(){

           return "/loginbefore/essay/jna";
       }
       /**
     * 跳转到简介页面
     * @return
     */
    @RequestMapping("synopsis")
    public String synopsis(){

        return "/loginbefore/synopsis";
    }

    /**
     * 登录页面
     * @return
     */
    @RequestMapping("signin")
    public String signin(){

        return "/loginafter/signin";
    }

    /**
     * 成功登录
     * @return
     */
    @RequestMapping("sucessLogin")
    public String sucessLogin(Model model){
        User u=userMapper.selectByPrimaryKey(1);
        model.addAttribute("username",u.getUsername());
        return "/loginafter/sucessLogin";
    }

    @RequestMapping("test")
    public String test(Model model){

        Map< String, String> params=new HashMap<String, String>();
        String jiji= MyHttpClient.sendHttpPost("http://blog.csdn.net/peng_hong_fu/article/details/53691705",params);


        return "/loginafter/sucessLogin";
    }

    @RequestMapping("socketcoe")
    public String socketcoe() throws IOException, ClassNotFoundException{

        String strOutput = "";

        //监听本地9999端口
        System.out.println("我是服务器，在9000端口监听");
        ServerSocket ss=new ServerSocket(9000);
        //阻塞，等待连接、   循环的监听
        while(true)
        {
            Socket s=ss.accept();
            InetAddress inetAddress=s.getInetAddress();
            String ip=inetAddress.getHostAddress();

            System.out.println("接受客户端发来的信息"+"ip是:"+ip);

            ObjectOutputStream oos =new ObjectOutputStream(s.getOutputStream());

            byte[] b = new byte[1024];

            b[0] = (byte) 0xFC;
            b[1] = (byte) 0x0C;
            b[2] = (byte) 0x00;
            b[3] = (byte) 0x00;
            b[4] = (byte) 0x00;
            b[5] = (byte) 0x00;
            b[6] = (byte) 0x02;
            b[7] = (byte) 0x00;
            b[8] = (byte) 0x00;
            b[9] = (byte) 0x00;
            b[10] = (byte) 0x00;
            b[11] = (byte) 0x5A;
            oos.writeObject(b);
            System.out.println("成功发送");

            //接受客户端发来的信息
            byte[] temp = new byte[1024];
            int bytes = 0;
            InputStream socketReader = s.getInputStream();
            bytes = socketReader.read(temp);
            strOutput += ByteUtil.BinaryToHexString(temp);

//            //读取报文体的内容
//            byte[] array = new byte[2];
//            for (int i = 1; i < 3; i++) {
//                array[i - 1] = temp[i];
//            }
//            int let = ByteUtil.bytes2Short2(array);
//            array = new byte[let];
//            bytes = socketReader.read(array);
//            FC 2B 00 00 00 00 02 00 00 01 01 00 00 47 11 00 00 02 B5 00 01 01 0F 00 00 00 00 00 00 00 00 00 D0 34 03 20 00 00 00 00 67 EC 5A
//            FC 2B 00 00 00 00 02 00 00 01 01 00 00 47 11 00 00 02 B5 00 01 01 0F 00 00 00 00 00 0
            //strOutput += ByteUtil.BinaryToHexString(array);

            // 十进制转化为十六进制，结果为C8。
            // Integer.toHexString(200);

            //帧长
            String zhenchang = strOutput.substring(3, 5);
            //16进制转换成10进制
            int longodzhen=Integer.parseInt(zhenchang,16);
            //获取有效数据
            strOutput=strOutput.substring(0, longodzhen*3-1);
            //获取帧尾
            String check=strOutput.substring(longodzhen*3-3, longodzhen*3-1);
            //帧尾校验  以5A结尾
            if(!check.equals("5A")){
                System.out.println("结尾不是5A，数据丢弃");

            }else{
                System.out.println(strOutput);

            }

            //ObjectInputStream ois=new ObjectInputStream(s.getInputStream());





            //System.out.println("接受客户端发来的信息"+john);


        }



    }

}
