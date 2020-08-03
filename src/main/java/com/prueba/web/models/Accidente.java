package com.prueba.web.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "accidentes")
public class Accidente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String sFechaAccidente;
	private String sNivelAccidente;
	private String sNombreAccidentado;
	private String sApellidoPac;
	private String sApellidoMac;
	private String sObsAc;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="empresa_id")
    private Empresa empresa;

	public Long getId() {
		return id;
	}

	public String getsFechaAccidente() {
		return sFechaAccidente;
	}

	public String getsNivelAccidente() {
		return sNivelAccidente;
	}

	public String getsNombreAccidentado() {
		return sNombreAccidentado;
	}

	public String getsApellidoPac() {
		return sApellidoPac;
	}

	public String getsApellidoMac() {
		return sApellidoMac;
	}

	public String getsObsAc() {
		return sObsAc;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setsFechaAccidente(String sFechaAccidente) {
		this.sFechaAccidente = sFechaAccidente;
	}

	public void setsNivelAccidente(String sNivelAccidente) {
		this.sNivelAccidente = sNivelAccidente;
	}

	public void setsNombreAccidentado(String sNombreAccidentado) {
		this.sNombreAccidentado = sNombreAccidentado;
	}

	public void setsApellidoPac(String sApellidoPac) {
		this.sApellidoPac = sApellidoPac;
	}

	public void setsApellidoMac(String sApellidoMac) {
		this.sApellidoMac = sApellidoMac;
	}

	public void setsObsAc(String sObsAc) {
		this.sObsAc = sObsAc;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

}
