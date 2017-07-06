package com.gt.utils;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import com.gt.common.constant.CommonConst;
import com.gt.model.user.User;



/**
 * 获取登录用户信息
 * @author Administrator
 *
 */
public class CommonUtil {
	private static final org.apache.log4j.Logger log = Logger
			.getLogger(CommonUtil.class);

	public static String webRealPath;

	/**
	 * 获取图片存放域名
	 * @param request
	 */
	public static void getImageHomePath(HttpServletRequest request){
		request.setAttribute("resourceUrl", request.getServletContext().getAttribute("resourceUrl"));
	}

	/**
	 * 判断对象是否为空
	 * @param obj
	 * @return
	 */
	public static boolean isEmpty(Object obj){
		boolean b = false;
		try {
			if(obj == null || "".equals(obj)){
				b = true;
			}else{
				b = false;
			}
		} catch (Exception e) {
			b = false;
			e.printStackTrace();
		}
		return b;
	}
	
	/**
	 * 判断对象是否不为空
	 * 
	 * @param obj
	 * @return
	 */
	public static boolean isNotEmpty(Object obj) {
		boolean b = false;
		try {
			if (obj == null || "".equals(obj)) {
				b = false;
			} else {
				b = true;
			}
		} catch (Exception e) {
			b = false;
			e.printStackTrace();
		}
		return b;
	}
	
	/**
	 * 转Integer
	 * @param obj
	 */
	public static Integer toInteger(Object obj){
		try {
			if(!isEmpty(obj)){
				return Integer.parseInt(obj.toString());
			}else{
				throw new Exception("对象为空，转换失败！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	/**
	 * 转Double
	 * @param obj
	 */
	public static Double toDouble(Object obj){
		try {
			if(!isEmpty(obj)){
				return Double.parseDouble(obj.toString());
			}else{
				throw new Exception("对象为空，转换失败！");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 获取session中的登录用户
	 * 
	 * @param request
	 * @return
	 */
	public static User getLoginUser(HttpServletRequest request) {
		try {
			return (User) request.getSession().getAttribute(
					CommonConst.SESSION_USER_KEY);
		} catch (Exception e) {
			log.info(e.getLocalizedMessage());
			e.printStackTrace();
		}
		return null;
	};
	
	/**
	 * 设置session中的登录用户
	 * 
	 * @param request
	 * @return
	 */
	public static void setLoginUser(HttpServletRequest request, User user) {
		try {
			request.getSession().setAttribute(CommonConst.SESSION_USER_KEY, user);
		} catch (Exception e) {
			log.info(e.getLocalizedMessage());
			e.printStackTrace();
		}
	};
	
	/**
	 * 清除session中的登录用户
	 * 
	 * @param request
	 * @return
	 */
	public static void outLoginUser(HttpServletRequest request) {
		try {
			request.getSession().removeAttribute(CommonConst.SESSION_USER_KEY);
		} catch (Exception e) {
			log.info(e.getLocalizedMessage());
			e.printStackTrace();
		}
	};
	
	/**
	 * 格式化字符串
	 * @param format
	 * @param args
	 * @return
	 */
	public static String format(String format, Object... args){
		String str=null;
		str=String.format(format, args);
		return str;
	}
	
	/**
	 * Object转成String
	 * 
	 * @param obj
	 * @return
	 */
	public static String getStr(Object obj) {
		if (obj == null) {
			return "";
		}
		return obj.toString();
	}
}
