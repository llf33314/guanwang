package com.gt.common.filter;

import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;

import org.springframework.web.context.ContextLoaderListener;

import com.gt.utils.PropertiesUtil;

@WebListener
public class InitListener extends ContextLoaderListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent contextEvent) {
		contextEvent.getServletContext().setAttribute("imageUrl",PropertiesUtil.getStaticImageUrl());
		contextEvent.getServletContext().setAttribute("vedioUrl",PropertiesUtil.getStaticVideoUrl());
		contextEvent.getServletContext().setAttribute("audioUrl",PropertiesUtil.getStaticAudioUrl());
	}

}
