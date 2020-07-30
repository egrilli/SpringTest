package com.prueba.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "trabajadores")
public class Trabajador {
	// atributos del objeto
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String sNombre;
	private String sEmail;
	private String sRut;
	private Long iEmpresaID;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getsNombre() {
		return sNombre;
	}

	public void setsNombre(String sNombre) {
		this.sNombre = sNombre;
	}

	public String getsEmail() {
		return sEmail;
	}

	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}

	public String getsRut() {
		return sRut;
	}

	public void setsRut(String sRut) {
		this.sRut = sRut;
	}

	public Long getiEmpresaID() {
		return iEmpresaID;
	}

	public void setiEmpresaID(Long iEmpresaID) {
		this.iEmpresaID = iEmpresaID;
	}

	public Trabajador() {

	}

}
