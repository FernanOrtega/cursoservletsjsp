package org.eticom.cursojsp.beans;

public class Preferencias {

	private String email;
	private boolean notificarme;
	private String categoria;
	private int visibilidad;
	public Preferencias() {
		super();
		this.email="";
		this.categoria="";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isNotificarme() {
		return notificarme;
	}
	public void setNotificarme(boolean notificarme) {
		this.notificarme = notificarme;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public int getVisibilidad() {
		return visibilidad;
	}
	public void setVisibilidad(int visibilidad) {
		this.visibilidad = visibilidad;
	}

}
