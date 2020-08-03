package com.prueba.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.web.models.Accidente;
import com.prueba.web.repositories.AccidenteRepository;

@Service
public class AccidenteService {
	@Autowired
	AccidenteRepository accidenteRepository;
	
	public Accidente guardarAccidente(Accidente accidente) {
		return accidenteRepository.save(accidente);
	}

	public List<Accidente> buscarTodos() {
		return accidenteRepository.findAll();
	}

	
}
