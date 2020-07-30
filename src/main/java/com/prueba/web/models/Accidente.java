package com.prueba.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "accidentes")
public class Accidente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String sNombreEmpresa;
	private String sRazonSocial;
	private String sRutEmpresa;
	private String sFechaAccidente;
	private String sNivelAccidente;
	private String sNombreAccidentado;
	private String sApellidoPac;
	private String sApellidoMac;
	private String sObsAc;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getsNombreEmpresa() {
		return sNombreEmpresa;
	}

	public void setsNombreEmpresa(String sNombreEmpresa) {
		this.sNombreEmpresa = sNombreEmpresa;
	}

	public String getsRazonSocial() {
		return sRazonSocial;
	}

	public void setsRazonSocial(String sRazonSocial) {
		this.sRazonSocial = sRazonSocial;
	}

	public String getsRutEmpresa() {
		return sRutEmpresa;
	}

	public void setsRutEmpresa(String sRutEmpresa) {
		this.sRutEmpresa = sRutEmpresa;
	}

	public String getsFechaAccidente() {
		return sFechaAccidente;
	}

	public void setsFechaAccidente(String sFechaAccidente) {
		this.sFechaAccidente = sFechaAccidente;
	}

	public String getsNivelAccidente() {
		return sNivelAccidente;
	}

	public void setsNivelAccidente(String sNivelAccidente) {
		this.sNivelAccidente = sNivelAccidente;
	}

	public String getsNombreAccidentado() {
		return sNombreAccidentado;
	}

	public void setsNombreAccidentado(String sNombreAccidentado) {
		this.sNombreAccidentado = sNombreAccidentado;
	}

	public String getsApellidoPac() {
		return sApellidoPac;
	}

	public void setsApellidoPac(String sApellidoPac) {
		this.sApellidoPac = sApellidoPac;
	}

	public String getsApellidoMac() {
		return sApellidoMac;
	}

	public void setsApellidoMac(String sApellidoMac) {
		this.sApellidoMac = sApellidoMac;
	}

	public String getsObsAc() {
		return sObsAc;
	}

	public void setsObsAc(String sObsAc) {
		this.sObsAc = sObsAc;
	}

}
