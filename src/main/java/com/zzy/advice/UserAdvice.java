package com.zzy.advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;

/**
 * Created by Administrator on 2021-08-03.
 */
@Aspect
@Configuration
@Order(2)
public class UserAdvice {




    @Around("execution(* com.zzy.service.*.*(..))")
    public Object aroundAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        System.out.println("环绕通知....");
        Object proceed = proceedingJoinPoint.proceed();
        System.out.println("绕晕了....");
        return proceed;
    }
    @After("execution(* com.zzy.service.*.*(..))")
    public void afterAdvice(JoinPoint joinPoint) {
        Object target = joinPoint.getTarget();
        System.out.println(target);
        System.out.println("后置通知...");
    }
}
