package com.prueba.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prueba.web.models.Trabajador;
import com.prueba.web.services.TrabajadorService;
import com.prueba.web.services.ClienteService;
import com.prueba.web.util.Utilidades;

@Controller
public class TrabajadorController {
	@Autowired
	TrabajadorService ts;
	@Autowired
	ClienteService clienteService;
	@Autowired
	Utilidades util;
	
	@RequestMapping("/trabajador")
	public String IngresoAccidente(HttpSession session, Model model) {

		if(util.validarSesion(session)) {
			model.addAttribute("trabajador", new Trabajador());
			model.addAttribute("listaEmpresa", clienteService.buscarTodos());
			
			return "/registro-trabajador.jsp";
    	}else {
    		return "redirect:/login";
    	}	
	}
	
	@PostMapping("/trabajador")
	public String guardarTrabajador(@ModelAttribute("trabajador") Trabajador trabajador) {
			ts.guardarTrabajador(trabajador);
		
		return "redirect:/home";
	}
	
}
