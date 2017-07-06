/**
 * @Description:
 * @author: wythelee
 * @date: 2015年7月27日 上午10:28:57
 */
package com.gt.common.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gt.model.user.User;
import com.gt.utils.CheckMobile;
import com.gt.utils.CommonUtil;
import com.gt.utils.JedisUtil;
import com.gt.utils.PropertiesUtil;
import com.gt.utils.XSSRequestWrapper;

import net.sf.json.JSONObject;

@WebFilter(filterName="login",urlPatterns="/*")
public class LoginFilter implements Filter {
	
	private Logger logger=Logger.getLogger(LoginFilter.class);
	
	private String webHomeMobileUrl = PropertiesUtil.getWebHomeMobileUrl(); 
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	//不需要登录就可访问的url
	public static final Map<String, String> urls = new HashMap<String, String>();

	//可通过的文件类型
	public static final List<String> suffixs = new ArrayList<String>();
	
	static{
		urls.put("/user/login.do", "/user/login.do");
		urls.put("/manage/index/toLogin.do", "/manage/index/toLogin.do");
		urls.put("/html/", "/html/");
		
		suffixs.add("js");
		suffixs.add("css");
		suffixs.add("gif");
		suffixs.add("png");
		suffixs.add("jpg");
		suffixs.add("ico");
		suffixs.add("html");
		suffixs.add("dwr");
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 获得在下面代码中要用的request,response,session对象

		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse ServletResponse = (HttpServletResponse) response;
		
		Object obj=servletRequest.getSession().getAttribute("busCount");
		if(CommonUtil.isEmpty(obj)){
			Map<String, Integer > params=new HashMap<String, Integer>();
			String jsonStr = JedisUtil.get("busCount");
			if(!CommonUtil.isEmpty(jsonStr)){
				params = JSONObject.fromObject(jsonStr);
			}else{
				params.put("total",10096 );
				params.put("daysCount",211 );
			}
			servletRequest.getSession().setAttribute("busCount", JSONObject.fromObject(params).toString());
		}
		// HttpServletResponse servletResponse = (HttpServletResponse) response;

		// 从session里取用户对象
		User user= CommonUtil.getLoginUser(servletRequest);

		String url = ((HttpServletRequest) request).getRequestURI();
		String urlwx="";
		if(url.length() > 1){
			//截取URL中的第一个/
			try {
				urlwx = url.substring(1, url.lastIndexOf("/"));
			} catch (Exception e) {
				logger.warn(url);
			}
			
		}
		
		if(url.toUpperCase().indexOf("screenDisplay".toUpperCase()) == -1 && !url.equals("/favicon.ico")){
			// 无需检测访问端
			if(urlwx.equals("DF7E2DO")||url.indexOf("DF7E2DO")>-1){
				chain.doFilter(new XSSRequestWrapper(servletRequest), response);
			}
			// 得到访问端  
	        String userAgent = servletRequest.getHeader( "USER-AGENT" ).toLowerCase();    
//	        String userAgent = "mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/58.0.3029.110 safari/537.36";    
	        if(null == userAgent){    
	            userAgent = "";    
	        }  
	        boolean isFromMobile = CheckMobile.check(userAgent);
			//如果URL是无需拦截页面
			if(passSuffixs(url)||passUrl(url)||urlwx.equals("html")||url.indexOf("html")>-1){
		        if(isFromMobile){
		        	ServletResponse.sendRedirect(webHomeMobileUrl);
		        }
//		        chain.doFilter(request, response);
				chain.doFilter(new XSSRequestWrapper(servletRequest), response);
			}else if("/".equals(url)){
				if(isFromMobile){
		        	ServletResponse.sendRedirect(webHomeMobileUrl);
		        }
//				chain.doFilter(request, response);
				chain.doFilter(new XSSRequestWrapper(servletRequest), response);
			}else if(url.contains("office")){ // 默认页面
				response.setCharacterEncoding("UTF-8");
				String script = "<script type='text/javascript'>"
						+ "window.location = '/html/index.jsp';"
//						+ "window.location = '/jsp/office/index.jsp';"
						+ "</script>";
				if(isAjax(servletRequest)){
					Map<String, Object> map = new HashMap<>();
					map.put("timeout", "连接超时，请重新登录！");
					response.getWriter().write(JSONObject.fromObject(map).toString()); 
				}else{
					response.getWriter().write(script);
				}
			}else if (user == null) {// 判断如果登录,就跳转到登陆页面
				response.setCharacterEncoding("UTF-8");
				logger.debug(url);
				String script = "<script type='text/javascript'>"
						+ "window.location = '/manage/index/toLogin.do';"
						+ "</script>";
				if(isAjax(servletRequest)){
					Map<String, Object> map = new HashMap<>();
					map.put("timeout", "连接超时，请退出并重新登录！");
					response.getWriter().write(JSONObject.fromObject(map).toString()); 
				}else{
					response.getWriter().write(script);
				}
			} else {
				// 已经登陆,继续此次请求
//				chain.doFilter(new XSSRequestWrapper(servletRequest), response);
				chain.doFilter(request, response);
			}
//			chain.doFilter(request, response);
		}else{
			chain.doFilter(request, response);
		}
		
	}

	/**
	 * 是否为可通过的url
	 * @param url
	 * @return
	 */
	private boolean passUrl(String url){
		return urls.containsKey(url);
	}

	/**
	 * 是否为可通过的后缀url
	 * @param url
	 * @return
	 */
	private boolean passSuffixs(String url){
		boolean reuslt=false;
		for (int i = 0; i < suffixs.size(); i++) {
			if(url.endsWith(suffixs.get(i))){
				reuslt=true;
				break;
			}
		}
		return reuslt;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
	
	/**
	 * 判断ajax请求
	 * @param request
	 * @return
	 */
	boolean isAjax(HttpServletRequest request){
		return  (request.getHeader("X-Requested-With") != null  && "XMLHttpRequest".equals( request.getHeader("X-Requested-With").toString())   ) ;
	}
}
