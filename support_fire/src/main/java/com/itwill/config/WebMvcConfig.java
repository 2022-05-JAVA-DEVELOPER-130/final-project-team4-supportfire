package com.itwill.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.itwill.controller.AuthLoginAnnotationRestInterceptor;
/*
 * mcv-config.xml
 */
@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	@Autowired
	private AuthLoginAnnotationRestInterceptor authLoginAnnotationRestInterceptor;
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(authLoginAnnotationRestInterceptor)
                .addPathPatterns("/**");
    }
}