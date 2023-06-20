package modelo;

public class Profesional extends Usuario {

	private String titulo;

	public Profesional(int id, String nombre, String apellido, String correo, int run, String titulo) {
		super(id, nombre, apellido, correo, run);
		this.titulo = titulo;
	}

	public Profesional() {
		// TODO Auto-generated constructor stub
	}

}
