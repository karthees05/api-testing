package com.spring.professional.exam.tutorial.module01.environment.setup;

import com.spring.professional.exam.tutorial.module01.environment.setup.beans.HelloBean;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Runner {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(Application.class);

        HelloBean helloBean = context.getBean(HelloBean.class);

        helloBean.sayHello();
    }
}
