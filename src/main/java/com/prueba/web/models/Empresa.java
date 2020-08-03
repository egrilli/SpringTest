package com.prueba.web.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "empresas")
public class Empresa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String sNombreEmpresa;
	private String sRutEmpresa;
	private String sGiroEmpresa;
	private String sNombreContacto;
	private String sTelefono;
	private String sCorreo;

	@OneToMany(mappedBy="empresa", fetch = FetchType.LAZY)
    private List<Accidente> accidentes;
	
	@OneToMany(mappedBy="empresa", fetch = FetchType.LAZY)
    private List<Trabajador> trabajadores;
	
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

	public String getsRutEmpresa() {
		return sRutEmpresa;
	}

	public void setsRutEmpresa(String sRutEmpresa) {
		this.sRutEmpresa = sRutEmpresa;
	}

	public String getsGiroEmpresa() {
		return sGiroEmpresa;
	}

	public void setsGiroEmpresa(String sGiroEmpresa) {
		this.sGiroEmpresa = sGiroEmpresa;
	}

	public String getsNombreContacto() {
		return sNombreContacto;
	}

	public void setsNombreContacto(String sNombreContacto) {
		this.sNombreContacto = sNombreContacto;
	}

	public String getsTelefono() {
		return sTelefono;
	}

	public void setsTelefono(String sTelefono) {
		this.sTelefono = sTelefono;
	}

	public String getsCorreo() {
		return sCorreo;
	}

	public void setsCorreo(String sCorreo) {
		this.sCorreo = sCorreo;
	}

	public String getsRegion() {
		return sRegion;
	}

	public void setsRegion(String sRegion) {
		this.sRegion = sRegion;
	}

	public String getsCiudad() {
		return sCiudad;
	}

	public void setsCiudad(String sCiudad) {
		this.sCiudad = sCiudad;
	}

	public String getsDireccion() {
		return sDireccion;
	}

	public void setsDireccion(String sDireccion) {
		this.sDireccion = sDireccion;
	}

	String sRegion;
	String sCiudad;
	String sDireccion;

	public Empresa() {
	}

}