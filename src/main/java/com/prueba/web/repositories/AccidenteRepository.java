package com.prueba.web.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prueba.web.models.Accidente;

@Repository
public interface AccidenteRepository extends CrudRepository<Accidente, Long>{

	List<Accidente> findAll();

}
