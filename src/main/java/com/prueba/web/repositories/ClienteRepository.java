package com.prueba.web.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prueba.web.models.Empresa;

@Repository
public interface ClienteRepository extends CrudRepository<Empresa, Long>{

	List<Empresa> findAll();

}
