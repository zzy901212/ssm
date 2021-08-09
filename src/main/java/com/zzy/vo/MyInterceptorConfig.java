package com.zzy.vo;

import com.zzy.interceptor.UserInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by Administrator on 2021-08-03.
 */
@Configuration
public class MyInterceptorConfig extends WebMvcConfigurerAdapter {
    @Autowired
    private UserInterceptor interceptor;
     @Override
    public void addInterceptors(InterceptorRegistry registry) {
         registry.addInterceptor(interceptor).addPathPatterns("/**");
    }
}
