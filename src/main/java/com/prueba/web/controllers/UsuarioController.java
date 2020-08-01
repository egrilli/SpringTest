package com.prueba.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.prueba.web.models.Usuario;
import com.prueba.web.services.UsuarioService;
@Controller
public class UsuarioController {
	@Autowired
	UsuarioService us;
	
	//Model model sirve para enviar datos al JSP.
	// Model Atribute es para recibir parametros desde el JSP.
	
	@GetMapping("/registro")
	public String registrar(Model model) {
		model.addAttribute("usuario", new Usuario());
		return "Registro.jsp";
	}
	
	@PostMapping("/registro")
	public String registroUsuario(@ModelAttribute("usuario") Usuario usuario) {
		us.registroUsuario(usuario);
		return "redirect:/login";
	}
	
	@GetMapping("/login")
	public String logearse(Model model) {
		model.addAttribute("usuario", new Usuario());
		return "Login.jsp";
	}

	@PostMapping("/login")
	public String ingresar(@ModelAttribute("usuario") Usuario usuario) {
		
		boolean existeUsuario=us.buscarUsuario(usuario);
		if(existeUsuario) {
    		return "redirect:/home";
    	}else {
    		return "redirect:/login";
    	}
		
		
	}
	
}