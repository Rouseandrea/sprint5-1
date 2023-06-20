package modelo;

public class Cliente extends Usuario {
	private String telefono;
	private String direccion;

	public Cliente(int id, String nombre, String apellido, String correo, int run, String telefono, String direccion) {
		super(id, nombre, apellido, correo, run);
		this.telefono = telefono;
		this.direccion = direccion;
	}

	public Cliente() {
		super();
		// TODO Auto-generated constructor stub
	}

}
