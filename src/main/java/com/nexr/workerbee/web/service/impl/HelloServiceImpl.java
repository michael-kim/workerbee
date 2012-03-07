package com.nexr.workerbee.web.service.impl;

import org.springframework.stereotype.Service;

import com.nexr.workerbee.web.service.HelloService;


@Service("helloService")
public class HelloServiceImpl implements HelloService{

	@Override
	public String sayHello() {
		return "hello";
	}
}
