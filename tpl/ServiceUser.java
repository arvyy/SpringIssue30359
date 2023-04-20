package com.example.demo.fooINDEX;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ServiceUserINDEX {

    @Autowired
    public void setAnotherService(AnotherServiceINDEX svc) {
    }

    @Autowired
    public void setSvc(ServiceImplINDEX svc) {
    }

}
