package com.prueba.web.controllers;

import javax.servlet.http.HttpSession;

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
	public String ingresar(@ModelAttribute("usuario") Usuario usuario, HttpSession session) {
	    //Si el usuario está autenticado, guarde su id de usuario en el objeto Session
	    //sino agregue un mensaje de error y retorne a la página de inicio de sesión.
	    	
	    	boolean existeUser = us.authenticateUser(usuario.getsEmail(),usuario.getsPassword());
	    	System.out.println("Existe usuario:"+existeUser);
	    	if(existeUser) {
	    		Usuario user = us.findByEmail(usuario.getsEmail());
	    		session.setAttribute("userId", user.getId());
	    		return "redirect:/home";
	    	}else {
	    		return "redirect:/login";
	    	}
	}
	
	@GetMapping("/home") 
	public String home(HttpSession session, Model model) {
        //Obtener el usuario desde session, guardarlo en el modelo y retornar a la página principal
    	if(session.getAttribute("userId") != null) {
        	Long userId = (Long) session.getAttribute("userId");
    		model.addAttribute("user",us.findUserById(userId));
    		return "Home.jsp";
    	}else {
    		return "redirect:/login";
    	}
	}
    	
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        // invalidar la sesión
        // redireccionar a la página de inicio de sesión.
    	if(session.getAttribute("userId") != null) {
    		session.invalidate();
    	}
    	return "index.jsp";
    }
	
}