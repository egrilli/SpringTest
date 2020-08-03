package com.prueba.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.web.models.Empresa;
import com.prueba.web.repositories.ClienteRepository;

@Service
public class ReporteService {
	@Autowired
	ClienteRepository clienteRepository;
	
	public Empresa guardarEmpresa(Empresa empresa) {
		return clienteRepository.save(empresa);
	}
	
}
