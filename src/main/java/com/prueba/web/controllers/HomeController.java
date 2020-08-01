package com.prueba.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}

	@GetMapping("/home") 
	public String home() {
		return "home.jsp";
	}
	
	
	
	
	
}
		
	
	

