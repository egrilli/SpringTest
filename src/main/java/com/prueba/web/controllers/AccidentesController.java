package com.prueba.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prueba.web.models.Accidente;
import com.prueba.web.services.AccidenteService;
import com.prueba.web.services.ClienteService;
import com.prueba.web.util.Utilidades;

@Controller
public class AccidentesController {
	@Autowired
	AccidenteService as;
	@Autowired
	ClienteService clienteService;
	@Autowired
	Utilidades util;
	
	@RequestMapping("/accidente")
	public String IngresoAccidente(HttpSession session, Model model) {

		if(util.validarSesion(session)) {
			model.addAttribute("accidente", new Accidente());
			model.addAttribute("listaEmpresa", clienteService.buscarTodos());
			
			return "/registro-accidente.jsp";
    	}else {
    		return "redirect:/login";
    	}	
	}
	
	@PostMapping("/accidente")
	public String guardarAcidente(@ModelAttribute("accidente") Accidente accidente) {
			as.guardarAccidente(accidente);
		
		return "redirect:/home";
	}
}
