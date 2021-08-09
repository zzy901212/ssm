package com.zzy.advice;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;

/**
 * Created by Administrator on 2021-08-03.
 */
@Aspect
@Configuration
@Order(1)
public class UserBefore {
    @Before("execution(* com.zzy.service.*.*(..))")
    public void beforeAdvice() {
        System.out.println("前置通知...");
    }
}
