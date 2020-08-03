package com.prueba.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.web.models.Trabajador;
import com.prueba.web.repositories.TrabajadorRepository;

@Service
public class TrabajadorService {
	@Autowired
	TrabajadorRepository trabajadorRepository;
	
	public Trabajador guardarTrabajador(Trabajador Trabajador) {
		return trabajadorRepository.save(Trabajador);
	}

	public List<Trabajador> buscarTodos() {
		return trabajadorRepository.findAll();
	}

	
}
