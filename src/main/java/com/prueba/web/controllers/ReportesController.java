package com.prueba.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prueba.web.services.ClienteService;

@Controller
public class ReportesController {
	
	@Autowired
	ClienteService clienteService;
	
	@RequestMapping("/reporte/clientes")
	public String MostrarTodos( Model model) {
		
		model.addAttribute("listaEmpresa", clienteService.buscarTodos());
		return "/reportes/detalle-clientes.jsp";
	}

}
