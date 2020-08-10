package com.prueba.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prueba.web.models.Empresa;
import com.prueba.web.services.ClienteService;
import com.prueba.web.util.Utilidades;

@Controller 
public class ClienteController {
	
	@Autowired
	ClienteService clienteService;
	
	@Autowired
	Utilidades util;
	
	@RequestMapping("/cliente")
	public String cliente(HttpSession session, Model model) {
		
		if(util.validarSesion(session)) {
			model.addAttribute("empresa", new Empresa());
			return "registro-cliente.jsp";
    	}else {
    		return "redirect:/login";
    	}	
	}
	
	@PostMapping("/cliente")
	public String registro(@ModelAttribute("empresa") Empresa empresa) {
		
		clienteService.guardarEmpresa(empresa);
		return "redirect:/home";
	}
	
	@RequestMapping("/empresa/editar/{empresaid}")
	public String editar(@PathVariable("empresaid") Long id, Model model) {
		model.addAttribute("empresa", clienteService.buscarEmpresaPorId(id));
		return "editar-cliente.jsp";
	}
	
}
