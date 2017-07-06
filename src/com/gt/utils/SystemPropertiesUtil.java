package com.gt.utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

/**
 * Properties文件操作类
 * @author qusk
 * @date 2015年10月20日
 * @description
 */
public class SystemPropertiesUtil {
	private static SystemPropertiesUtil single=null;  
	private Properties properties;

	private SystemPropertiesUtil(){
		InputStream is;
		try {
			 is = JavaMailWithAttachment.class.getResourceAsStream("/config/properties/system.properties");
			properties = new Properties();  
			properties.load(is);  
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
	public static SystemPropertiesUtil getInstance() {  
        if (single == null) {    
            single = new SystemPropertiesUtil();  
        }    
       return single;  
   }  
	/**
	 * 项目web——URL
	 * @return
	 */
	public String getWebHongUrl(){
		return properties.getProperty("web_home_url");
	}
	
	/**
	 * 读取指定属性
	 * @param propName 属性名
	 * @return 对应值
	 */
	public String get(String propName){
		return properties.getProperty(propName);
	}
	
	/**
	 * 读取微官网素材地址
	 */
	public String getWebsite_material(){
		return properties.getProperty("read_website_material");
	}
	
	/**
	 * 读取微场景素材地址
	 */
	public String getScene_material(){
		return properties.getProperty("read_scene_material");
	}
	
	/**
	 * 读取菜单图标地址
	 */
	public String getEdit_material_ico(){
		return properties.getProperty("read_edit_material_ico");
	}
	
	/**
	 * 读取背景图地址
	 */
	public String getEdit_material_back(){
		return properties.getProperty("read_edit_material_back");
	}
	
	/**
	 * 读取幻灯片地址
	 */
	public String getEdit_material_slide(){
		return properties.getProperty("read_edit_material_slide");
	}
	
	/**
	 * 读取写入地址
	 */
	public String getWrite_material_url(){
		return properties.getProperty("write_material_url");
	}
	
	/**
	 * 素材打包后存放地址
	 * @return
	 */
	public String getMaterial_zip_url(){
		return properties.getProperty("material_zip_url");
	}
	
	public String getMail_smtp_host(){
		return properties.getProperty("mail_smtp_host");
	}
	
	/**
	 * 获取发送者的邮箱名
	 * @return
	 */
	public String getMail_sender_username(){
		return properties.getProperty("mail_sender_username");
	}
	
	/**
	 * 获取发送者的邮箱密码
	 * @return
	 */
	public String getMail_sender_password(){
		return properties.getProperty("mail_sender_password");
	}
	
	/**
	 * 读取所有
	 * @return map
	 */
	public Map<Object, Object> getAll(){
		Map<Object, Object> all = new HashMap<Object, Object>();
		Set<Entry<Object, Object>> map = properties.entrySet();
		for (Entry<Object, Object> entry : map) {
			all.put(entry.getKey(), entry.getValue());
		}
		return all;
	}
	/*public static void main(String[] args) {
		System.out.print(SystemPropertiesUtil.getInstance().getWebsite_material());
	}*/

	public String getSmsUser() {
		return properties.getProperty("sms.user");
	}

	public String getSmsPwd() {
		return properties.getProperty("sms.pwd");
	}
}
