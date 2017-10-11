package com.example.ssmspringboot.util;

import java.net.Socket;
import java.util.HashMap;

/**
 * 管理线程 放进hashmap   存取socket
 */
public class ManageThread {

    public static HashMap hm=new HashMap<String,SerConClientThread>();

    //把创建好的serConClientThread线程放进hashmap
    public void addserConClientThread(String ip,SerConClientThread serConClientThread){

        hm.put(ip, serConClientThread);

    }


    //可以通过ip取得该线程
    public SerConClientThread getSerConClientThread(String ip){

        return (SerConClientThread)hm.get(ip);
    }
}



class SerConClientThread extends Thread {

    Socket socket;

    public SerConClientThread(Socket s){

        //把服务器与客户端的s赋给socket
        this.socket= s;



    }

    /**
     * 获取socket对象
     * @return
     */
    public Socket getsocket(){


        return this.socket;

    }

    public void run(){



    }

}