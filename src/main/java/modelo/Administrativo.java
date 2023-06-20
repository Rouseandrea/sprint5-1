package modelo;

public class Administrativo extends Usuario {

	private String area;
	private int experienciaPrevia;

	public Administrativo(int id, String nombre, String apellido, String correo, int run, String area,
			int experienciaPrevia) {
		super(id, nombre, apellido, correo, run);
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
	}

	public Administrativo() {
		// TODO Auto-generated constructor stub
	}

}
