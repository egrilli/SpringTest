package com.prueba.web.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.web.models.Usuario;
import com.prueba.web.repositories.UsuarioRepository;

@Service
public class UsuarioService {
@Autowired 
UsuarioRepository userRepository;

public void registroUsuario(Usuario usuario) {
	String hashed = BCrypt.hashpw(usuario.getsPassword(), BCrypt.gensalt());
    usuario.setsPassword(hashed);
    userRepository.save(usuario);
}

// registrar el usuario y hacer Hash a su password
public Usuario registerUser(Usuario user) {
    String hashed = BCrypt.hashpw(user.getsPassword(), BCrypt.gensalt());
    user.setsPassword(hashed);
    return userRepository.save(user);
}

// encontrar un usuario por su email
public Usuario findByEmail(String email) {
    return userRepository.findBysEmail(email);
}

// encontrar un usuario por su id
public Usuario findUserById(Long id) {
	return userRepository.findById(id).orElse(null);
}

// autenticar usuario
public boolean authenticateUser(String email, String password) {
    // primero encontrar el usuario por su email
	Usuario user = userRepository.findBysEmail(email);
    // si no lo podemos encontrar por su email, retornamos false
    if(user == null) {
        return false;
    } else {
        // si el password coincide devolvemos true, sino, devolvemos false
        if(BCrypt.checkpw(password, user.getsPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
}
