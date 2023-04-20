package com.example.demo.fooINDEX;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;

@Configuration
public class ConfigINDEX {

    @Bean
    public AnotherServiceINDEX anotherServiceINDEX() { return new AnotherServiceINDEX(); }

    @Bean
    public ServiceINDEX svcINDEX() { return new ServiceImplINDEX(); }

}
