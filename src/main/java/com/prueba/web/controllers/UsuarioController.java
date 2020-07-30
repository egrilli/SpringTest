package com.prueba.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class UsuarioController {
	@RequestMapping("/registro")
	public String registrar() {
		return "Registro.jsp";
	}
	
	@RequestMapping("/login")
	public String logearse() {
		return "Login.jsp";
	}
}
