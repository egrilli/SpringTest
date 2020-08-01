package com.prueba.web.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.web.models.Usuario;
import com.prueba.web.repositories.UsuarioRepository;

@Service
public class UsuarioService {
@Autowired 
UsuarioRepository ur;

public void registroUsuario(Usuario usuario) {
	String hashed = BCrypt.hashpw(usuario.getsPassword(), BCrypt.gensalt());
    usuario.setsPassword(hashed);
	ur.save(usuario);
}

public boolean buscarUsuario(Usuario usuario) {
	
    // primero encontrar el usuario por su email
    Usuario  user = ur.findBysEmail(usuario.getsEmail());
    // si no lo podemos encontrar por su email, retornamos false
    if(user == null) {
        return false;
    } else {
        // si el password coincide devolvemos true, sino, devolvemos false
        if(BCrypt.checkpw(usuario.getsPassword(), user.getsPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
}
