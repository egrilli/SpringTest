package com.prueba.web.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.prueba.web.models.Empresa;

@Repository
public interface ReporteRepository extends CrudRepository<Empresa, Long>{


}
