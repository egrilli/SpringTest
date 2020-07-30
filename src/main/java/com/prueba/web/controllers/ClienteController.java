package com.prueba.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class ClienteController {
	@RequestMapping("/cliente")
	public String cliente() {
		return null;
	}
}
