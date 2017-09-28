package com.example.ssmspringboot.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

/**
 *  发送http请求并回应
 * @author 张晓光
 * 2016年8月5日
 */
public class MyHttpClient {
   /**
    * 发送http  post 请求的方法
    * @param url 提供服务的主机的资源路径
    * @param params 封装请求参数为一个map,使用时将其他类型的参数转化成string
    * @return 返回json串
    */
	public static String sendHttpPost(String url,Map< String, String> params){

		HttpClientBuilder httpClientBuilder = HttpClientBuilder.create();
		CloseableHttpClient closeableHttpClient = httpClientBuilder.build();
		HttpPost httpPost = new HttpPost(url);
		List<NameValuePair> formparams = new ArrayList<NameValuePair>();
		for (Map.Entry<String, String> paramEntry : params.entrySet()) {
			 formparams.add(new BasicNameValuePair(paramEntry.getKey(), paramEntry.getValue()));
		}
        UrlEncodedFormEntity entity;
        try {
           entity = new UrlEncodedFormEntity(formparams, "UTF-8");
           httpPost.setEntity(entity);
           HttpResponse httpResponse;
           //post请求
           httpResponse = closeableHttpClient.execute(httpPost);
           if(httpResponse.getStatusLine().getStatusCode() == 200){
	           //getEntity()
	           HttpEntity httpEntity = httpResponse.getEntity();
	           if (httpEntity != null) {
	               //打印响应内容
	               return EntityUtils.toString(httpEntity, "UTF-8");
	              }
           }else{
        	     throw new Exception("http 请求异常,请求响应码为"+httpResponse.getStatusLine().getStatusCode());
           }
           //释放资源
           closeableHttpClient.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
        return "";
	}

}
