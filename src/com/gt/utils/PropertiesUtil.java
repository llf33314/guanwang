package com.gt.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;


/**
 * Properties 读取工具
 * @author lfx
 *
 */
public class PropertiesUtil {
	
	private static Properties prop=null;
	
	static {   
        prop = new Properties();   
        InputStream in = PropertiesUtil.class.getResourceAsStream("/config/properties/system.properties");   
        try {
			prop.load(in);
		} catch (IOException e) {
			e.printStackTrace();
		}   
    }   
	
	/**
	 * 获取静态图片资源url
	 * @return
	 */
	public static String getStaticImageUrl(){
        return prop.getProperty("get_images_static_url");
	}
	
	/**
	 * 获取静态视频资源url
	 * @return
	 */
	public static String getStaticVideoUrl(){
		return prop.getProperty("get_video_static_url");
	}
	/**
	 * 获取静态音频资源url
	 * @return
	 */
	public static String getStaticAudioUrl(){
		return prop.getProperty("get_audio_static_url");
	}
	
	/**
	 * 获取移动端官网地址
	 * @return
	 */
	public static String getWebHomeMobileUrl(){
		return prop.getProperty("web_home_mobile_url");
	}

	/**
	 * 图片资源ftp ip
	 * @return
	 */
	public static String getStaticSourceFtpIp(){
		return prop.getProperty("static.source.ftp.ip");
	}
	
	
	/**
	 * 图片资源ftp 端口
	 * @return
	 */
	public static String getStaticSourceFtpPort(){
		return prop.getProperty("static.source.ftp.port");
	}
	

	/**
	 * 图片资源ftp 密码
	 * @return
	 */
	public static String getStaticSourceFtpPwd(){
		return prop.getProperty("static.source.ftp.password");
	}
	

	/**
	 * 图片资源ftp 用户
	 * @return
	 */
	public static String getStaticSourceFtpUser(){
		return prop.getProperty("static.source.ftp.user");
	}
	
	/**
	 * redis ip
	 * @return
	 */
	public static String getRedisIp(){
		return prop.getProperty("redis.ip");
	}
	
	
	/**
	 * redis port
	 * @return
	 */
	public static String getRedisPort(){
		return prop.getProperty("redis.port");
	}
	
	
	/**
	 * redis pwd
	 * @return
	 */
	public static String getRedisPwd(){
		return prop.getProperty("redis.pwd");
	}
	
	/**
	 * 获取访问文章资源URL
	 * @return
	 */
	public static String getArticleUrl(){
        return prop.getProperty("article.url.prefix");
	}
	
	/**
	 * 多粉服务号的应用号
	 * @return
	 */
	public static String getAppid(){
		String url=prop.getProperty("duofen.appid.prefix");
		return url;
	}
	
	public static String getWebPayUrl(){
        return prop.getProperty("webpay.url.prefix");
	}
	
	public static String getWebPayBusId(){
        return prop.getProperty("web.pay.id");
	}
}
