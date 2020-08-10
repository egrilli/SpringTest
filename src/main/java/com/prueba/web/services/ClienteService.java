package com.prueba.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prueba.web.models.Empresa;
import com.prueba.web.repositories.ClienteRepository;

@Service
public class ClienteService {
	@Autowired
	ClienteRepository clienteRepository;
	
	public Empresa guardarEmpresa(Empresa empresa) {
		return clienteRepository.save(empresa);
	}

	public List<Empresa> buscarTodos() {
		// TODO Auto-generated method stub
		return clienteRepository.findAll();
	}
	
	public Empresa buscarEmpresaPorId (Long id) {
		return clienteRepository.findById(id).orElse(null);
		
	}
	
}
