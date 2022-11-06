package com.slawomir_aleksak.spring_first_projekt.aspects;

import java.time.LocalDateTime;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.context.annotation.Configuration;

@Aspect
@Configuration
public class loggerAspect {

    @Before("execution(* com.slawomir_aleksak.spring_first_projekt.controllers.*.*(..))")
    public void before(JoinPoint joinPoint)
    {
        System.out.println(LocalDateTime.now() + " Method " + joinPoint + " started");
    }
    @After("execution(* com.slawomir_aleksak.spring_first_projekt.controllers.*.*(..))")
    public void after(JoinPoint joinPoint)
    {
        System.out.println(LocalDateTime.now() + " Method " + joinPoint + " finished");
    }
}
