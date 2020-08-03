package com.prueba.web.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.prueba.web.models.Trabajador;

public interface TrabajadorRepository extends CrudRepository<Trabajador, Long>{

	List<Trabajador> findAll();

}
