package co.edu.icesi.liveedu.form;

import org.apache.struts.action.*;
public class RegistroForm extends ActionForm{
	private String correoPreferidoPregrado;
	private String correoPreferidoPostgrado;
	private String correoPreferidoProfesor;
	private String correoPreferidoEgresado;
	
	public RegistroForm(){
		super();
	}

	public String getCorreoPreferidoEgresado() {
		return correoPreferidoEgresado;
	}

	public void setCorreoPreferidoEgresado(String correoPreferidoEgresado) {
		this.correoPreferidoEgresado = correoPreferidoEgresado;
	}

	public String getCorreoPreferidoPostgrado() {
		return correoPreferidoPostgrado;
	}

	public void setCorreoPreferidoPostgrado(String correoPreferidoPostgrado) {
		this.correoPreferidoPostgrado = correoPreferidoPostgrado;
	}

	public String getCorreoPreferidoPregrado() {
		return correoPreferidoPregrado;
	}

	public void setCorreoPreferidoPregrado(String correoPreferidoPregrado) {
		this.correoPreferidoPregrado = correoPreferidoPregrado;
	}

	public String getCorreoPreferidoProfesor() {
		return correoPreferidoProfesor;
	}

	public void setCorreoPreferidoProfesor(String correoPreferidoProfesor) {
		this.correoPreferidoProfesor = correoPreferidoProfesor;
	}
	
		
}
