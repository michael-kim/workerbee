package com.nexr.workerbee.web.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nexr.workerbee.service.HelloService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HelloService helloService;
	
	@RequestMapping(value = "/helloWorld", method = RequestMethod.GET)
	public String hello(Locale locale, Model model) {
		return "helloWorld";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is "+ locale.toString());
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "helloWorld";
	}
	
	@RequestMapping(value = "/tiles", method = RequestMethod.GET)
	public String tiles(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is "+ locale.toString());
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		logger.info("Say Hello : " +helloService.sayHello());
		
		model.addAttribute("serverTime", formattedDate );
		
		return "helloWorld";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error(Locale locale, Model model) throws Exception {
		if (true)
			throw new Exception("error");
		return "home";
	}
	
	@RequestMapping(value="/views/bootstrap/{name}", method=RequestMethod.GET)
	public String views(@PathVariable String name){
	    return "bootstrap/"+name;
	}
	
}
