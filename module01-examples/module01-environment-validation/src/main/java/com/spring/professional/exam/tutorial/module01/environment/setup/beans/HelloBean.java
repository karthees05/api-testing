package com.spring.professional.exam.tutorial.module01.environment.setup.beans;

import org.springframework.stereotype.Service;

@Service
public class HelloBean {

    public void sayHello() {
        System.out.println("Hello From Spring Framework");
    }
}
