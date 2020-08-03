package com.prueba.web.util;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
@Controller 
public class Utilidades {
 /**
  * Clase solo para realizar tareas repetitivas
  * */
	
	
	public Boolean validarSesion(HttpSession session) {
		
		if(session.getAttribute("userId") != null) {
			return true;
		}else {
			return false;
		}
		 
	}
}
