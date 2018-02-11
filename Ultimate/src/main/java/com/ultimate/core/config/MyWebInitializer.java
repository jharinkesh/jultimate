package com.ultimate.core.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


public class MyWebInitializer extends
        AbstractAnnotationConfigDispatcherServletInitializer {    
    
        @Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { ApplicationConfig.class,WebMvcConfig.class,DatabaseConfig.class, MailConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

}
